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
%>
<!--#include file="incbody.asp"-->
<table border="0" cellpadding="0" cellspacing="0" width="75%">
<tr>
<td width="100%">
<form method="POST" action="trackorder1.asp">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" colspan="2" class="smalltext"><b>To look up your order status please enter your
email address and password</b></td>
</tr>
<tr>
<td width="43%"class="normal">Email address</td>
<td width="57%"class="normal"><input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
</tr>
<tr>
<td width="43%"class="normal">Password</td>
<td width="57%"class="normal"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
</tr>
<tr>
<td width="43%"></td>
<td width="57%">
<div align="right"><input type="submit" value="Go" name="B1"></div></td>
</tr>
</table>
<input type="hidden" name="cart" value="<%=cart_id%>"><input type="hidden" name="user" value="<%=user_id%>">
</form>
</td>
</tr>
</table>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
