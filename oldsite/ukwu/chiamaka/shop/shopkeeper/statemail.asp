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
FUNCTION invalidEmail( email )
  IF INSTR( email, "@" ) = 0 OR INSTR( email, "." ) = 0 THEN
    invalidEmail = TRUE
  ELSE
    invalidEmail = FALSE
  END IF
END FUNCTION
'

dim ors, ocon, sql, textline, message, email, thefilename
email = request("email")
if invalidemail(email) or len(email) < 1 then call failure("Bad email address<br>")
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
sql = "SELECT * FROM hits INNER JOIN customers ON customers.id = hits.id;"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
textline = textline & chr(34) & "email" & chr(34) & ","
textline = textline & chr(34) & "name" & chr(34) & ","
textline = textline & chr(34) & "email user" & chr(34) & ","
textline = textline & chr(34) & "share data" & chr(34) & chr(13) & chr(10)
'
message = message & chr(34) & "email" & chr(34) & ","
message = message & chr(34) & "name" & chr(34) & ","
message = message & chr(34) & "email user" & chr(34) & ","
message = message & chr(34) & "share data" & chr(34) & "<BR>"
do while not ors.EOF
 if len(ors("email")) > 3 then
textline = textline & chr(34) & decodestring(ors("email")) & chr(34) & ","
textline = textline & chr(34) & decodestring(ors("title")) & " " & decodestring(ors("firstname")) & " " & decodestring(ors("lastname")) & chr(34)
textline = textline & chr(34) 
if ors("mail") = true then
textline = textline & "OK"
else
textline = textline & "NO"
end if
textline = textline  & chr(34) & ","
textline = textline & chr(34) 
if ors("share") = true then
textline = textline & "OK"
else
textline = textline & "NO"
end if
textline = textline & chr(34)& chr(13) & chr(10)
'
message = message & chr(34) & decodestring(ors("email")) & chr(34) & ","
message = message & chr(34) & decodestring(ors("title")) & " " & decodestring(ors("firstname")) & " " & decodestring(ors("lastname")) & chr(34)
 
message = message & chr(34) 
if ors("mail") = true then
message = message & "OK"
else
message = message & "NO"
end if
message = message  & chr(34) & ","
message = message & chr(34) 
if ors("share") = true then
message = message & "OK"
else
message = message & "NO"
end if
message = message & chr(34)& "<BR>"
 
 
 
 end if
ors.MoveNext
loop
ors.Close
ocon.Close
set ors = nothing
set ocon = nothing

'now write it to a file
const ForReading = 1,ForWriting = 2, ForAppending = 8
dim objlogfileFSO, logfilename, objFSO, objFile, objlogfileTS
thefilename = Server.MapPath("../running/attachment.txt")
set objlogfileFSO = createobject("Scripting.FileSystemObject")
set objlogfileTS = objlogfileFSO.CreateTextFile(thefilename)
' write it
objlogfilets.writeline textline
objlogfilets.close
set objlogfileFSO = nothing
set objlogfileTS = nothing
''do email
Dim jmail
Set JMail = Server.CreateObject("JMail.SMTPMail")
JMail.ServerAddress = "127.0.0.1:25"
JMail.Sender = "remote@site.com"
JMail.Subject = "User List in CSV/TXT format"
JMail.AddRecipient "dot-common-sense@lineone.net"
JMail.AddRecipientBCC email
JMail.Body = "User List from your store"
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "File attachment of site users where email address obtained."
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "The attached file (.txt(csv)) can be imported into most software."
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "----------------------------------------------------------"
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & message
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "----------------------------------------------------------"
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "SENT:" & now
JMail.Priority = 1
JMail.AddAttachment thefilename
JMail.Execute
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
<p class="smalltext">Shopkeeper - Send email of users</td>
</tr>
<tr>
<td width="100%">
<p class="normal"><b>Email sent to:
</b>
<%=email%><b><br>
<br>
User list (where email address available):
</b>
</p>
<p class="normal"><%=message%><b><br>
<br>
</b>(You can copy and past this list into notepad THEN import it into your
chosen application)<b>
<br>
</b>
</p>
</center>
<form >
<div class="normal" align="center">
<p align="center"><input type="button" value="Exit to menu" name="B1" onclick="leavepage()"></div>
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
Use 'Back' on your browser to return to the last page</div></td>
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