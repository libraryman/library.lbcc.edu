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
'
'get hideous form values!
Dim f_tit, f_fn, f_sn, f_hn, f_st, f_dt, f_tn, f_ct, f_cn, f_em, f_zip, f_phone, f_share, f_mail
dim fail, amount, the_action, fmpassword
the_action = request("B1") 
if the_action <> "Off line" then the_action = request("B2")
if the_action <> "On line" then the_action = "Off line"
amount = request("amount")
if isnumeric(amount) then amount = ccur(amount)
' gather data
f_tit = request("title")
f_fn = request("firstname")
f_sn = request("surname")
f_hn = request("hn")
f_st = request("street")
f_dt = request("district")
f_tn = request("town")
f_ct = request("county")
f_cn = makeitanumber(request("new_country"))
f_em = request("email")
f_zip = request("zip")
f_phone = request("phone")
f_share = request("share")
f_mail = request("mail")
fmpassword = request("password")

%>
<!--#include file="incbody.asp"--><%
' verify
if len(f_fn) < 1 or len(f_fn) > 30 then fail = fail & "First name missing or too long (max 30 char.)<br>"
if len(f_sn) < 1 or len(f_sn) > 30 then fail = fail & "Last name missing or too long (max 30 char.)<br>"
if len(f_hn) < 1 or len(f_hn) > 50 then fail = fail & "House name/number missing or too long (max 50 char.)<br>"
if len(f_st) < 1 or len(f_st) > 75 then fail = fail & "Street name missing or too long (max 75 char.)<br>"
if len(f_dt) > 75 then fail = fail & "District/village name too long (max 75 char.)<br>"
if len(f_tn) < 1 or len(f_tn) > 50 then fail = fail & "Town/city name missing or too long (max 50 char.)<br>"
if len(f_ct) < 1 or len(f_ct) > 50 then fail = fail & "County name missing or too long (max 50 char.)<br>"
if len(f_zip) < 1 or len(f_zip) > 15 then fail = fail & "postcode/zip missing or too long (max 15 char.)<br>"
if len(f_em) < 1 or len(f_em) > 75 then fail = fail & "Email address missing or too long (max 75 char.)<br>"
if invalidemail(f_em) = true then fail = fail & "Email address invalid<br>"
if len(f_phone) > 20 then fail = fail & "Phone number too long (max 20 char.)<br>"
if len(f_tn) < 1 or len(f_tn) > 50 then fail = fail & "Town/city name missing or too long (max 50 char.)<br>"
if len(fmpassword) < 5 or len(fmpassword) > 10 then fail = fail & "Password must be between 5-10 char<br>"
if fmpassword <> request("cfmpassword") then fail = fail & "Passwords do not match!<br>"
'
dim ors, ocon, sql
Set ors = Server.CreateObject ("ADODB.recordset")
Set ocon = Server.CreateObject("ADODB.Connection")
ocon.Open constring
if len(fail) > 1 then
%><div class="normal">&nbsp;<br><b><u>The following errors occurred in your data</u></b><br>
<%=fail%><br>&nbsp;<br>Please correct them</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<form method="POST" action="tunnel1.asp" id=form2 name=form2>
<table border="0" cellpadding="0" cellspacing="0" width="75%">
<tr>
<td width="50%" class="smalltext"><b>Title</b></td>
<td width="50%"><select size="1" name="title" style="font-family: Verdana; font-size: 8pt">
<option <%if decodestring(f_tit) = "Mr" then%>selected <%end if%>value="Mr">Mr</option>
<option <%if decodestring(f_tit) = "Mrs" then%>selected <%end if%>value="Mrs">Mrs</option>
<option <%if decodestring(f_tit) = "Miss" then%>selected <%end if%>value="Miss">Miss</option>
<option <%if decodestring(f_tit) = "Ms" then%>selected <%end if%>value="Ms">Ms</option>
</select></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>First name</b></td>
<td width="50%"><input type="text" name="firstname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_fn)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Surname</b></td>
<td width="50%"><input type="text" name="surname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_sn)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>House name/number</b></td>
<td width="50%"><input type="text" name="hn" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_hn)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Street</b></td>
<td width="50%"><input type="text" name="street" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_st)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Village/district</b></td>
<td width="50%"><input type="text" name="district" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_dt)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Town/city</b></td>
<td width="50%"><input type="text" name="town" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_tn)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>County</b></td>
<td width="50%"><input type="text" name="county" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(f_ct)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Country</b></td>
<td width="50%" class="smalltext"><b>
<%dim b_counter, l_c
        l_c = application("countries")
        If NOT isarray(l_c) then
                dim app_countries2
                sql = "SELECT * FROM countries ORDER BY name ASC;"
                ors.Open sql, constring, adOpenKeySet, adLockReadOnly, adCmdText
                if not ors.BOF then ors.MoveFirst
                app_countries2 = ors.GetRows
                ors.Close
                Application.Lock
                Application("countries") = app_countries2
                Application.UnLock
        end if
        l_c = application("countries")%>
        <select size="1" name="new_country" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"><%
        for b_counter = 0 to ubound(l_c,2)%>
        <option <%if f_cn = l_c(0,b_counter) then%>selected <%end if%>value="<%=l_c(0,b_counter)%>"><%=l_c(2,b_counter)%></option>
        <%next%>
        </select>
