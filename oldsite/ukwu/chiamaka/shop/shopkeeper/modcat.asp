<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
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
<%'
Dim SQL                         
Dim ocon  
Dim ors
Dim totalr
Dim catid
catid= request("catid")
if not isnumeric (catid) then catid = 0
catid = clng(catid)
if catid < 2 then call failure("Bad category recieved - possible corrupt data<br>")     
'
sql = "SELECT * FROM cats WHERE id = " & catid & " ORDER BY cat ASC;"
Set ocon = Server.CreateObject("ADODB.Connection")
oCon.Open constring
Set oRS = Server.CreateObject("ADODB.Recordset")
oRS.Open sql, oCon, adOpenStatic, adLockReadOnly, adCmdText
if ors.EOF or ors.RecordCount <> 1 then
ors.Close
ocon.Close
set ors = nothing
set ocon = nothing
call failure("Can't find category. Already deleted? Or trashed data received<BR>")
end if
' draw html head and check for results
'**********************************************
'                               html header
'**********************************************
%><html>
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
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function backcats(){
window.location="cats.asp"
}
function warnif()
{
if (window.document.forms[0].deleteit.checked)
        {
        var x=window.confirm("You have selected to delete this category\nYou cannot undo this if you proceed\nCONFIRM DELETE")
        if (x)
        return true;
        else
return false;
    }
else
return true;
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
<p class="smalltext">Shopkeeper Control Panel - Modify product categories</td>
</tr>
<tr>
<td width="100%">
</center>
<form method="POST" action="updatecats.asp" onsubmit="return warnif()">
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="33%" class="normal" bgcolor="#000000" align="center"><b><font color="#FFFFFF">Current
category</font></b></td>
<td width="33%" class="normal" bgcolor="#000000" align="center"><b><font color="#FFFFFF">Enter
new name</font></b></td>
<td width="5%" class="normal" bgcolor="#000000" align="center"><b><font color="#FFFFFF">Delete</font></b></td>
<td width="29%" class="normal" bgcolor="#000000" align="center"><b><font color="#FFFFFF">Click
to make changes</font></b></td>
</tr>
<tr>
<td width="33%" class="normal" align="center"><font color="#ff0000"><b><%=grandma(ors("cat"))%></b></font></td>
<td width="33%" class="normal" align="center">
<input type="text" name="newcat" size="20"></td>
<td width="5%" class="normal" align="center">
<input type="checkbox" name="deleteit" value="ON"></td>
<td width="29%" class="normal" align="center">
<input type="submit" value="Update" name="B1"></td>
</tr>
</table>
</div>
<input type="hidden" name="catid" value="<%=catid%>">
</form>
<form>
<div align="center" class="normal">&nbsp;<br>
&nbsp;<br><b><u>Please note!</b></u> If you delete a category any products of that<br>type will have their details defaulted to the 'Misc' category.<br>&nbsp;<br>&nbsp;
<input type="button" value="Exit to menu" name="B1" onclick="leavepage()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Return to categories list" name="B2" onclick="backcats()"></p>
</form>
</div>
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
<%ors.Close
ocon.Close
set ors = nothing
set ocon = nothing
Response.End
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
end sub%>
