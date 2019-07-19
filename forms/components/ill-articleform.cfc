<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.author" default="" type="string">
<cfparam name="form.title" default="" type="string">
<cfparam name="form.journal" default="" type="string">
<cfparam name="form.volume" default="" type="string">
<cfparam name="form.issue" default="" type="string">
<cfparam name="form.year" default="" type="string">
<cfparam name="form.issn" default="" type="string">
<cfparam name="form.page" default="" type="string">
<cfparam name="form.comments" default="" type="string">
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
	   	<cfmail to="ill@lbcc.edu" from="#form.email#" subject="Request for Article ILL from #form.name#" type="html">
		<p> <font color="##333333" size="3" face="Arial, Helvetica, sans-serif"><strong>You have an ILL request for an article.</strong></font></p>  
		<table width="500" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Author/Editor:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.author#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Title of Article:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.title#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Title of Journal/Magazine:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.journal#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Volume:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.volume#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Issue Number:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.issue#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Year:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.year#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">ISSN:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.issn#</font></td>
			  </tr>
			  <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Page Number:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.page#</font></td>
			 </tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Additional Comments:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.comments#</font></td>
			 </tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Cancel if not filled by:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.cancel#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Name:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.name#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I.D. Number:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.id#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Email Address:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.email#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Phone Number:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.phone#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">Department:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.department#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a student:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox1#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a faculty member:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox2#</strong></font></td>
			</tr>
			<tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I am currently a staff member:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox3#</strong></font></td>
			</tr>
			 <tr bgcolor="##ffffff">
					<td align="left" width="175"><font color="##000000" size="2" face="Arial, Helvetica, sans-serif">I agree to comply with the copyright law:</font></td>
					<td align="left" width="325"><font color="##820204" size="2" face="Arial, Helvetica, sans-serif">#form.checkbox4#</font></td>
			</tr>					  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>