</b></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Postal code/zip code</b></td>
<td width="50%"><input type="text" name="zip" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_zip%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Email</b></td>
<td width="50%"><input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_em%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Phone</b></td>
<td width="50%"><input type="text" name="phone" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=f_phone%>"></td>
</tr>

                <tr>
                <td width="50%" class="smalltext"><b>Select a password<br></b>5-10 characters<br>&nbsp;</td>
                <td width="50%"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=fmpassword%>"></td>
                </tr>
                
                <tr>
                <td width="50%" class="smalltext"><b>Confirm password<br>&nbsp;</b></td>
                <td width="50%"><input type="password" name="cfmpassword" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=fmpassword%>"></td>
                </tr>

<tr>
<td width="50%" class="smalltext"><b>dont send me emails</b></td>
<td width="50%"><input type="checkbox" name="mail" value="ON" <%if f_mail = "ON" then%>checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>dont share my data</b></td>
<td width="50%"><input type="checkbox" name="share" value="ON" <%if f_share = "ON" then%>checked<%end if%>></td>
</tr>
<tr>
                <td colspan="2" class="normal" align="center"><b>Select payment method</b></td>
                </tr>
                <tr>
                <td width="50%" class="smalltext" align="center"><b>Mail order</b></td>
                <td width="50%" class="smalltext" align="center"><b>On-line with a card</b></td>
                </tr>
                <tr>
                <td width="50%" class="smalltext" align="center"><input type="submit" value="Off line" name="B1"></td>
                <td width="50%" class="smalltext" align="center"><input type="submit" value="On line" name="B2"></td>
                <input type="hidden" name="cart" value="<%=cart_id%>">
                <input type="hidden" name="user" value="<%=user_id%>">
                <input type="hidden" name="amount" value="<%=amount%>">
                </tr>
</table>
</form>
</td>
</tr>
</table>
<%ocon.Close
set ors = nothing
set ocon = nothing
response.End
end if
' update data
dim this_message, countryname
sql = "SELECT * FROM customers INNER JOIN countries ON customers.country = countries.id  WHERE (customers.id = " & user_id & ");"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
        if not ors.EOF and ors.RecordCount = 1 then
        if f_cn > 0 then ors("country") = f_cn
        ors("title") = encodestring(f_tit)
        ors("firstname") = encodestring(f_fn)
        ors("lastname") = encodestring(f_sn)
        ors("hn") = encodestring(f_hn)
        ors("street") = encodestring(f_st)
        if len(f_dt) > 1 then ors("district") = encodestring(f_dt)
        ors("town") = encodestring(f_tn)
        ors("county") = encodestring(f_ct)
        ors("zip") = encodestring(f_zip)
        countryname = ors("name")
        ors("password") = encodestring(fmpassword)
        if ors("email") <> encodestring(f_em) then ors("email") = encodestring(f_em)
        if len(f_phone) > 1 then ors("phone") = encodestring(f_phone)
        ors("started") = now
        if f_share = "ON" then
        ors("share") = false
        else
        ors("share") = true
        end if
        if f_mail = "ON" then 
        ors("mail") = false
        else
        ors("mail") = true
        end if
        ors.Update
        this_message = "Updated profile"
        else
        this_message = "Profile could NOT be updated"
        end if
        ors.Close       
