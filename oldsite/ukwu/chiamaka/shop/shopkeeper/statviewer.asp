<%option explicit
on error resume next%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
<%'
' file scans database of hits
' writes them to a text file
' and emails them to email address supplied
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
'
Dim iPageSize       
Dim iPageCount      
Dim iPageCurrent    
Dim SQL                         
Dim ocon  
Dim ors, orsu     
Dim iRecordsShown   
Dim page
Dim itotal
Dim unhits

page = request("page")
if not isnumeric(page) then page = 1
page = cint(page)
iPageCurrent = page  
iPageSize = 100
sql = "SELECT * FROM hits;"
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
Set oRSu = Server.CreateObject("ADODB.Recordset")
oRSu.Open sql, oCon, adOpenStatic, adLockReadOnly, adCmdText
if orsu.RecordCount > 0 then
unhits = orsu.RecordCount
else
unhits = 0
end if
orsu.Close
set orsu = nothing

sql = "SELECT * FROM hits INNER JOIN customers ON customers.id = hits.cust ORDER BY ts DESC;"
Set oRS = Server.CreateObject("ADODB.Recordset")
ors.PageSize = iPageSize
ors.CacheSize = iPageSize
oRS.Open sql, oCon, adOpenStatic, adLockReadOnly, adCmdText
iPageCount = ors.PageCount
itotal = ors.RecordCount
If iPageCurrent > iPageCount Then iPageCurrent = iPageCount
If iPageCurrent < 1 Then iPageCurrent = 1
' draw html head and check for results
%>
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
<%
If iPageCount = 0 Then'blowout
ors.Close
oCon.Close
set ors = nothing
set ocon= nothing
%><div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper - Site statistics</td>
</tr>
<tr>
<td width="100%">
<p class="normal" align="center"><b>No hits recorded in database</b><br>
</p>
</center>
<hr><form ><div class="normal" align="center"><input type="button" value="Exit to menu" name="B1" onclick="leavepage()"></div>
</form>
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
<%response.end
end if
' show it
ors.AbsolutePage = iPageCurrent
dim bgcol
bgcol = "#cfcfcf"
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper - Site statistics</td>
</tr>
<tr>
<td width="100%">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" bgcolor="#FF0000" align="right" class="normal"><font color="#FFFFFF"><b>Total
Hits</b></font></td>
<td width="50%" bgcolor="#FF0000" align="center" class="normal"><font color="#FFFFFF"><b><%=unhits%></b></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FF0000" align="right" class="normal"><font color="#FFFFFF"><b>Unique
hits (different users)</b></font></td>
<td width="50%" bgcolor="#FF0000" align="center" class="normal"><font color="#FFFFFF"><b><%=itotal%></b></font></td>
</tr>
</table>
</div>
<p class="normal" align="center">
Showing site statistics 100 to each page starting with most
recent hits:</p>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="5%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Hit</b></font></td>
<td width="10%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Time
stamp</b></font></td>
<td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>User
(if known)</b></font></td>
<td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>email
(if known)</b></font></td>
<td width="15%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>DNS</b></font></td>
<td width="30%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>referrer</b></font></td>
</tr>
<%Do While iRecordsShown < iPageSize And Not ors.EOF' draw cells
if bgcol = "#cfcfcf" then
bgcol = "#FFFFFF"
else
bgcol = "#cfcfcf"
end if
%>
<tr>
<td width="5%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%=ors("hits.id")%></td>
<td width="10%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%=ors("ts")%></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%=decodestring(ors("title")) & " " & decodestring(ors("firstname")) & " " & decodestring(ors("lastname"))%></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%=decodestring(ors("email"))%></td>
<td width="15%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%=decodestring(ors("remote"))%></td>
<td width="30%" class="smalltext" bgcolor="<%=bgcol%>">&nbsp;<%if len (ors("referer")) > 3 then%><a href="<%=decodestring(ors("referer"))%>" target="_blank"><%=decodestring(ors("referer"))%></a><%end if%></td>
</tr>
<%iRecordsShown = iRecordsShown + 1
ors.movenext
loop
'close table & draw page navigator%>
</table>
</div>
</center>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" align="center" class="normal"><%if ipagecurrent > 1 then%><a href="statviewer.asp?page=<%=ipagecurrent -1%>">[Last page]</a><%else%>&nbsp;<%end if%></td>
<td width="50%" align="center" class="normal"><%if ipagecurrent < iPageCount then%><a href="statviewer.asp?page=<%=ipagecurrent +1%>">[Next page]</a><%else%>&nbsp;<%end if%></td>
</tr>
</table>
</div>
<hr><form ><div class="normal" align="center"><input type="button" value="Exit to menu" name="B1" onclick="leavepage()"></div>
</form>
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
oCon.Close
set ors = nothing
set ocon= nothing
response.end%>