<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.name" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.text1" default="" type="string">
<cfparam name="form.text2" default="" type="string">
<cfparam name="form.text3" default="" type="string">
<cfparam name="form.text4" default="" type="string">
<cfparam name="form.text5" default="" type="string">
<cfparam name="form.text6" default="" type="string">
<cfparam name="form.text7" default="" type="string">
<cfparam name="form.text8" default="" type="string">
<cfparam name="form.text9" default="" type="string">
<cfparam name="form.text10" default="" type="string">
<cfparam name="form.text11" default="" type="string">
<cfparam name="form.text12" default="" type="string">
<cfparam name="form.text13" default="" type="string">
<cfparam name="form.text14" default="" type="string">
<cfparam name="form.text15" default="" type="string">
<cfparam name="form.text16" default="" type="string">
<cfparam name="form.text17" default="" type="string">
<cfparam name="form.text18" default="" type="string">
<cfparam name="form.text19" default="" type="string">

	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="mwhite@lbcc.edu" from="mwhite@lbcc.edu" subject="Lib 1, Mod 2, Assign 2" type="html">
		<p> <font color="##333333" size="3" face="Arial, Helvetica, sans-serif"><strong>A student has submitted the following quiz.</strong></font></p>  
		<table width="500" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Name:&nbsp;#form.name#</strong></font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Email address:&nbsp;#form.email#</strong></font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 1:&nbsp;#form.text1#</strong></font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 2:&nbsp;#form.text2#</strong></font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 3:&nbsp;#form.text3#</strong></font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 4:&nbsp;#form.text4#</strong></font></td>
			   </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 5:&nbsp;#form.text5#</strong></font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 6:&nbsp;#form.text6#</strong></font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 7:&nbsp;#form.text7#</strong></font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 8:&nbsp;#form.text8#</strong></font></td>
			    </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 9:&nbsp;#form.text9#</strong></font></td>
			     </tr>
			     <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 10:&nbsp;#form.text10#</strong></font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 11:&nbsp;#form.text11#</strong></font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 12:&nbsp;#form.text12#</strong></font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 13:&nbsp;#form.text13#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 14:&nbsp;#form.text14#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 15:&nbsp;#form.text15#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 16:&nbsp;#form.text16#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 17:&nbsp;#form.text17#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 18:&nbsp;#form.text18#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif"><strong>Question 19:&nbsp;#form.text19#</strong></font></td>
			</tr>
			
			  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="../thankyou1.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>