' now back to the old school

if the_action = "On line" then
%>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#C0C0C0">
<tr>
<td width="100%">
<form method="POST" action="<%=securedurl%>">
<p class="normal">You have selected to pay on-line with a credit/debit card.<br>
For your security we will now transfer you to our secure payment centre.<br>
</p>
<!--alter these values for your own paygate/card handler-->
<div align="right"><input type="submit" value="Pay on line" name="B1"></div>
<input type="hidden" name="r" value="41">
<input type="hidden" name="ret" value="1">
<input type="hidden" name="amount" value="<%=amount%>">
<input type="hidden" name="al1" value="<%=f_hn%>">
<input type="hidden" name="oid" value="<%=cart_id%>">
<input type="hidden" name="al2" value="<%=f_st%>">
<input type="hidden" name="al3" value="<%=f_dt%>">
<input type="hidden" name="al4" value="<%=f_tn%>">
<input type="hidden" name="al5" value="<%=f_ct%>">
<input type="hidden" name="al6" value="<%=f_zip%>">
<input type="hidden" name="al7" value="<%=f_cn%>">
<input type="hidden" name="email" value="<%=f_em%>">
<input type="hidden" name="phone" value="<%=f_phone%>">
<input type="hidden" name="name" value="<%=f_tit & ". " & f_fn & " " & f_sn%>">
<!--------------------------------------------------------->
</form>
</td>
</tr>
</table>
<%end if%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#DEDADB">
<tr>
<td width="100%" colspan="4" class="normal"><b><u>Mail order instructions &amp; order form</u></b><br>
If you prefer to use mail order please print and post (or fax) this form to us.<br>
<b><u>Your Details</b></u><br>
<div class="smalltext"><font color="#ff0000">(If you intend to pay by credit or debit cards the name and delivery address
must match the cardholder)</font></div>
<%=grandma(f_tit) & "." & grandma(f_fn) & " " & grandma(f_sn)%><br>
<%=f_hn & "," & f_st%><br>
<%if len(f_dt) > 1 then Response.Write f_dt & "<BR>"%>
<%=f_tn%><br>
<%=f_cn%><br>
<%=f_zip%><br>
<%=countryname%><br>
Phone:<%=f_phone%><br>
Email:<%=f_em%>
<div class="smalltext"><font color="#ff0000">(NB. If any of these details are incorrect please correct them by typing in this
box before printing. If you are NOT paying by card you can specify a different
delivery address)</font></div>
<form>
<div align="center"><textarea rows="7" name="S1" cols="45"></textarea></div></form>
<p><b>Your order [REF:<%=cart_id & "/U" & user_id%>]</b></td>
</tr>
<tr>
<td width="6%" bgcolor="#ffffff" class="smalltext">Qty</td>
<td width="45%" bgcolor="#ffffff" class="smalltext">Item</td>
<td width="6%" align="right" bgcolor="#ffffff" class="smalltext">£ each</td>
<td width="10%" align="right" bgcolor="#ffffff" class="smalltext">Sub total</td>
</tr>
<%sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & ");"
ors.Open sql, ocon, adOpenStatic,  adLockReadonly, adCmdText
dim total, weight, skip, bgcol, theitem, toship
do while not ors.EOF
skip = false
if ors("goods.qty") < 1 and ors("oos") = 1 then skip = true
if ors("status") <> 1 then skip = true
if skip <> true then
        theitem = summary(ors("heading") & "-" & ors("description") & "...",40)
        total = total + ors("orderitems.qty") * ors("price")
        weight = weight + ors("orderitems.qty") * ors("weight")
