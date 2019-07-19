<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.name" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.phoneNumber" default="" type="string">
<cfparam name="form.id" default="" type="string">
<cfparam name="form.status" default="" type="string">
<cfparam name="form.question" default="" type="string">


	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="lbcclibrary@gmail.com" from="#form.email#" subject="Important: Reference Question from #form.name#" type="html">
		<p> <font color="##333333" size="3" face="Arial, Helvetica, sans-serif">You have a reference question.</font></p>  
		<table width="600" border="0" cellspacing="3" cellpadding="3">
			   <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Name:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.name#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Email Address:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.email#</font></td>
			  </tr>			  
			   <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Phone Number:</font></td> 
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.phoneNumber# </font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Student I.D. Number:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.id#</font></td>
			   </tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Status:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.status# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td valign="top" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Question:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.question#</font></td>
			</tr>
					  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>