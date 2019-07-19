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
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<p class="smalltext"><b><u>ORDER SAVING</u></b><br>
Orders can be saved on our system for up to 31 days. You can log-in and pick up
where you left of from the 'My account' option in our store. To save your
current order please provide us with your email address and select a password
(5-10 characters). If you have any concerns regarding how we may use this data
please read our <a href="privacy.asp?cart=<%=cart_id%>&user=<%=user_id%>">privacy
&amp; security policy</a>.</td>
</tr>
<tr>
<td width="100%">
<form method="POST" action="dosave.asp">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="16%" class="smalltext">Name</td>
<td width="17%" class="smalltext"><select size="1" name="title" style="font-family: Verdana; font-size: 8pt">
<option value="Mr">Mr</option>
<option value="Mrs">Mrs</option>
<option value="Miss">Miss</option>
<option value="Ms">Ms</option>
<option selected value="none">\/Select\/</option>
</select></td>
<td width="17%" class="smalltext">Firstname</td>
<td width="17%" class="smalltext"><input type="text" name="firstname" size="20" style="font-family: Verdana; font-size: 8pt"></td>
<td width="17%" class="smalltext">Surname</td>
<td width="17%" class="smalltext"><input type="text" name="surname" size="20" style="font-family: Verdana; font-size: 8pt"></td>
</tr>
<tr>
<td width="33%" colspan="2" class="smalltext">&nbsp;</td>
<td width="17%" class="smalltext">Email address</td>
<td width="19%" class="smalltext"><input type="text" name="email" size="20" style="font-family: Verdana; font-size: 8pt"></td>
<td width="36%" colspan="2" class="smalltext">&nbsp;</td>
</tr>
<tr>
<td width="33%" colspan="2" class="smalltext">&nbsp;</td>
<td width="17%" class="smalltext">Password</td>
<td width="19%" class="smalltext"><input type="password" name="password" size="20" style="font-family: Verdana; font-size: 8pt"></td>
<td width="36%" colspan="2" class="smalltext">&nbsp;</td>
</tr>
</table>
</div>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#CCCCCC">
<tr>
<td width="90%" class="smalltext">From time to time we may send emails to
customers detailing offers and changes to our store. If you would not like to receive
such mailings please tick. You can easily unsubscribe at any stage.</td>
<td width="10%" align="center"><input type="checkbox" name="nomail" value="ON"></td>
</tr>
<tr>
<td width="90%" class="smalltext">&nbsp;</td>
<td width="10%" align="center">&nbsp;</td>
</tr>
<tr>
<td width="90%" class="smalltext">Occasionally we share data with other
carefully selected groups. If you would not like us to do this with your data
please tick here.</td>
<td width="10%" align="center"><input type="checkbox" name="share" value="ON"></td>
</tr>
</table>
</div>
</center>
<div align="right"><input type="submit" value="Save this order" name="B1"></div>
<input type="hidden" name="cart" value="<%=cart_id%>"><input type="hidden" name="user" value="<%=user_id%>">
</form>
<center></td>
</tr>
</table>
</center>
</div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->

