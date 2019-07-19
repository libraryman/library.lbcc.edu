<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
%>
<!--#include file = "chklog.asp"-->
<!--#include file = "../inccarriage.asp"-->
<!--#include file = "incdb.asp"-->
<%'
function grandma(todo)
'this function capatalizes the first letter
' and lowercases everything else
dim count
if len(todo) > 1 then
for count = 1 to len(todo)
if count = 1 then grandma = grandma & ucase(left(todo,1))
if count > 1 then grandma = grandma & lcase(mid(todo,count,1))
next
end if
end function
'
FUNCTION fixcurrency( amount )
dim i, y, x
for i = 1 to len( amount )
fixcurrency = fixcurrency & mid(amount, i,1)
if mid(amount, i,1) = "." then
y = i
x = 0
end if
if y > 1 then x = x + 1
next
if x = 2 then fixcurrency = fixcurrency & "0"
if y < 1 then fixcurrency = fixcurrency & ".00"
END FUNCTION
'
Function DecodeString(str)
dim yxy, retme
yxy = 1
do while yxy <= len(str)
select case mid(str,yxy,1)
case chr(162)
retme = retme & "<BR>"
case chr(177)
retme = retme & chr(34)
case chr(218)
retme = retme & chr(44)
case chr(171)
retme = retme & chr(39)
case else
retme = retme & mid(str,yxy,1)
end select
yxy = yxy + 1
loop
decodeString = retme
end Function
' recover passthrough values
dim order_id, listtype, page, waslist
order_id = request("oid")
listtype = request("t")
page = request("page")
waslist = request("list")
if not isnumeric(order_id) then order_id = 0
if not isnumeric(listtype) then listtype = 0
if not isnumeric(page) then page = 0
if not isnumeric(waslist) then waslist = 0
order_id = clng(order_id)
listtype = clng(listtype)
page = clng(page)
waslist = cint(waslist)
' new actions
dim formaction, newstatus
formaction = request("B1")
if formaction = "Update Order" then formaction = "1"
if formaction <> "1" then formaction = request("B9")
if formaction = "Delete order" then formaction = "2"
if formaction <> "2" and formaction <> "1" then formaction = "1"
formaction = cint(formaction)
newstatus = request("newstatus")
if not isnumeric(newstatus) then newstatus = 0
newstatus = cint(newstatus)

' recover complete
if order_id < 1 then call failure("Order does not exisit. Recently deleted or garbled response<br>")
' basic order details held in variables
dim customerid, orderdate, orderstatus, statusupdated, mop, shipmeth, totalweight, txnumber
dim custname, custaddress, custemail, custphone, subtotal, runningtotal, shipcost
dim prodstatus, summitup, ors, ocon, sql, cntrycode, cntryname, cntryzone
shipcost = "0"
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
'sql = "SELECT * FROM orders INNER JOIN ordersitems ON orderitems.order = order.id WHERE (order.id = " & order_id & ");"
sql = "SELECT * FROM orders WHERE id = " & order_id & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof or ors.recordcount <> 1 then
        ors.Close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        call failure("Unable to locate order in database. Deleted?<BR>")
        end if
'do what we have to do
                if formaction = 1 then'update
                        if newstatus > 0 then
                        ors("status") = newstatus
                        ors("lastupdated") = now
                        ors.Update
                        end if
                else
                        if formaction = 2 then
                        ors.Close
                        sql = "SELECT * FROM orderitems WHERE [order] = " & clng(order_id)
                        ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
                        do while not ors.EOF
                        ors.Delete
                        ors.MoveNext
                        loop
                        ors.Close
                        sql = "SELECT * FROM orders WHERE id = " & clng(order_id) & ";"
                        ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
                        if not ors.eof then ors.Delete
                        end if
                end if
ors.close
if formaction = 2 then call deletedit(page,listtype,waslist)

sql = "SELECT * FROM orders WHERE id = " & order_id & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof or ors.recordcount <> 1 then
        ors.Close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        call failure("Unable to locate order in database. Deleted?<BR>")
        end if

