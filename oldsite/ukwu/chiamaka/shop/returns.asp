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
end function%>
<!--#include file="incbody.asp"-->
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%"><div class="normal"><b><u>Returns policy</u></b></div>
<div class="smalltext">We want you to be delighted with any purchase you make. If for any reason you
are not satisfied with any item purchased you may return it within 10 days for
an exchange or credit note.</div>
&nbsp;<br>
<div class="normal"><b><u>Please note</u></b></div>
<div class="smalltext">Shipping charges are your responsibility unless it is our error or the item is
found to be faulty. Please ensure that any item you return is in its original
packing and includes all documentation and parts.<br>
<br>
Please remember that all items are subject to availability. E&amp;EO.<br>
Prices are correct at time of publish but we reserve the right to amend prices
without prior notice or withdraw items from sale. Nothing detailed here affects
your statutory&nbsp; <br>
rights (which are those of the UK governed by English law)<br>&nbsp;</div>
</td>
</tr>
</table>
</center>
</div>

<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->