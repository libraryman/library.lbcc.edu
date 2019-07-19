<!--body start calls head-->
<!--#include file="inchead.asp"-->
<%function realdate(passed)
if not isdate(passed) then passed = date
realdate = weekdayname(weekday(passed)) & ","
realdate = realdate  & day(passed)
select case(day(passed))
case 1,21,31
realdate = realdate  & "st "
case 2,22
realdate = realdate  & "nd "
case 3,23
realdate = realdate  & "rd "
case else
realdate = realdate  & "th "
end select
realdate = realdate  & monthname(month(passed))
realdate = realdate  & " " & year(passed)
end function%>
<body link="#000000" vlink="#000000" alink="#000000" topmargin="0" leftmargin="0"><div align="center"> <center> <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td width="150"><img border="0" src="1ms/logo3.gif"></td>
<td width="500" bgcolor="#FFFFFF"><img border="0" src="1ms/banner2.gif"></td>
<td width="150" bgcolor="#ffffff" valign="top">&nbsp;</td>
</tr>
<tr>
<td width="150">&nbsp;</td>
<td width="500" bgcolor="#FFFFFF"><font color="#000080"><div align = "left" class = "smalltext"><%=realdate(date)%>&nbsp;<b>Buziness factor:</b>&nbsp;<%=Application("customer_count")%>&nbsp;active users&nbsp;<b>Hits:</b>&nbsp;<%=Application("counted")%></div></font></td>
<td width="150" bgcolor="#ffffff" valign="top">&nbsp;</td>
</tr>
<tr>
<td width="100%" colspan="3">
<!--#include file="incsearchboxh.asp"-->
</td>
</tr>
<tr>
<td width="150" valign="top">
<div align="center">
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="50%">
<a href="saveorder.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b1.src='1ms/bsave1.gif';" onMouseOut="document.b1.src='1ms/bsave0.gif';"><img border="0" src="1ms/bsave0.gif" name="b1"  alt="Save your current order"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">
<a href="trackorder.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b2.src='1ms/btrack1.gif';" onMouseOut="document.b2.src='1ms/btrack0.gif';"><img border="0" src="1ms/btrack0.gif" name="b2"  alt="Track your order or lookup an old order"></a></td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">
<a href="accounts.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b3.src='1ms/bmyac1.gif';" onMouseOut="document.b3.src='1ms/bmyac0.gif';"><img border="0" src="1ms/bmyac0.gif" name="b3"  alt="Check your personal details"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">
<a href="viewcart.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b4.src='1ms/bvieworder1.gif';" onMouseOut="document.b4.src='1ms/bvieworder0.gif';"><img border="0" src="1ms/bvieworder0.gif" name="b4"  alt="View your current order"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">
<a href="checkout.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b5.src='1ms/bcheckout1.gif';" onMouseOut="document.b5.src='1ms/bcheckout0.gif';"><img border="0" src="1ms/bcheckout0.gif" name="b5"  alt="Go to the checkout"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">
<a href="contactus.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b6.src='1ms/bcontact1.gif';" onMouseOut="document.b6.src='1ms/bcontact0.gif';"><img border="0" src="1ms/bcontact0.gif" name="b6"  alt="Contact us"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
<tr>
<td width="50%">


<a href="returns.asp?cart=<%=cart_id%>&user=<%=user_id%>" target="_self" onMouseOver="document.b7.src='1ms/breturns1.gif';" onMouseOut="document.b7.src='1ms/breturns0.gif';"><img border="0" src="1ms/breturns0.gif" name="b7"  alt="Returns and customer problems"></a>
</td>
<td width="50%">&nbsp;</td>
</tr>
</table>
</div>
</td>
<td width="100%" colspan="2" valign="top">
<!--body end-->