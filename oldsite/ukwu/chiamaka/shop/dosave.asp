<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file="admin.asp"-->
<!--#include file="inccart.asp"-->
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
FUNCTION invalidEmail( email )
  IF INSTR( email, "@" ) = 0 OR INSTR( email, "." ) = 0 THEN
    invalidEmail = TRUE
  ELSE
    invalidEmail = FALSE
  END IF
END FUNCTION
'
Function EncodeString(str)
dim yxy, byteme
yxy = 1
do while yxy <= len(str)
select case mid(str,yxy,1)
case chr(39)
byteme = byteme & chr(171)
case chr(44)
byteme = byteme & chr(218)
case chr(13)
byteme = byteme & chr(162)
case chr(34)
byteme = byteme & chr(177)
case else
byteme = byteme & mid(str,yxy,1)
end select
yxy = yxy + 1
loop
EncodeString = byteme
end function
'
dim f_title, f_firstname, f_surname, f_email, f_pass, f_share, f_mail, f_password, bounce(4), fail
f_title = trim(request("title"))
f_firstname = trim(request("firstname"))
f_surname = trim(request("surname"))
f_email = trim(request("email"))
f_password = trim(request("password"))
f_mail = request("nomail")
f_share = request("share")
' verify form
if f_title = "none" then
fail = fail & "Please select Mr/Mrs/Miss/Ms.<BR>"
bounce(0) = "#ff0000"
else
bounce(0) = "#ffffff"
end if
'
if len(f_firstname) < 1 or len(f_firstname) > 30 then
fail = fail & "First name missing or over 30 char.<BR>"
bounce(1) = "#ff0000"
else
bounce(1) = "#ffffff"
end if
'
if len(f_surname) < 1 or len(f_surname) > 30 then
fail = fail & "Surname missing or over 30 char.<BR>"
bounce(2) = "#ff0000"
else
bounce(2) = "#ffffff"
end if
'
if len(f_email) < 1 or len(f_firstname) > 75 then
fail = fail & "email address missing or over 75 char.<BR>"
bounce(3) = "#ff0000"
else
bounce(3) = "#ffffff"
end if
'
if invalidemail(f_email) = true then
fail = fail & "Email address invalid<BR>"
bounce(3) = "#ff0000"
else
bounce(3) = "#ffffff"
end if
'
if len(f_password) < 5 or len(f_password) > 10 then
fail = fail & "Password must be between 5 and 10 char.<BR>"
bounce(4) = "#ff0000"
else
bounce(4) = "#ffffff"
end if
%>
<!--#include file="incbody.asp"-->
<%if len(fail) > 1 then%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" bgcolor="#FF0000" bordercolor="#FFFFFF">
<p align="center"><font color="#FFFFFF" size="2" face="Verdana"><b>Ooooppppsssss</b></font></td>
</tr>
<tr>
<td width="100%">
<p align="center"><font face="Verdana" size="2">Form errors!<br>
Your form contains the following errors:</font></p>
<p align="center"><font face="Verdana" size="2"><%=fail%></font><font face="Verdana" size="2"><br>
<br>
Please correct the entry (Errors highlighted in red)</font></td>
</tr>
</table>
</center>
</div>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
              <p class="smalltext"><b><u><font size="3" face="Verdana, Arial, Helvetica, sans-serif">ORDER 
                SAVING</font></u></b><br>
                <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Orders 
                can be saved on our system for up to 31 days. You can log-in and 
                pick up where you left of from the 'My account' option in our 
                store. To save your current order please provide us with your 
                email address and select a password (5-10 characters). If you 
                have any concerns regarding how we may use this data please read 
                our <a href="privacy.asp?cart=<%=cart_id%>&user=<%=user_id%>">privacy 
                &amp; security policy</a>.</font>
            </td>
</tr>
<tr>
<td width="100%">
<form method="POST" action="dosave.asp" id=form1 name=form1>
<div align="center">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr> 
                      <td width="16%" class="smalltext" bgcolor="<%=bounce(0)%>"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Name</font></td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(0)%>"> 
                        <select size="1" name="title" style="font-family: Verdana; font-size: 8pt">
                          <option <%if f_title = "Mr" then%>selected <%end if%>value="Mr">Mr.</option>
                          <option <%if f_title = "Mrs" then%>selected <%end if%>value="Mrs">Mrs</option>
                          <option <%if f_title = "Miss" then%>selected <%end if%>value="Miss">Miss</option>
                          <option <%if f_title = "Ms" then%>selected <%end if%>value="Ms">Ms.</option>
                          <option <%if f_title = "none" then%>selected <%end if%>value="none">\/Select\/</option>
                        </select>
                      </td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(1)%>"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Firstname</font></td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(1)%>"> 
                        <input type="text" name="firstname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_firstname%>">
                      </td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(2)%>"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Lastname</font></td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(2)%>"> 
                        <input type="text" name="surname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_surname%>">
                      </td>
                    </tr>
                    <tr> 
                      <td width="33%" colspan="2" class="smalltext" bgcolor="<%=bounce(3)%>">&nbsp;</td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(3)%>"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Email 
                        address</font></td>
                      <td width="19%" class="smalltext" bgcolor="<%=bounce(3)%>"> 
                        <input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_email%>">
                      </td>
                      <td width="36%" colspan="2" class="smalltext" bgcolor="<%=bounce(3)%>">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="33%" colspan="2" class="smalltext" bgcolor="<%=bounce(4)%>">&nbsp;</td>
                      <td width="17%" class="smalltext" bgcolor="<%=bounce(4)%>"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Password</font></td>
                      <td width="19%" class="smalltext" bgcolor="<%=bounce(4)%>"> 
                        <input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_password%>">
                      </td>
                      <td width="36%" colspan="2" class="smalltext" bgcolor="<%=bounce(4)%>">&nbsp;</td>
                    </tr>
                  </table>