if bgcol = "#ffffff" then
bgcol = "#f0f0f0"
else
bgcol = "#ffffff"
end if
%>
<tr>
<td width="6%" bgcolor="<%=bgcol%>" class="smalltext"><%=ors("orderitems.qty")%></td>
<td width="45%" bgcolor="<%=bgcol%>" class="smalltext"><%=theitem%></td>
<td width="6%" align="right" bgcolor="<%=bgcol%>" class="smalltext">£<%=fixcurrency(ors("price"))%></td>
<td width="10%" align="right" bgcolor="<%=bgcol%>" class="smalltext">£<%=fixcurrency(ors("orderitems.qty") * ors("price"))%></td>
</tr>
<%
end if
ors.MoveNext
loop
ors.Close
if the_action = "Off line" then
        sql = "SELECT * FROM orders WHERE id = " & cart_id
        ors.Open sql, ocon, adOpenStatic,adLockOptimistic, adCmdText
        if ors.EOF or ors.RecordCount <> 1 then
                'do nothing
                else
                ors("mop") = 2
                ors("status") = 5
                ors.Update
        end if
        ors.Close
end if
ocon.Close
set ors=nothing
set ocon = nothing
toship = amount - total%>
<tr>
<td width="6%" bgcolor="#ffffff" class="smalltext">&nbsp;</td>
<td width="45%" bgcolor="#ffffff" class="smalltext">&nbsp;</td>
<td width="6%" align="right" bgcolor="#ffffff" class="smalltext">Shipping</td>
<td width="10%" align="right" bgcolor="#ffffff" class="smalltext">£<%=fixcurrency(toship)%></td>
</tr>
<tr>
<td width="6%" bgcolor="#ffffff" class="smalltext">&nbsp;</td>
<td width="45%" bgcolor="#ffffff" class="smalltext">&nbsp;</td>
<td width="6%" align="right" bgcolor="#ffffff" class="smalltext">Total</td>
<td width="10%" align="right" bgcolor="#ffffff" class="smalltext">£<%=fixcurrency(amount)%></td>
</tr>
<tr>
<td width="100%" colspan="4" bgcolor="#000000" class="normal"><b><font color="#FFFFFF">Payment
method:</font></b></td>
</tr>
<tr>
<td width="100%" colspan="4" class="normal">[ ]Please charge my VISA/MASTERCARD/DELTA/SWITCH
(delete as appropriate)<br>
Card number _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _&nbsp; Expires _ _ / _ _ _ _&nbsp;
Issue _ _</td>
</tr>
<tr>
<td width="100%" colspan="4" class="normal">[ ]I will send a UK cheque/PO payable to The Queen
of Mischief</td>
</tr>
<tr>
<td width="100%" colspan="4" class="normal">[ ]I have credited your payments account (please
include a copy of the slip)<br>
Midland Bank, The Street, The Moon, Milky Way.<br>
10-80-01 1234567890&nbsp;</td>
</tr>
<tr>
<td width="100%" colspan="4" class="normal">[ ]I have sent a <a href="http://www.moneygram.com" target="_blank">moneygram</a>
to Thomas Cook, The Malls, Basingstoke, England<br>
(Please include a copy of the slip and reference number)</td>
</tr>
<tr>
<td width="100%" colspan="4" class="normal">Please print this form and either mail it to:<br>
<%=b_address%><br>
Or fax it to us on: <%=b_fax%></td>
</tr>
</table>
</center>
</div>
<div class="normal" align="right"><a href="index.asp?cart=<%=cart_id%>&amp;user=<%=user_id%>">[EXIT]</a></div>
<!--#include file="incfooter.asp"-->
