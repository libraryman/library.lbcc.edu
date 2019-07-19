<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
%>
<!--#include file = "chklog.asp"-->
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




dim ors, ocon
dim picname, fail, catname, heading, price, description, prodstatus
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
Set ors = Server.CreateObject ("ADODB.Recordset")
Dim itemid, sql
itemid = Request("pid")
if not isnumeric(itemid) then itemid = 0
itemid = clng(itemid)
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
'SQL JOINS SELECTS CAT NAME FROM CATS BASED ON PRODUCT TOO
sql = "SELECT * FROM goods INNER JOIN cats ON goods.catid = cats.id WHERE (goods.id = " & itemid & ");"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.eof and ors.recordcount = 1 then
' decide on status
if ors("qty") > 1 then prodstatus = "In stock"
if ors("qty") = 1 then prodstatus = "Only 1 remaining in stock"
if ors("qty") < 1 then
        select case ors("oos")
        case 1
        prodstatus = "Item currently unavailable"
        case 2
        prodstatus = "To order usually available within 2-3 days"
        case 3
        prodstatus = "To order usually available within 3-7 days"
        case 4
        prodstatus = "To order usually available within 14 days"
        case 5
        prodstatus = "To order usually available within 28 days"
        case 6
        prodstatus = "Item has been discontinued"
        case 7
        prodstatus = "Special order only-we will contact you"
        case else
        prodstatus = "Product status unknown"
        end select
end if
heading = decodestring(grandma(ors("heading")))
price = fixcurrency(ors("price"))
description = decodestring(ors("description"))
picname = ors("picname")
catname = ors("cat")
        ors("status") = 1
        ors.Update
        ors.Close
else
fail = true
end if


'**********************************************
'       html header
'**********************************************
%>
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
hr                       {width:90%; size:1; color: #FF0000; align: center}

-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function modprod(pid){
window.location="modprod1.asp?pid=" +pid;
}
function addprod(){
window.location="addprod.asp";
}
// end cloak-->
</script>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Review new product</td>
</tr>
<tr>
<td width="100%">
<%if fail <> "true" then%>
<div class="normal" align="center"><b><u>Product Activated: Category: <%=catname%></u></b></div>
<hr>
<div align="center">
<table border="0" cellpadding="0" width="55%" cellspacing="5">
<caption>Small search listing</caption>
<tr>
<td width="9%">
<p align="center"><img border="0" src="../prodpix/<%=picname%>" width="60" height="45" alt="<%=heading%>"></td>
<td width="91%" valign="top">
<div class="normal"><b><%=heading%></b></div>
<div class="smalltext"><%=description%><br>
£<%=price%> <font color="#FF0000"><%=prodstatus%></font>
</div>
</td>
</tr>
</table>
</div>
<hr>
<div align="center">
<table border="0" cellpadding="0" cellspacing="5" width="75%">
<caption><b>Detail search listing</b></caption>
<tr>
<td width="27%"><img border="0" src="../prodpix/<%=picname%>" width="200" height="150" alt="<%=heading%>"></td>
<td width="73%" valign="top">
<div class="heading"><b><%=heading%></b></div>
<div class="normal"><%=description%><br>
£<%=price%></div>
<div class="smalltext"><font color="#FF0000"><%=prodstatus%></font></div></td>
</tr>
</table>
</div>
<br>
</center>
<hr>
<form method="POST">
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="33%" valign="top" class="smalltext" align="center">To exit to the menu click 'exit'</td>
<td width="33%" valign="top" class="smalltext" align="center">To make changes to
this product&nbsp;<br>
click 'Modify Product'</td>
<td width="34%" valign="top" class="smalltext" align="center">To add another product<br>
click 'Add Product'</td>
</tr>
<tr>
<td width="33%">
<div align="center"><input type="button" value="Exit to menu" name="B2" onclick="leavepage()"></div></td>
<td width="33%">
<div align="center"><input type="button" value="Modify Product" name="B3" onclick="modprod(<%=itemid%>)"></div></td>
</center>
<td width="34%">
<div align="center"><input type="button" value="Add Product" name="B1" onclick="addprod()"></div></td>
</tr>
</table>
</div>
</form>
<%else%>
<div class="heading">An error occured. Try 'Back' on your broweser</div>
<%end if%>
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
<%
ocon.Close
set ors = nothing
set ocon = nothing
%>