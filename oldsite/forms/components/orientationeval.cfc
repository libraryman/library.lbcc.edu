<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.name" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.course" default="" type="string">
<cfparam name="form.date" default="" type="string">
<cfparam name="form.librarian" default="" type="string">
<cfparam name="form.rating" default="" type="string">
<cfparam name="form.comments" default="" type="string">
<cfparam name="form.topic" default="" type="string">
<cfparam name="form.coverage" default="" type="string">
<cfparam name="form.comments1" default="" type="string">
<cfparam name="form.directions" default="" type="string">
<cfparam name="form.comments2" default="" type="string">
<cfparam name="form.appropriate" default="" type="string">
<cfparam name="form.comments3" default="" type="string">
<cfparam name="form.helpful" default="" type="string">
<cfparam name="form.comments4" default="" type="string">
<cfparam name="form.improvement" default="" type="string">
<cfparam name="form.comments5" default="" type="string">
<cfparam name="form.comments6" default="" type="string">
<cfparam name="form.comments7" default="" type="string">
<cfparam name="form.comments8" default="" type="string">
<cfparam name="form.comments9" default="" type="string">
<cfparam name="form.campus" default="" type="string">

	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="c3williams@lbcc.edu;LACorientation@lbcc.edu" from="LACorientation@lbcc.edu" subject="Evaluation of library orientation from #form.name#" type="html">
		<p> <font color="##000000" size="3" face="Arial, Helvetica, sans-serif">You have an evaluation of a library orientation.</font></p>  
		<table width="500" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Evaluator's Name:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.name#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Email address:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.email#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Course Title Number:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.course#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Orientation Date; Time:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.date#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Librarian's Name:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.librarian#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Rating of overall presentation:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.rating#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Specific Topic:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.topic#</font></td>
			    </tr>
			    <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">If you had a specific topic, rating for coverage of it:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.coverage#</font></td>
			     </tr>
			     <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments1#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.directions#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Presentation appropriate to needs of the class:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments2#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments2#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Appropriate for student needs:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.appropriate#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments3#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Students felt it was helpful:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.helpful#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif"> Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments4#</font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Indication of improvement:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.improvement#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Comments, if any:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments5#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Favorite part:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments6#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">What would you add to the presentation:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments7#</font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Take out of presentation:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments8#</font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Suggestions for improvement:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments9#</font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left" width="200"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Submit to LAC or PCC Library:</font></td>
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.campus#</font></td>
			</tr>
		
			  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>