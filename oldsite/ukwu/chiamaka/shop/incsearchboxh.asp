<!--sb start-->
<form method="POST" action="search.asp">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="14%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>&nbsp;Browse store by</b></font></td>
<td width="37%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b><select size="1" name="sc">
<%If isarray(Application("productcats")) then
        dim thecats, thiscounter
        thecats = Application("productcats")
        %>
<option selected value="0">Any</option>
<%for thiscounter = 0 to ubound(thecats,2)
%><option value="<%=thecats(0,thiscounter)%>"><%=grandma(thecats(1,thiscounter))%></option>
<%next
else
%><option selected value="0">Specials</option><%end if%>
</select></b></font></td>
<td width="9%" bgcolor="#000000" class="smalltext"><font color="#FFFFFF"><b>Search for</b></font></td>
<td width="28%" bgcolor="#000000" class="smalltext"><input type="text" name="ss" size="28"></td>
<td width="12%" bgcolor="#000000">
<input type="image" value="submit" src="1ms/butsearch.gif" width="70" height="21" border="0" name="Click to search Netscape users!" alt="Click to search!" align="right">
</td>
</tr>
</table>
</div>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
</form>
<!--sb end-->