<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.campus" default="" type="string">
<cfparam name="form.available" default="" type="string">
<cfparam name="form.author" default="" type="string">
<cfparam name="form.title" default="" type="string">
<cfparam name="form.call" default="" type="string">
<cfparam name="form.edition" default="" type="string">
<cfparam name="form.name" default="" type="string">
<cfparam name="form.id" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.phone" default="" type="string">
<cfparam name="form.department" default="" type="string">
<cfparam name="form.checkbox1" default="" type="string">
<cfparam name="form.checkbox2" default="" type="string">
<cfparam name="form.checkbox3" default="" type="string">
   
<cfif #form.campus# eq "PCC">
	<cfset ToEmail = "pcclibrary@lbcc.edu">
<cfelseif #form.campus# eq "LAC">
	<cfset ToEmail = "lbcclibrary@gmail.com">	
</cfif>

	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="#ToEmail#" from="#form.emaildefault#" subject="Request Book Transfer from #form.name#" type="html">
		<p> <font color="##333333" size="4" face="Arial, Helvetica, sans-serif"> You have a request to transfer a book from one campus to the other. </font></p>  
		<table width="600" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Current item location:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.campus#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Current item status:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.available#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Author/Editor:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.author#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Title:</font></td>
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.title#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Call Number:</font></td> 
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.call# </font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Edition or Comments:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.edition#</font></td>
			   </tr>			   
			   <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Requestor's Name:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.name# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I.D. Number:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.id# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Email:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.email# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Phone:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.phone# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Department:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.department# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I am currently a student:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox1# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I am currently a faculty member:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox2# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="250"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I am currently a staff member:</font></td>  
					<td align="left" width="350"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox3# </font></td>
			</tr>				  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>