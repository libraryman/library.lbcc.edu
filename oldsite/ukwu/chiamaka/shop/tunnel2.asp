<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file="admin.asp"-->
<!--#include file="incdb.asp"-->
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
function summary(thestring,length)
if len(thestring) > length then thestring = left(thestring,length)
summary = grandma(thestring)
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
function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
end function
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
'wipe out cookies cart & user reference
        session("cart") = "0"
        session("user") = "0"
'get form values
dim cart_id, tx_id, user_id
cart_id = makeitanumber(request("oid"))
tx_id = makeitanumber(request("tid"))
if cart_id > 0 then
' reset order and database values
dim ors, ocon, sql, runt, o_message, main_mes
Set ors = Server.CreateObject ("ADODB.recordset")
Set ocon = Server.CreateObject("ADODB.Connection")
ocon.Open constring
sql = "SELECT * FROM orders WHERE id = " & cart_id & ";"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
        if ors.RecordCount = 1 then
                ors("status") = 3
                ors("transaction") = tx_id
                ors("lastupdated") = now
                ors("mop") = 1
                user_id = ors("cust")
                ors.Update
        end if
end if
ors.Close
' now modify master stock values
sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & ");"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
do while not ors.EOF
if ors("goods.qty") > ors("orderitems.qty") + 1 then
ors("goods.qty") = ors("goods.qty") - ors("orderitems.qty")
ors.Update
end if
runt = runt & ors("orderitems.qty") * ors("price")
o_message = o_message & ors("orderitems.qty") & "x " & ors("heading") & " AT £" & fixcurrency(ors("price")) & " Each (£" & fixcurrency(ors("orderitems.qty") * ors("price")) & ")" & vbnewline
ors.MoveNext
loop
o_message = o_message & "Total = £" & fixcurrency(runt) & " + shipping" & vbnewline
ors.Close
' now get user details for email
SQL = "SELECT * FROM customers WHERE id = " & user_id & ";"
dim r_email, r_name
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
        if ors.RecordCount = 1 then
        r_email = decodestring(ors("email"))
        r_name = grandma(decodestring(ors("title"))) & ". " & grandma(decodestring(ors("firstname"))) & " " &  grandma(decodestring(ors("lastname")))
        end if
end if
ors.Close
ocon.Close
set ors = nothing
set ocon = nothing
main_mes = "Dear " & r_name & "," & vbnewline
main_mes = main_mes & "Thank you for your order (ID:C/" & cart_id & "U/" & user_id & "T/" & tx_id & ") placed " & now & vbnewline
main_mes = main_mes & "Your order is made up of the following;" & vbnewline
main_mes = main_mes & o_message
main_mes = main_mes & "You can track the progress of your order by visiting our site. If you have any questions or queries please contact us." & vbnewline
main_mes = main_mes & "Thank you for shopping with us."
Dim jmail
Set JMail = Server.CreateObject("JMail.SMTPMail")
JMail.ServerAddress = "127.0.0.1:25"
JMail.Sender = b_email
JMail.Subject = "Your order"
JMail.AddRecipient b_email
JMail.AddRecipientBCC r_email
JMail.Body = main_mes
JMail.Execute
end if
%>
<!--#include file="incbody.asp"-->
<p class="normal">&nbsp;<br><b>Your order has been completed.</b><br>
Thank you for shopping with us.<br>
You have been sent an email detailing the card transaction and a separate order
email.<br>
<br>
You can track your order using the [track order] function on our site.</p>
<!--#include file="incfooter.asp"-->