select case(ors("status"))
case 1
orderstatus = "Shopping/Dropped"
case 2
orderstatus = "Saved"
case 3
orderstatus = "Waiting action"
case 4
orderstatus = "Awaiting stock"
case 5
orderstatus = "Awaiting payment"
case 6
orderstatus = "Card declined"
case 7
orderstatus = "Cheque bounced"
case 8
orderstatus = "Order shipped"
case 9
orderstatus = "Cancelled"
case else
orderstatus = "Unknown"
end select
'
select case(ors("mop"))
case 0
mop = "N/A"
case 1
mop = "Card payment"
case 2
mop = "Mail order"
case else
mop = "Unknown"
end select
'
customerid = ors("cust")
orderdate = ors("date")
txnumber = ors("transaction")
statusupdated = ors("lastupdated")
shipmeth = ors("shipmeth")
ors.Close
' recover customer details
sql = "SELECT * FROM customers WHERE id = " & customerid & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof or ors.recordcount <> 1 then
        custname = "not found"
        custaddress = "not found"
        custemail = "not found"
        custphone = "not found"
        cntryname = "Unknown"
        cntryzone = 12
        cntrycode = 253
        ors.close
        else
        ' populate customer details
        custname = ors("title") & "." & grandma(decodestring(ors("firstname"))) & " " & grandma(decodestring(ors("lastname")))
        custaddress = decodestring(ors("hn"))
        custaddress = custaddress & "," & decodestring(ors("street")) & "<BR>"
        if len(decodestring(ors("district"))) > 1 then custaddress = custaddress & decodestring(ors("district")) & "<BR>"
        custaddress = custaddress & decodestring(ors("town")) & "<BR>"
        custaddress = custaddress & decodestring(ors("county")) & "<BR>"
        custaddress = custaddress & decodestring(ors("zip")) & "<BR>"
        custemail = decodestring(ors("email"))
        custphone = decodestring(ors("phone"))
        cntrycode = ors("country")
        ors.Close
        'get country details
        sql = "SELECT * FROM countries WHERE id = " & cntrycode & ";"
        ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
                if not ors.eof then
                cntryname = ors("name")
                cntryzone = ors("zone")
                else
                cntryname = "Unknown"
                cntryzone = 2
                cntrycode = 253
                end if
                custaddress = custaddress & cntryname
        ors.close
        end if

