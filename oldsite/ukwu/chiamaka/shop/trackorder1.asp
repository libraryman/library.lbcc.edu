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
dim f_pw, f_em, fail, c_c
f_pw = trim(request("password"))
f_em = trim(request("email"))
' verify form
if len(f_em) < 1 then fail = fail & "Email address missing<br>"
if invalidemail(f_em) = true then fail = fail & "Invalid email address<br>"
if len(f_pw) < 5 or len(f_pw) > 10 then fail = fail & "Bad password<br>"
if len(fail) < 1 then
        ' now get at orders
        ' first get and check user ID
        dim ors, ocon, sql
        Set ors = Server.CreateObject ("ADODB.recordset")
        Set ocon = Server.CreateObject("ADODB.Connection")
        ocon.Open constring
        sql = "SELECT * FROM customers WHERE email LIKE '" & encodestring(f_em) & "' AND password LIKE '" & encodestring(f_pw) & "';"
        ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF and ors.RecordCount = 1 then 
                c_c = ors("country")
                if user_id <> ors("id") then 
                user_id = ors("id")
                session("user") = user_id
                Response.Cookies("ols")("user") = user_id
                Response.Cookies("ols").expires = date + 365
                end if
        else
        fail = fail & "Customer not found. Please check your email address & password<br>"
        end if
ors.Close
end if
%><!--#include file="incbody.asp"--><%

if len(fail) < 1 then
dim ostat
sql = "SELECT * FROM orders WHERE cust =" & user_id & " ORDER BY lastupdated ASC;"
ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF then
        %>
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
        %>&nbsp;<a href="viewcart.asp?cart=<%=ors("id")%>&user=<%=user_id%>&u_country=<%=c_c%>">[resume]</a><%
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
end if
if len(fail) > 1 then%>
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
Your form contains the following errors OR your details do not match</font></p>
<p align="center"><font face="Verdana" size="2"><%=fail%></font><font face="Verdana" size="2"><br>
<br>
Please correct to proceed</font></td>
</tr>
</table>
</center>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="76%">
<tr>
<td width="100%">
<form method="POST" action="trackorder1.asp" id=form1 name=form1>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" colspan="2" class="smalltext"><b>To look up your order status please enter your
email address and password</b></td>
</tr>
<tr>
<td width="43%" class="normal">Email address</td>
<td width="57%" class="normal"><input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1" value="<%=f_em%>"></td>
</tr>
<tr>
<td width="43%" class="normal">Password</td>
<td width="57%" class="normal"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1" value="<%=f_pw%>"></td>
</tr>
<tr>
<td width="43%">&nbsp;</td>
<td width="57%">
<p align="right"><input type="submit" value="Go" name="B1"></td>
</tr>
</table>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
</form>
</td>
</tr>
</table>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%Response.End
end if%>