</div>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#CCCCCC">
<tr>
                      <td width="90%" class="smalltext"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">From 
                        time to time we may send emails to customers detailing 
                        offers and changes to our store. If you would not like 
                        to receive such mailings please tick. You can easily unsubscribe 
                        at any stage.</font></td>
<td width="10%" align="center"><input type="checkbox" name="nomail" value="ON" <%if f_mail = "ON" then%> checked<%end if%>></td>
</tr>
<tr>
<td width="90%" class="smalltext">&nbsp;</td>
<td width="10%" align="center">&nbsp;</td>
</tr>
<tr>
                      <td width="90%" class="smalltext"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Occasionally 
                        we share data with other carefully selected groups. If 
                        you would not like us to do this with your data please 
                        tick here.</font></td>
<td width="10%" align="center"><input type="checkbox" name="share" value="ON"<%if f_share = "ON" then%> checked<%end if%>></td>
</tr>
</table>
</div>
</center>
<div align="right"><input type="submit" value="Retry" name="B1"></div>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
</form>
<center></td>
</tr>
</table>
</center>
</div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%Response.End
end if
' now update order and user info
dim ors, ocon, sql
Set ors = Server.CreateObject ("ADODB.recordset")
Set ocon = Server.CreateObject("ADODB.Connection")
ocon.Open constring
sql = "SELECT * FROM customers WHERE id=" & user_id & ";"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
ors("title") = encodestring(f_title)
ors("firstname") = encodestring(f_firstname)
ors("lastname") = encodestring(f_surname)
ors("email") = encodestring(f_email)
ors("password") = encodestring(f_password)
if f_mail <> "ON" then ors("mail") = true
if f_share <> "ON" then ors("share") = true
ors.Update
else
fail = "System error - unf/dosave214<br>"
end if
ors.Close
sql = "SELECT * FROM orders WHERE id=" & cart_id & ";"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
ors("status") = 2
ors("lastupdated") = now
ors.Update
else
fail = "System error - onf/dosave224<br>"
end if
ors.Close
ocon.Close
set ors=nothing
set ocon=nothing
if len(fail) > 1 then call genfail(fail)
'do email
Dim jmail
Set JMail = Server.CreateObject("JMail.SMTPMail")
JMail.ServerAddress = "127.0.0.1:25"
JMail.Sender = b_email
JMail.Subject = "Saved order"
if b_ccemail = true then JMail.AddRecipient b_email
JMail.AddRecipientBCC f_email
JMail.Body = "Thank you for saving your order (ID:" & cart_id & "). It will stay in our store (space permitting) until " & date + 29
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "To recover your order and continue shopping just visit our site and click My account."
JMail.Body = JMail.Body & "You will be asked for your email address(" & f_email & ") and the password you selected."
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "Thank you for visiting our store."
JMail.AppendText vbNewLine
JMail.Body = JMail.Body & "----------------------------------------------------------"
JMail.AppendText vbNewLine
JMail.Execute
'report to screen
%>
<div align = "left" class="normal">&nbsp;<br>
  <b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Order saved.</font></b><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><br>
  We have sent you an email telling you how to recover your order later.<br>
  Click <a href="index.asp?cart=<%=cart_id%>&user=<%=user_id%>">[here]</a> 
  to continue</font></div>
<p>&nbsp;</p>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%Response.emd

sub genfail(fail)
%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" bgcolor="#FF0000" bordercolor="#FFFFFF">
<p align="center"><font color="#FFFFFF" size="2" face="Verdana"><b>Ooooppppsssss</b></font></td>
</tr>
<tr>
<td width="100%">
<p align="center"><font face="Verdana" size="2">An error occurred. Possible
causes are bad data, corrupted data or server load.<br>
<br><%=fail%><br>
To return to the last page click 'back' on your browser. <br>
If you keep seeing this message please email us by clicking <a href="mailto:<%=b_email%>">[here]</a></font></td>
</tr>
<tr>
<td width="100%"></td>
</tr>
</table>
</center>
</div>
<!--#include file="incfooter.asp"-->
<%response.end
end sub%>


