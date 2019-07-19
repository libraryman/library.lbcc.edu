<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.author" default="" type="string">
<cfparam name="form.title" default="" type="string">
<cfparam name="form.place" default="" type="string">
<cfparam name="form.publisher" default="" type="string">
<cfparam name="form.date" default="" type="string">
<cfparam name="form.edition" default="" type="string">
<cfparam name="form.isbn" default="" type="string">
<cfparam name="form.notes" default="" type="string">
<cfparam name="form.cancel" default="" type="string">
<cfparam name="form.name" default="" type="string">
<cfparam name="form.id" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.phone" default="" type="string">
<cfparam name="form.department" default="" type="string">
<cfparam name="form.checkbox1" default="" type="string">
<cfparam name="form.checkbox2" default="" type="string">
<cfparam name="form.checkbox3" default="" type="string">
<cfparam name="form.checkbox4" default="" type="string">


	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="ill@lbcc.edu" from="#form.email#" subject="Request for Book ILL from #form.name#" type="html">
		<p> <font color="##333333" size="3" face="Arial, Helvetica, sans-serif"> You have an ILL request for a book. </font></p>  
		<table width="500" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Author/Editor:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.author#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Title:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.title#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Place of Publication:</font></td> 
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.place# </font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Publisher:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.publisher#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Date of Publication:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.date# </font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Edition:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.edition# </font></td>
			    </tr>
			    <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">ISBN:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.isbn# </font></td>
			     </tr>
			     <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Notes/Cited in:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.notes# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Cancel if not filled by:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.cancel# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Requestor's Name:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.name# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I.D. Number:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.id# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Email:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.email# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Phone:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.phone# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Department:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.department# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a student:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox1# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a faculty member:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox2# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a staff member:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox3# </font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I agree to comply with the copyright law:</font></td>  
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox4# </font></td>
			</tr>				  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>