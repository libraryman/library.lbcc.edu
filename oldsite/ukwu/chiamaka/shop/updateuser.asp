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
'get hideous form values!
Dim f_oldpass, f_newpass, f_tit, f_fn, f_sn, f_hn, f_st, f_dt, f_tn, f_ct, f_cn, f_em, f_zip, f_phone, f_share, f_mail
dim fail
' gather data
f_oldpass = request("curpwd")
f_newpass = request("newpwd")
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
' first check that the password will allow
%><!--#include file="incbody.asp"--><%
        ' now get at orders
        ' first get and check user ID
        dim ors, ocon, sql
        Set ors = Server.CreateObject ("ADODB.recordset")
        Set ocon = Server.CreateObject("ADODB.Connection")
        ocon.Open constring
        sql = "SELECT * FROM customers WHERE id = " & user_id & " AND password LIKE '" & encodestring(f_oldpass) & "';"
        ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF then
        if ors.RecordCount <> 1 then fail = fail & "User not found. Check your password<br>"
        else
        fail = fail & "User not found. Check your password<br>"
        end if
        ors.Close
        if len(fail) > 1 then 
        ocon.Close
        set ors=nothing
        set ocon = nothing
        call blowout(fail)
        end if

' now verify
if len(f_oldpass) < 5 or len(f_oldpass) > 10 then fail = fail & "Bad password<br>"
if len(f_newpass) > 1 then
        if len(f_newpass) < 5 or len(f_newpass) > 10 then fail = fail & "New password must be 5-10 char.<br>"
        if f_newpass <> request("cfm") then fail = fail & "New password does not match confirm box<br>"
end if
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
'

if len(fail) > 1 then
%><div class="normal">&nbsp;<br><b><u>The following errors occurred in your data</u></b><br>
<%=fail%><br>&nbsp;<br>Please correct them</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<form method="POST" action="updateuser.asp" id=form2 name=form2>
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
<td width="50%" class="smalltext"><b>dont send me emails</b></td>
<td width="50%"><input type="checkbox" name="mail" value="ON" <%if f_mail = "ON" then%>checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>dont share my data</b></td>
<td width="50%"><input type="checkbox" name="share" value="ON" <%if f_share = "ON" then%>checked<%end if%>></td>
</tr>
<tr>
<td width="50%" colspan="2" class="smalltext" align="center"><font color="#ff0000"><b><u>To update your details</u></b></font><br>Please enter your password<br>(You can now also change your password)<br>&nbsp;</td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Current Password</b></td>
<td width="50%"><input type="password" name="curpwd" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>New Password</b></td>
<td width="50%"><input type="password" name="newpwd" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Confirm new password</b></td>
<td width="50%"><input type="password" name="cfm" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><input type="reset" value="Reset" name="B2"></td>
<td width="50%" class="smalltext">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Update" name="B1"></td>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
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
dim this_message
sql = "SELECT * FROM customers WHERE id = " & user_id & ";"
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
        if ors("email") <> encodestring(f_em) then ors("email") = encodestring(f_em)
        if len(f_phone) > 1 then ors("phone") = encodestring(f_phone)
        ors("started") = now
        if len(f_newpass) > 4 and len(f_newpass) < 11 then ors("password") = encodestring(f_newpass)
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
dim ctitle, cfname, csname, chn, cstreet, cdistrict, ctown, ccounty, czip, ccountryname
dim cphone, cpassword, cshare, cmail, cemail, u_country
sql = "SELECT * FROM customers INNER JOIN countries ON countries.id = customers.country WHERE (customers.id =" & user_id & ");"
ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF and ors.RecordCount = 1 then 
                u_country = ors("country")
                ctitle = ors("title")
                cfname = decodestring(ors("firstname"))
                csname = decodestring(ors("lastname"))
                chn = decodestring(ors("hn"))
                cstreet = decodestring(ors("street"))
                cdistrict = decodestring(ors("district"))
                ctown = decodestring(ors("town"))
                ccounty = decodestring(ors("county"))
                czip = decodestring(ors("zip"))
                cemail= decodestring(ors("email"))
                cphone = decodestring(ors("phone"))
                cpassword = decodestring(ors("password"))
                cmail = ors("mail")
                cshare = ors("share")
                cfname = decodestring(ors("firstname"))
                ccountryname = ors("name")
                u_country = ors("country")
        else
        fail = fail & "Customer not found. Please check your email address & password<br>"
        end if