' now draw/set up html%>
<html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
.heading      { font-family: Verdana; font-size: 12pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
caption      { font-family: Verdana; font-size: 10pt; letter-spacing: 0; font-weight: bold }
hr           {  }
hr           { color: #FF0000 }
-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function backup(thepage,orderid,listtype){
window.location="showorders.asp?page=" +thepage +"&oid=" +orderid +"&t=" +listtype
}
function condel()
{
        var x=window.confirm("You have selected to delete this order\nYou cannot undo this if you proceed\nCONFIRM DELETE")
        if (x)
        return true;
        else
        return false;
}
// end cloak-->
</script>
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Order updated</td>
</tr>
<tr>
<td width="100%">
<p class="normal" align="center"><b>&nbsp;<br>
Updated order details</b>
</p>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="25%" align="left" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Order
ID</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Date</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Status</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Method
of payment</b></font></td>
</tr>
<tr>
<td width="25%" class="normal"><%=order_id%></td>
<td width="25%" class="normal"><%=orderdate%></td>
<td width="25%" class="normal"><%=orderstatus%></td>
<td width="25%" class="normal"><%=mop%></td>
</tr>
<tr>
<td width="25%" bgcolor="#990000" class="normal"><font color="#FFFF00"><b>Order
status last updated</b></font></td>
<td width="25%" bgcolor="#990000" class="normal"><font color="#FFFF00">&nbsp;<%=statusupdated%></font></td>
<td width="25%" bgcolor="#000000" class="normal"><font color="#FFFF00"><b>Card
transaction number</b></font></td>
<td width="25%" bgcolor="#000000" class="normal"><font color="#FFFF00">&nbsp;<%=txnumber%></font></td>
</tr>
<tr>
<td width="50%" colspan="2" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Customer
details &amp; email</b></font></td>
<td width="50%" colspan="2" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b>Address</b></font></td>
</tr>
<tr>
<td width="50%" colspan="2" class="smalltext" valign="top"><%=custname%><br>
</td>
<td width="50%" colspan="2" class="smalltext" valign="top"><%=custaddress%></td>
</tr>
<tr>
<td width="50%" colspan="2" class="normal" valign="top" bgcolor="#000000"><font color="#FFFFFF"><b>Customer
email (click to email)</b></font></td>
<td width="50%" colspan="2" class="normal" valign="top" bgcolor="#000000"><font color="#FFFFFF"><b>Customer
phone</b></font></td>
</tr>
<tr>
<td width="50%" colspan="2" class="smalltext" valign="top" bgcolor="#FFFFFF">
<%if custemail <> "not found" then%>Click to email <a href="mailto:emailed">[<%=custemail%>]</a> customer<%else%>Not Found<%end if%></td>
<td width="50%" colspan="2" class="smalltext" valign="top" bgcolor="#FFFFFF"><%=custphone%></td>
</tr>
<tr>
<td width="50%" colspan="4" bgcolor="#000000">
<p class="normal"><font color="#FFFFFF"><b>Order details</b></font></td>
</tr>
<tr>
<td width="50%" colspan="4" bgcolor="#FFFFFF">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="105%">
<tr>
<td width="10%" bgcolor="#990000" class="smalltext"><font color="#FFFFFF"><b>Qty</b></font></td>
<td width="40%" bgcolor="#990000" class="smalltext"><font color="#FFFFFF"><b>Item</b></font></td>
<td width="20%" bgcolor="#990000" class="smalltext"><font color="#FFFFFF"><b>Product
status</b></font></td>
<td width="15%" bgcolor="#990000" class="smalltext"><font color="#FFFFFF"><b>£each</b></font></td>
<td width="15%" bgcolor="#990000" class="smalltext"><font color="#FFFFFF"><b>£sub
total</b></font></td>
</tr>
<%' now get cart contents
sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & order_id & ");"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
do while not ors.eof
' decide on product status
if ors("goods.qty") > 1 then prodstatus = "In stock"
if ors("goods.qty") = 1 then prodstatus = "Only 1 remaining in stock"
if ors("goods.qty") < 1 then
        select case ors("goods.oos")
        case 1
        prodstatus = "unavailable"
        case 2
        prodstatus = "2-3 days"
        case 3
        prodstatus = "3-7 days"
        case 4
        prodstatus = "14 days"
        case 5
        prodstatus = "28 days"
        case 6
        prodstatus = "discontinued"
        case 7
        prodstatus = "Special order"
        case else
        prodstatus = "unknown"
        end select
end if
summitup = ucase(ors("heading")) & "-" & lcase(ors("description"))
if len(summitup) > 40 then summitup = left(summitup,40) & "..."
subtotal = 0
subtotal = ors("orderitems.qty") * ors("price")
runningtotal = runningtotal + subtotal
totalweight = totalweight + ors("orderitems.qty") * ors("weight")
%>
<tr>
<td width="10%" class="smalltext"><%=ors("orderitems.qty")%></td>
<td width="40%" class="smalltext"><%=summitup%></td>
<td width="20%" class="smalltext"><%=prodstatus%></td>
<td width="15%" class="smalltext">£<%=fixcurrency(ors("price"))%></td>
<td width="15%" class="smalltext">£<%=fixcurrency(subtotal)%></td>
</tr>
<%
ors.MoveNext
loop
ors.Close
end if
shipcost = carriage(totalweight,cntryzone)
%>
<tr>
<td width="10%" class="smalltext" bgcolor="#990000">&nbsp;</td>
<td width="40%" class="smalltext" bgcolor="#990000">&nbsp;</td>
<td width="20%" class="smalltext" bgcolor="#990000"><font color="#FFFF00">&nbsp;</td>
<td width="15%" class="smalltext"><b>SUB TOTAL</b></td>
<td width="15%" class="smalltext">£<%=fixcurrency(runningtotal)%></td>
</tr>
<tr>
<td width="10%" class="smalltext" bgcolor="#990000"><font color="#FFFF00"><b>Shipping:</b></font></td>
<td width="40%" class="smalltext" bgcolor="#990000"><font color="#FFFF00"><b>To:&nbsp;</font><font color="#FFFFFF"><%=cntryname%></font><font color="#FFFF00">&nbsp;Zone:&nbsp;</font><font color="#FFFFFF"><%=cntryzone%></font><font color="#FFFF00">&nbsp;Weight:&nbsp;</font><font color="#FFFFFF"><%=totalweight%>&nbsp;Grams</b></font></td>
<td width="20%" class="smalltext" bgcolor="#990000">&nbsp;</td>
<td width="15%" class="smalltext"><b>SHIPPING</b></td>
<td width="15%" class="smalltext">£<%=fixcurrency(shipcost)%></td>
</tr>
<tr>
<td width="10%" class="smalltext" bgcolor="#000000">&nbsp;</td>
<td width="40%" class="smalltext" bgcolor="#000000">&nbsp;</td>
<td width="20%" class="smalltext" bgcolor="#000000">&nbsp;</td>
<td width="15%" class="smalltext"><b>TOTAL</B></td>
<td width="15%" class="smalltext">£<%=fixcurrency(runningtotal + shipcost)%></td>
</tr>
</table>
</div>
<form method="post" action="updateorder.asp" id=form1 name=form1>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="5">
<p class="normal" align="center"><b>Options Now available</b></td>
</tr>
<tr>
<td width="20%" align="center" class="normal" bgcolor="#C0C0C0"><b>Set order
status to</b></td>
<td width="20%" bgcolor="#C0C0C0" align="center" class="normal">&nbsp;</td>
<td width="20%" bgcolor="#FF0000" align="center" class="normal">
<p align="center"><font color="#FFFFFF"><b>DELETE ORDER<br>
(!NO UNDO!)</b></font></td>
<td width="20%" bgcolor="#C0C0C0" align="center" class="normal">&nbsp;</td>
<td width="20%" bgcolor="#C0C0C0" align="center" class="normal">&nbsp;</td>
</tr>
<tr>
<td width="20%" align="center" bgcolor="#C0C0C0"><select size="1" name="newstatus">
<option selected value="0">No change</option>
<option value="2">Saved</option>
<option value="3">In orders queue</option>
<option value="4">Awaiting stock</option>
<option value="5">Awaiting payment</option>
<option value="6">Card declined</option>
<option value="7">Cheque bounced</option>
<option value="8">Order shipped</option>
<option value="9">Cancelled</option>
</select></td>
<td width="20%" bgcolor="#C0C0C0" align="center"><input type="submit" value="Update Order" name="B1"></td>
<td width="20%" bgcolor="#FF0000" align="center">
<p align="center"><input type="submit" value="Delete order" name="B9" onclick="return condel()"></td>
<td width="20%" bgcolor="#C0C0C0" align="center"><%
if waslist = 1 then%><input type="button" value="Back to orders list" name="B11" onclick="backup(<%=page%>,<%=order_id%>,<%=listtype%>)"><%else%>&nbsp;<%end if%></td>
<td width="20%" bgcolor="#C0C0C0" align="center"><input type="button" value="Exit to menu" name="B10" onclick="leavepage()"></td>
</tr>
</table>
</div>
<input type="hidden" name="oid" value="<%=order_id%>">
<input type="hidden" name="t" value="<%=listtype%>">
<input type="hidden" name="page" value="<%=page%>">
<input type="hidden" name="list" value="<%=waslist%>">
</form></td>
</tr>
</table>
</div>
</center>
</td>
</tr>
<center>
<tr>
<td width="100%" bgcolor="#000000">
<p class="smalltext"><font color="#FFFFFF">Shopkeeper version 3.10 (c) 2001 Rik
Johnson</font></td>
</tr>
</table>
</center>
</div>

</body>

</html>
<%sub failure(fail)%>
<html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
.heading      { font-family: Verdana; font-size: 12pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
caption      { font-family: Verdana; font-size: 10pt; letter-spacing: 0; font-weight: bold }
hr           {  }
hr           { color: #FF0000 }
-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
// end cloak-->
</script>
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Error Alert</td>
</tr>
<tr>
<td width="100%">
</center>
<div class="heading" align="center"><b>Error!</b></div>
<div class="normal" align="center">
<%=fail%>
<br>
Use 'Back' on your browser to return to the last page or press exit to go to the menu
<form id=form2 name=form2><input type="button" value="Exit" name="bx1" onclick="leavepage()"></form></div></td>
</tr>
<center>
<tr>
<td width="100%" bgcolor="#000000">
<p class="smalltext"><font color="#FFFFFF">Shopkeeper version 3.10 (c) 2001 Rik
Johnson</font></td>
</tr>
</table>
</center>
</div>

</body>

</html>
<%Response.end
end sub

sub deletedit(page,listtype,waslist)%>
<html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
.heading      { font-family: Verdana; font-size: 12pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
caption      { font-family: Verdana; font-size: 10pt; letter-spacing: 0; font-weight: bold }
hr           {  }
hr           { color: #FF0000 }
-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function backup(thepage,orderid,listtype){
window.location="showorders.asp?page=" +thepage +"&oid=" +orderid +"&t=" +listtype
}
function condel()
{
        var x=window.confirm("You have selected to delete this order\nYou cannot undo this if you proceed\nCONFIRM DELETE")
        if (x)
        return true;
        else
        return false;
}
// end cloak-->
</script>
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Error Alert</td>
</tr>
<tr>
<td width="100%">
</center>
<div class="heading" align="center"><b>Order Deleted!</b></div>
<div class="normal" align="center">
<br>&nbsp;
<form><%if waslist = 1 then%><input type="button" value="Back to orders list" name="B11" onclick="backup(<%=page%>,<%=order_id%>,<%=listtype%>)"><%else%>&nbsp;<%end if%>
<input type="button" value="Exit to menu" name="B10" onclick="leavepage()"></form>
</div></td>
</tr>
<center>
<tr>
<td width="100%" bgcolor="#000000">
<p class="smalltext"><font color="#FFFFFF">Shopkeeper version 3.10 (c) 2001 Rik
Johnson</font></td>
</tr>
</table>
</center>
</div>

</body>

</html>
<%Response.end
end sub%>

