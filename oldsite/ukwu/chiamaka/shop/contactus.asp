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
<td width="100%" class="normal"><b><%=b_name%> <font size="2" face="Verdana, Arial, Helvetica, sans-serif">contact 
                details<br>
                </font></b><font size="2" face="Verdana, Arial, Helvetica, sans-serif"> 
                We welcome visitors within our opening hours but please call us 
                if you are traveling for goods so we can ensure they are available.</font><b><br>
</b>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
                      <td width="50%" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Contact 
                        name</font></b></font></td>
                      <td width="50%" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Phone, 
                        Fax &amp; Email</font></b></font></td>
</tr>
<tr>
<td width="50%" valign="top" class="normal"><b><%=b_cname%></b></td>
<td width="50%" valign="top" class="smalltext"><b>Phone:</b> <%=b_phone%><br>
<b>Fax:</b> <%=b_fax%><br>
<b>Email</b> <a href="mailto:<%=b_email%>">[<%=b_email%>]</a></td>
</tr>
<tr>
                      <td width="50%" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Postal 
                        Address</font> </b></font></td>
                      <td width="50%" bgcolor="#000000" class="normal"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Opening 
                        hours</font></b></font></td>
</tr>
<tr>
<td width="50%" valign="top" class="smalltext"><%=b_address%><br><b>
<a href="http://uk.multimap.com/p/browse.cgi?pc=<%=server.URLEncode(mappostcode)%>&GridE=&GridN=&scale=10000&title=<%=server.URLEncode(b_name)%>&cat=loc" target="_blank">[click here for map]</a></b></td>
<td width="50%">
<div align="center">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Mon</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(1)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Tue</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(2)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Wed</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(3)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Thu</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(4)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Fri</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(5)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Sat</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(6)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Sun</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(0)%></font></td>
                            </tr>
                            <tr> 
                              <td width="50%" class="smalltext"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Bank 
                                holidays</font></b></td>
                              <td width="50%" class="smalltext"><font color="#000080"><%=hours(7)%></font></td>
                            </tr>
                          </table>
</div>
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</center>
</div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->