<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file="admin.asp"-->
<!--#include file="inccart.asp"-->
<!--#include file="inccarriage.asp"-->
<%function grandma(todo)
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
if not isnumeric(order_id) then order_id = 0
order_id = clng(order_id)
%><!--#include file="incbody.asp"--><%
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
sql = "SELECT * FROM orders WHERE id = " & order_id & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof or ors.recordcount <> 1 then
        ors.Close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        call failure("Unable to locate order in database. Deleted?<BR>")
        end if
'
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
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%">
<p class="normal"><b>&nbsp;<br>
Order details</b>
</p>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="25%" align="left" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Order
ID</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Date</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Status</b></font></td>
<td width="25%" align="left" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Method
of payment</b></font></td>
</tr>
<tr>
<td width="25%" class="smalltext"><%=order_id%></td>
<td width="25%" class="smalltext"><%=orderdate%></td>
<td width="25%" class="smalltext"><%=orderstatus%>
<%
if orderstatus = "Saved" then
%>&nbsp;<a href="viewcart.asp?cart=<%=order_id%>&user=<%=user_id%>&u_country=<%=cntrycode%>"><b>[resume]</b></a><%
end if%></td>
<td width="25%" class="smalltext"><%=mop%></td>
</tr>
<tr>
<td width="25%" bgcolor="#000000" class="smalltext"><font color="#FFFF00"><b>status last updated</b></font></td>
<td width="25%" bgcolor="#000000" class="smalltext"><font color="#FFFF00">&nbsp;<%=statusupdated%></font></td>
<td width="25%" bgcolor="#000000" class="smalltext"><font color="#FFFF00"><b>Ship to:</b></font></td>
<td width="25%" bgcolor="#000000" class="smalltext"><font color="#FFFF00"><font color="#FFFFFF"><b><%=cntryname%></b></font></font></td>
</tr>
<tr>
<td width="50%" colspan="4" bgcolor="#FFFFFF">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="10%" bgcolor="#c0c0c0" class="smalltext"><font color="#FFFFFF"><b>Qty</b></font></td>
<td width="40%" bgcolor="#c0c0c0" class="smalltext"><font color="#FFFFFF"><b>Item</b></font></td>
<td width="20%" bgcolor="#c0c0c0" class="smalltext"><font color="#FFFFFF"><b>Product
status</b></font></td>
<td width="15%" bgcolor="#c0c0c0" class="smalltext"><font color="#FFFFFF"><b>£each</b></font></td>
<td width="15%" bgcolor="#c0c0c0" class="smalltext"><font color="#FFFFFF"><b>£sub
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
if len(summitup) > 37 then summitup = left(summitup,37) & "..."
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
<td width="10%" class="smalltext" bgcolor="#ffffff">&nbsp;</td>
<td width="40%" class="smalltext" bgcolor="#ffffff">&nbsp;</td>
<td width="20%" class="smalltext" bgcolor="#ffffff"><font color="#FFFF00">&nbsp;</td>
<td width="15%" class="smalltext"><b>SUB TOTAL</b></td>
<td width="15%" class="smalltext">£<%=fixcurrency(runningtotal)%></td>
</tr>
<tr>
<td width="10%" class="smalltext" bgcolor="#c0c0c0"><font color="#FFFFff"><b>Shipping:</b></font></td>
<td width="40%" class="smalltext" bgcolor="#c0c0c0"><font color="#FFFFff"><b>&nbsp;Zone:&nbsp;<%=cntryzone%>&nbsp;Weight:&nbsp;<%=totalweight%>&nbsp;Grams</b></font></td>
<td width="20%" class="smalltext" bgcolor="#c0c0c0">&nbsp;</td>
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
</center>
</td>
</tr>
</table>
</center>
</div>
</td>
</tr>
</table>
</center>
</div>
<!--#include file="incfooter.asp"-->
<%sub failure(fail)%>
&nbsp;
<br><div class="normal"><b>Error!<br>&nbsp;<br>
<%=fail%><br>
Use 'back' on your browser or email us if you feel this is a bug <a href="mailto:<%=b_email%>">[email]</a></b></div>
<!--#include file="incfooter.asp"-->
<%Response.end
end sub%>

