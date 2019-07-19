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
<%' collect and verify form using asp upload
'
Dim SQL                         
Dim ocon  
Dim ors
Dim totalr     
'
sql = "SELECT * FROM cats ORDER BY cat ASC;"
Set ocon = Server.CreateObject("ADODB.Connection")
oCon.Open constring
Set oRS = Server.CreateObject("ADODB.Recordset")
oRS.Open sql, oCon, adOpenStatic, adLockReadOnly, adCmdText
if not ors.EOF then totalr = ors.RecordCount
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
<p class="normal" align="center"><b>Here is the current list of
categories.&nbsp;</b><br>
To modify or delete a category click [modify]<br>
NB: If you delete a category that has products in it, these products<br>
will be set to 'Misc'.(Misc is cat 1 which cannot be altered)<br>
<b><u>TOTAL CATEGORIES =<%=totalr%></u></b>
</p>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="25%" class="normal" bordercolor="#FFFFFF" bgcolor="#000000"><font color="#FFFFFF"><b>Category
ID</b></font></td>
<td width="45%" class="normal" bordercolor="#FFFFFF" bgcolor="#000000"><font color="#FFFFFF"><b>Category</b></font></td>
<td width="15%" class="normal" bordercolor="#FFFFFF" bgcolor="#000000">&nbsp;</td>
<td width="15%" class="normal" bordercolor="#FFFFFF" bgcolor="#000000" align="center"><font color="#FFFFFF"><b>Click
to modify</b></font></td>
</tr>
<%if not ors.EOF then
do while not ors.EOF
if ors("id") > 1 then%>
<tr>
<td width="25%" class="normal"><b><%=ors("id")%></b></td>
<td width="45%" class="normal"><b><%=grandma(ors("cat"))%></b></td>
<td width="15%" class="normal" align="center">&nbsp;</td>
<td width="15%" class="normal" align="center"><b><a href="modcat.asp?catid=<%=ors("id")%>">[modify]</a></b></td>
</tr>
<%end if
ors.MoveNext
loop
end if
ors.Close
ocon.Close
set ors = nothing
set ocon = nothing%>
</table>
</div>
</center>
<hr><div align="center"><form id=form2 name=form2><input type="button" value="Exit to menu" name="bx1" onclick="leavepage()"></form></div></td>
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
