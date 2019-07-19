<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
function getdate(thedate,thetime)
select case Weekday(thedate)
case 1
getdate = "Sun,"
case 2
getdate = "Mon,"
case 3
getdate = "Tue,"
case 4
getdate = "Wed,"
case 5
getdate = "Thu,"
case 6
getdate = "Fri,"
case 7
getdate = "Sat,"
end select
getdate = getdate & " " & day(thedate) & " "
select case month(thedate)
case 1
getdate = getdate & " Jan "
case 2
getdate = getdate & " Feb "
case 3
getdate = getdate & " Mar "
case 4
getdate = getdate & " Apr "
case 5
getdate = getdate & " May "
case 6
getdate = getdate & " Jun "
case 7
getdate = getdate & " Jul "
case 8
getdate = getdate & " Aug "
case 9
getdate = getdate & " Sep "
case 10
getdate = getdate & " Oct "
case 11
getdate = getdate & " Nov "
case 12
getdate = getdate & " Dec "
end select
getdate = getdate & year(thedate) & " " & thetime
end function

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

%>
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
<%' collect and verify form using asp upload
dim ors, ocon, itemid, sql, page
page = request("page")
itemid = request("pid")
if not isnumeric(itemid) then itemid = 0
itemid = clng(itemid)
if itemid < 1 then call failure("Garbled product ID recieved<br>")
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
Set ors = Server.CreateObject ("ADODB.Recordset")
ocon.Open constring
dim heading, catid, desc, price, weight, picname, picreset, prodstatus, pst, qty, fail, oos, speoff
sql = "SELECT * FROM goods WHERE id = " & itemid & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF and ors.RecordCount = 1 then
catid = ors("catid")
heading = decodestring(ors("heading"))
desc = decodestring(ors("description"))
price = "£" & fixcurrency(ors("price"))
weight = ors("weight") & " G"
picname = ors("picname")
pst = ors("status")
qty = ors("qty")
oos = ors("oos")
speoff = ors("special")
else
fail = "Unable to locate product in database<br>"
end if
ors.Close
if len(fail) > 1 then
ocon.Close
set ors = nothing
set ocon = nothing
call failure(fail)
end if%>
<html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function gotoresults(pid){
window.location="listprods.asp?page=" +pid;
}
// end cloak-->
</script>
<meta http-equiv="Expires" CONTENT="<%=getdate(date-1,time())%> GMT">
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Modify Product</td>
</tr>
<tr>
<td width="100%">
<p class="normal">To modify this product make your changes below<br>
</p>
<form method="POST" ENCTYPE="multipart/form-data" ACTION="modprod2.asp">
<div align="center">
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr>
<td width="50%" class="normal">This product is currently</td>
<%if pst = 1 then%>
<td width="23%" bgcolor="#FF0000">
<div align="center" class="normal"><font color="#FFFFFF"><b>ACTIVE</b></font></div></td>
<%Else%>
<td width="23%" bgcolor="#000000">
<div align="center" class="normal"><font color="#FFFFFF"><b>NOT ACTIVE</b></font></div></td>
<%end if
if qty < 1 then%>
<td width="27%" bgcolor="#FFCC66">
<div align="center" class="normal"><font color="#FFFFFF"><b>!OUT OF STOCK!</b></font></div></td>
<%else%>
<td width="27%" bgcolor="#000000">
<div align="center" class="normal"><font color="#FF0000"><b>IN STOCK</b></font></div></td>
<%end if%>
</tr>
<tr>
<td width="50%" class="normal">Set this product to ACTIVE/HIDDEN</td>
<td width="23%" class="smalltext"><b><input type="radio" name="pdst" value="1"<%if pst = 1 then%> checked<%end if%>>active</b></td>
<td width="27%" class="smalltext"><b><input type="radio" name="pdst" value="0"<%if pst <> 1 then%> checked<%end if%>>hidden</b></td>
</tr>
<tr>
<td width="50%" class="normal">Product category (use blank box to create new)</td>
<td width="23%"><select size="1" name="cat">
<option selected value="0">Make new&gt;&gt;&gt;&gt;&gt;</option>
<%
ors.Open "cats", constring, adOpenForwardOnly, adLockReadOnly, adCmdTable
do while not ors.EOF
if catid = ors("id") then %>
<option selected value="<%=ors("id")%>"><%=grandma(ors("cat"))%></option>
<%else%>
<option value="<%=ors("id")%>"><%=grandma(ors("cat"))%></option>
<%END IF
ors.MoveNext
loop
ors.Close
%>
</select></td>
<td width="27%"><input type="text" name="newcat" size="20"  value="Enter New Cat"></td>
</tr>
<tr>
<td width="50%" class="normal">Product heading</td>
<td width="50%" colspan="2"><input type="text" name="heading" size="20"  value="<%=grandma(heading)%>"></td>
</tr>
<tr>
<td width="50%" class="normal">Product description (255 char max)</td>
<td width="50%" colspan="2"><textarea rows="5" name="desc" cols="48"><%=desc%></textarea></td>
</tr>
<tr>
<td width="50%" class="normal">Product price</td>
<td width="50%" colspan="2"><input type="text" name="price" size="20"  value="<%=price%>"></td>
</tr>
<tr>
<td width="50%" class="normal">Product weight IN GRAMS (For shipping)</td>
<td width="50%" colspan="2"><input type="text" name="weight" size="20"  value="<%=weight%>"></td>
</tr>
<tr>
<td width="50%" class="normal">Quantity in stock</td>
<td width="50%" colspan="2"><input type="text" name="qty" size="20" value="<%=qty%>"></td>
</tr>
<tr>
<td width="50%" class="normal">Special Offer?</td>
<td width="50%" colspan="2"><input type="checkbox" name="so" value="ON" <%if speoff = true then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal">When product out of stock do the following:</td>
<td width="50%" colspan="2"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Don't show the item</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="1" name="oos"<%if oos = 1 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available 2-3 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="2" name="oos"<%if oos = 2 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available 3-7 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="3" name="oos"<%if oos = 3 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available in 14 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="4" name="oos"<%if oos = 4 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available in 28 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="5" name="oos"<%if oos = 5 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as discontinued</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="6" name="oos"<%if oos = 6 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as special order only</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="7" name="oos"<%if oos = 7 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Current Photograph:</b><br>
To change this photograph use the browse box below to locate the new file on
your machine.<br>
<br>
To keep the current photograph leave the box blank<br>
<br>
To set the photograph to 'No picture available' place a<br>
tick in the 'reset' box</td>
<td width="50%" colspan="2" bgcolor="#C0C0C0">
<p align="center"><img border="0" src="../prodpix/<%=picname%>" width="200" height="150" alt="<%=heading%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph Reset</b></td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><input type="checkbox" name="prs" value="ON"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph:</b> Size 200 px wide by 150 px high</td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><INPUT TYPE=file SIZE=20 NAME="pic"></td>
</tr>
<tr>
<td width="50%" class="normal"><input type="button" value="Exit to menu" name="bx1" onclick="leavepage()">
<%if isnumeric(page) then
if page > 0 then%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Back to list" name="bx1" onclick="gotoresults(<%=page%>)"><%end if
end if%></div></td>
<td width="50%" colspan="2"><div align = "right"><input type="submit" value="Update Product" name="B1"></div></td>
</tr>
</table>
</div>
<input type="hidden" name="oldpic" value="<%=picname%>">
<input type="hidden" name="pid" value="<%=itemid%>">
<input type="hidden" name="fqty" value="<%=qty%>">
<input type="hidden" name="fst" value="<%=pst%>">
<input type="hidden" name="page" value="<%=page%>">
</form>
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
<%ocon.close
set ors = nothing
set ocon = nothing

sub failure(fail)%>
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
<form><input type="button" value="Exit" name="bx1" onclick="leavepage()"></form></div></td>
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
<%Response.End
end sub%>