ors.Close
%><div class="normal">&nbsp;<br><b><u>Your data (<%=this_message%>)</u></b></div>
<table border="0" cellpadding="0" cellspacing="0" width="65%">
<tr>
<td width="100%">
<form method="POST" action="updateuser.asp" id=form3 name=form3>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" class="smalltext"><b>Title</b></td>
<td width="50%"><select size="1" name="title" style="font-family: Verdana; font-size: 8pt">
<option <%if decodestring(ctitle) = "Mr" then%>selected <%end if%>value="Mr">Mr</option>
<option <%if decodestring(ctitle) = "Mrs" then%>selected <%end if%>value="Mrs">Mrs</option>
<option <%if decodestring(ctitle) = "Miss" then%>selected <%end if%>value="Miss">Miss</option>
<option <%if decodestring(ctitle) = "Ms" then%>selected <%end if%>value="Ms">Ms</option>
</select></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>First name</b></td>
<td width="50%"><input type="text" name="firstname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(cfname))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Surname</b></td>
<td width="50%"><input type="text" name="surname" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(csname))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>House name/number</b></td>
<td width="50%"><input type="text" name="hn" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(chn))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Street</b></td>
<td width="50%"><input type="text" name="street" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(cstreet))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Village/district</b></td>
<td width="50%"><input type="text" name="district" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(cdistrict))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Town/city</b></td>
<td width="50%"><input type="text" name="town" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(ctown))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>County</b></td>
<td width="50%"><input type="text" name="county" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=grandma(decodestring(ccounty))%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Country</b></td>
<td width="50%" class="smalltext">

        <%dim c_counter, l_c1
        l_c1 = application("countries")
        If NOT isarray(l_c1) then%>
        <b><%=ccountryname%></b>
        <%else%>
        <select size="1" name="new_country" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"><%
        l_c1 = application("countries")
        for c_counter = 0 to ubound(l_c1,2)%>
        <option <%if u_country = l_c1(0,c_counter) then%>selected <%end if%>value="<%=l_c1(0,c_counter)%>"><%=l_c1(2,c_counter)%></option>
        <%next%>
        </select>
        <%end if%>

</td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Postal code/zip code</b></td>
<td width="50%"><input type="text" name="zip" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(czip)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Email</b></td>
<td width="50%"><input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cemail)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Phone</b></td>
<td width="50%"><input type="text" name="phone" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cphone)%>"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>dont send me emails</b></td>
<td width="50%"><input type="checkbox" name="mail" value="ON" <%if cmail = false then%>checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>dont share my data</b></td>
<td width="50%"><input type="checkbox" name="share" value="ON" <%if cshare = false then%>checked<%end if%>></td>
</tr>
<tr>
<td width="50%" colspan="2" class="smalltext" align="center"><font color="#ff0000"><b><u>To update your details</u></b></font><br>Please enter your password<br>(You can now also change your password)<br>&nbsp;</td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Current Password</b></td>
<td width="50%"><input type="password" name="curpwd" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>New Password</b></td>
<td width="50%"><input type="password" name="newpwd" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><b>Confirm new password</b></td>
<td width="50%"><input type="password" name="cfm" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="50%" class="smalltext"><input type="reset" value="Reset" name="B2"></td>
<td width="50%" class="smalltext">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Update" name="B1"></td>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
</tr>
</table>
</form>
</td>
</tr>
</table>
<%if len(fail) > 1 then 
        ocon.Close
        set ors=nothing
        set ocon = nothing
        call blowout(fail)
        end if
dim ostat
sql = "SELECT * FROM orders WHERE cust =" & user_id & " ORDER BY lastupdated ASC;"
ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF then%>
        <div class ="normal"><b>Order history</b></div>
        <div align="center">
        <center>
        <table border="0" cellspacing="1" width="100%" bgcolor="#C0C0C0" cellpadding="0">
        <tr>
        <td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Order date</b></font></td>
        <td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Status</b></font></td>
        <td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Last updated</b></font></td>
        <td width="20%" bgcolor="#000000" class="smalltext">&nbsp;</td>
        <td width="20%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>click to view</b></font></td>
        </tr>
        <%
        do while not ors.EOF
        select case(ors("status"))
        case 1
        ostat = "Shopping/Dropped"
        case 2
        ostat = "Saved"
        case 3
        ostat = "Waiting action"
        case 4
        ostat = "Awaiting stock"
        case 5
        ostat = "Awaiting payment"
        case 6
        ostat = "Card declined"
        case 7
        ostat = "Cheque bounced"
        case 8
        ostat = "Order shipped"
        case 9
        ostat = "Cancelled"
        case else
        ostat = "Unknown"
        end select
        %><tr>
        <td width="20%" class="smalltext"><%=ors("date")%></td>
        <td width="20%" class="smalltext"><%
        Response.Write ostat
        if ostat = "Saved" then
        %>&nbsp;<a href="viewcart.asp?cart=<%=ors("id")%>&user=<%=user_id%>&u_country=<%=u_country%>">[resume]</a><%
        end if%></td>
        <td width="20%" class="smalltext"><%=ors("lastupdated")%></td>
        <td width="20%" class="smalltext">&nbsp;</td>
        <td width="20%" class="smalltext"><a href="vieworder.asp?cart=<%=cart_id%>&user=<%=user_id%>&oid=<%=ors("id")%>">[view]</a></td>
        </tr>
        <%ors.MoveNext
        loop
        %></table>
        </center>
        </div><%
        else
        %>
        <p>No orders found belonging to you.<br>
        <br>
        Orders older than 30 days are deleted from the system</p>
        <p><a href="index.asp?cart=<%=cart_id%>&user=<%=user_id%>">[continue]</a></p>
        <%
        end if%>
        <!--#include file="inccards.asp"-->
        <!--#include file="incfooter.asp"-->
<%
ors.Close
ocon.Close
set ors=nothing
set ocon = nothing
Response.end
sub blowout(fail)
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
<p align="center"><font face="Verdana" size="2">Errors!<br>
The following error occurred:</font></p>
<p align="center"><font face="Verdana" size="2"><%=fail%></font><font face="Verdana" size="2"><br>
<br>
use back on your browser</font></td>
</tr>
</table>
</center>
</div>
<!--#include file="incfooter.asp"-->
<%Response.End
end sub%>
