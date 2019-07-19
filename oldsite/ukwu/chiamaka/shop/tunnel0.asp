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
function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
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
dim f_pw, f_em, fail, c_c, u_country
dim skippit, amount
amount = request("amount")
skippit = makeitanumber(request("recover"))
f_pw = trim(request("password"))
f_em = trim(request("email"))
%><!--#include file="incbody.asp"--><%
if skippit = 1 then
        dim ctitle, cfname, csname, chn, cstreet, cdistrict, ctown, ccounty, czip, ccountryname
        dim cphone, cpassword, cshare, cmail, cemail, cpwd
        ' verify form
        if len(f_em) < 1 then fail = fail & "Email address missing<br>"
        if invalidemail(f_em) = true then fail = fail & "Invalid email address<br>"
        if len(f_pw) < 5 or len(f_pw) > 10 then fail = fail & "Bad password<br>"
        if len(fail) < 1 then
                ' first get and check user ID
                dim ors, ocon, sql
                Set ors = Server.CreateObject ("ADODB.recordset")
                Set ocon = Server.CreateObject("ADODB.Connection")
                ocon.Open constring
                sql = "SELECT * FROM customers INNER JOIN countries ON countries.id = customers.country WHERE (email LIKE '" & encodestring(f_em) & "' AND password LIKE '" & encodestring(f_pw) & "');"
                ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
                if not ors.EOF and ors.RecordCount = 1 then 
                        c_c = ors("country")
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
                        cpwd = decodestring(ors("password"))
                else
                        fail = fail & "Customer not found. Please check your email address & password<br>"
                end if
        ors.Close
        ocon.Close
        set ors=nothing
        set ocon = nothing
end if
if len(fail) < 1 then
                %><div class="normal">&nbsp;<br><b><u>Your details</u></b><br>
                Please check and correct your details.<br>If these details are not
                yours please click <a href="tunnel0.asp?recover=0&amount=<%=server.URLEncode(amount)%>">[here]</a> to get a new blank form.</div>
                <table border="0" cellpadding="0" cellspacing="0" width="65%">
                <tr>
                <td width="100%">
                <form method="POST" action="tunnel1.asp">
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
                <%dim b_counter, l_c
                l_c = application("countries")
                If NOT isarray(l_c) then%>
                <b><%=ccountryname%></b>
                <%else%>
                <select size="1" name="new_country" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"><%
                l_c = application("countries")
                for b_counter = 0 to ubound(l_c,2)%>
                <option <%if u_country = l_c(0,b_counter) then%>selected <%end if%>value="<%=l_c(0,b_counter)%>"><%=l_c(2,b_counter)%></option>
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
                <td width="50%" class="smalltext"><b>Select a password<br></b>5-10 characters<br>&nbsp;</td>
                <td width="50%"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cpwd)%>"></td>
                </tr>
                
                <tr>
                <td width="50%" class="smalltext"><b>Confirm password<br>&nbsp;</b></td>
                <td width="50%"><input type="password" name="cfmpassword" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cpwd)%>"></td>
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
                <input type="hidden" name="level" value="2">
                <input type="hidden" name="amount" value="<%=amount%>">
                </tr>
                </table>
                </form>
                </td>
                </tr>
                </table>
                <!--#include file="inccards.asp"-->
                <!--#include file="incfooter.asp"-->
                <%Response.End
end if
end if
if len(fail) > 1 then
                %>
                <div class="normal"><b>Checkout stage 2. Your details</b><BR>&nbsp;</div>
                <table border="0" cellpadding="0" cellspacing="0" width="75%" bgcolor="#cfcfcf">
                <tr>
                <td width="100%">
                <form method="POST" action="tunnel0.asp" id=form2 name=form2>
                <div class="smalltext" align="center">&nbsp;<br>If you have ordered before you can recall your details<br>now by entering your
                email address and password<br>
                <font color="#FF0000"><b>Error!</b><br><%=fail%></font><br>&nbsp;</div>
                <div align="center">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" >
                <tr>
                <td width="25%" align="center" class="smalltext"><b>Email</b></td>
                <td width="25%" align="center"><input type="text" name="email" size="10" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
                <td width="25%" align="center" class="smalltext"><b>Password</b></td>
                <td width="25%" align="center"><input type="password" name="password" size="10" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
                </tr>
                <tr>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="right"><input type="submit" value="Find" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;</td>
                </tr>
                </table>
                </div>
                <input type="hidden" name="cart" value="<%=cart_id%>">
                <input type="hidden" name="recover" value="1">
                <input type="hidden" name="user" value="<%=user_id%>">
                <input type="hidden" name="amount" value="<%=amount%>">
                </form>
                </td>
                </tr>
                </table>
<%else%>
                <div class="normal"><b>Checkout stage 2. Your details</b><BR>&nbsp;</div>
                <table border="0" cellpadding="0" cellspacing="0" width="75%" bgcolor="#cfcfcf">
                <tr>
                <td width="100%">
                <form method="POST" action="tunnel0.asp" id=form2 name=form2>
                <div class="smalltext" align="center">&nbsp;<br>If you have ordered before you can recall your details<br>now by entering your
                email address and password<br>&nbsp;</div>
                <div align="center">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" >
                <tr>
                <td width="25%" align="center" class="smalltext"><b>Email</b></td>
                <td width="25%" align="center"><input type="text" name="email" size="10" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
                <td width="25%" align="center" class="smalltext"><b>Password</b></td>
                <td width="25%" align="center"><input type="password" name="password" size="10" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
                </tr>
                <tr>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="center"><br>&nbsp;</td>
                <td width="25%" align="right"><input type="submit" value="Find" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;</td>
                </tr>
                </table>
                </div>
                <input type="hidden" name="cart" value="<%=cart_id%>">
                <input type="hidden" name="recover" value="1">
                <input type="hidden" name="user" value="<%=user_id%>">
                <input type="hidden" name="amount" value="<%=amount%>">
                </form>
                </td>
                </tr>
                </table>
<%end if%>
                <div class="normal">&nbsp;<br><b><u>Please enter your details</u></b></div>
                <table border="0" cellpadding="0" cellspacing="0" width="65%">
                <tr>
                <td width="100%">
                <form method="POST" action="tunnel1.asp" id=form1 name=form1>
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
                <%if u_country < 1 then u_country = 252
                dim c_counter, l_c1
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
                <td width="50%" class="smalltext"><b>Select a password<br></b>5-10 characters<br>&nbsp;</td>
                <td width="50%"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cpwd)%>"></td>
                </tr>
                
                <tr>
                <td width="50%" class="smalltext"><b>Confirm password<br>&nbsp;</b></td>
                <td width="50%"><input type="password" name="cfmpassword" size="20" style="font-family: Verdana; font-size: 8pt" value="<%=decodestring(cpwd)%>"></td>
                </tr>
                
                <tr>
                <td width="50%" class="smalltext"><b>dont send me emails</b></td>
                <td width="50%"><input type="checkbox" name="mail" value="ON"></td>
                </tr>
                <tr>
                <td width="50%" class="smalltext"><b>dont share my data</b></td>
                <td width="50%"><input type="checkbox" name="share" value="ON"></td>
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
                <!--#include file="inccards.asp"-->
                <!--#include file="incfooter.asp"-->