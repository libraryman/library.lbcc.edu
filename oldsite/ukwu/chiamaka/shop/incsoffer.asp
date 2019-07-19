<!--special offer box generator start-->
<%'special offer code box
if last_special > 1 then
%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="59%" colspan="2" bgcolor="#000000">
<p align="center"><font color="#FFFFFF" face="Verdana" size="2"><b>Special offer</b></font></td>
<td width="41%" bgcolor="#000000">
<p align="center"><b><font face="Verdana" size="2" color="#FFFFFF">In town? Visit us!</font></b></td>
</tr>
<tr>
<td width="24%"><img border="0" src="prodpix/<%=so_pic%>" width="200" height = "150" alt="<%=so_heading%>"></td>
<td width="35%">
<div align="center" class="smalltext"><b><u><%=so_heading%></u></b><br>
<%=so_desc%><br>
£<%=so_price%></div></td>
<td width="41%">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Mon</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(1)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Tue</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(2)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Wed</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(3)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Thu</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(4)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Fri</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(5)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Sat</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(6)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Sun</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(0)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Bank
Holidays</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(7)%></span></font></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#000000"><b><font face="Verdana" size="1" color="#FFFFFF">Our
Address</font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000080"><%=b_address%>
</font><b><font face="Verdana" size="1" color="#FFFFFF">
<a href="http://uk.multimap.com/p/browse.cgi?pc=<%=server.URLEncode(mappostcode)%>&GridE=&GridN=&scale=10000&title=<%=server.URLEncode(b_name)%>&cat=loc" target="_blank">click for map</a></font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#000000"><b><font face="Verdana" size="1" color="#FFFFFF">Phone,
Fax &amp; Email</font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000080"><b>Phone:<%=b_phone%><br>
Fax:<%=b_fax%><br>
<a href="mailto:<%=b_email%>">
<%=b_email%></a></b></font></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td width="60%" colspan="2">
<a href="additem.asp?cart=<%=cart_id%>&user=<%=user_id%>&item=<%=so_itemid%>"><img border="0" src="1ms/buyit.gif" align="right" alt="Add <%=so_heading%> to your order"></a>
</td>
<td width="40%"></td>
</tr>
</table>
</center>
</div>
<%else%>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="4" width="100%">
<tr>
<td width="59%" colspan="2" bgcolor="#000000">
<p align="center"><font color="#FFFFFF" face="Verdana" size="2"><b>Special services</b></font></td>
<td width="41%" bgcolor="#000000">
<p align="center"><b><font face="Verdana" size="2" color="#FFFFFF">In town? Visit us!</font></b></td>
</tr>
<tr>
<td width="24%"><img border="0" src="1ms/shop.jpg" width="200" height = "150" alt="This is just our car park...."></td>
<td width="35%">
<div align="left" class="smalltext"><b><u><%=b_name%></u></b><br>
            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">We've 
            just introduced some 'special' gift services for those looking for 
            an 'alternative' present or gift! Remember, it's the thought that 
            counts and our special gifts can show that person exactly what your 
            thoughts are! From recorded delivery dog turds to you've one a (scrap) 
            car, look outside, you'll find just the thing here!</font></div>
        </td>
<td width="41%">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Mon</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(1)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Tue</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(2)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Wed</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(3)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Thu</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(4)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Fri</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(5)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Sat</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(6)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Sun</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(0)%></span></font></td>
</tr>
<tr>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><b><span style="letter-spacing: -1pt">Bank
Holidays</span></b></font></td>
<td width="50%" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000000"><span style="letter-spacing: -1pt"><%=hours(7)%></span></font></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#000000"><b><font face="Verdana" size="1" color="#FFFFFF">Our
Address</font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000080"><%=b_address%>
</font><b><font face="Verdana" size="1" color="#FFFFFF"><a href="http://uk.multimap.com/p/browse.cgi?pc=<%=server.URLEncode(mappostcode)%>&GridE=&GridN=&scale=10000&title=<%=server.URLEncode(b_name)%>&cat=loc" target="_blank">click for map</a></font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#000000"><b><font face="Verdana" size="1" color="#FFFFFF">Phone,
Fax &amp; Email</font></b></td>
</tr>
<tr>
<td width="22%" colspan="2" bgcolor="#FFFFFF"><font face="Verdana" size="1" color="#000080"><b>Phone:<%=b_phone%><br>
Fax:<%=b_fax%><br>
<a href="mailto:<%=b_email%>">
<%=b_email%></a></b></font></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td width="60%" colspan="2">&nbsp;
</td>
<td width="40%"></td>
</tr>
</table>
</center>
</div>
<%end if%>
<!--special offer box generator end-->