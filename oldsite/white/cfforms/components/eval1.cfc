<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.eval1" default="" type="string">
<cfparam name="form.eval2" default="" type="string">
<cfparam name="form.eval3" default="" type="string">
<cfparam name="form.eval4" default="" type="string">
<cfparam name="form.eval5" default="" type="string">
<cfparam name="form.eval6" default="" type="string">
<cfparam name="form.eval7" default="" type="string">
<cfparam name="form.eval8" default="" type="string">
<cfparam name="form.eval9" default="" type="string">
<cfparam name="form.eval10" default="" type="string">
<cfparam name="form.eval11" default="" type="string">
<cfparam name="form.eval12" default="" type="string">
<cfparam name="form.eval3" default="" type="string">
<cfparam name="form.eval14" default="" type="string">
<cfparam name="form.eval15" default="" type="string">
<cfparam name="form.eval16" default="" type="string">
<cfparam name="form.checkbox1" default="" type="string">
<cfparam name="form.checkbox2" default="" type="string">
<cfparam name="form.checkbox3" default="" type="string">
<cfparam name="form.checkbox4" default="" type="string">
<cfparam name="form.checkbox5" default="" type="string">
<cfparam name="form.checkbox6" default="" type="string">
<cfparam name="form.checkbox7" default="" type="string">
<cfparam name="form.favoritepart" default="" type="string">
<cfparam name="form.improvements" default=""  type="string">
<cfparam name="form.comments" default="" type="string">

	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="mwhite@lbcc.edu" from="mwhite@lbcc.edu" subject="Lib 1 Course Evaluation Form" type="html">
		<p> <font color="##333333" size="4" face="Arial, Helvetica, sans-serif">You have a student evaluation for Lib 1.</font></p>  
		<table width="600" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors had expert knowledge of the course subject matter:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval1#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors made a good effort to interact with the students:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval2#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors provided timely feedback:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval3#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors' feedback was clear and useful:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval4#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors treated students with respect:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval5#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors were available and helpful:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval6#</font></td>
			   </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The instructors inspired interest in the course material:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval7#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I would recommend these instructor to others:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval8#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The course was well organized:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval9#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The objectives/learning outcomes for each module were clear:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval10#</font></td>
			    </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The assignments accurately measured my attainment of these learning outcomes:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval11#</font></td>
			     </tr>
			     <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Coure requirements and grading were clear:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval12#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The study guides were well written and clear:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval13#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The study guides helped me to understand the assigned work:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval14#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">The self assessment activities quizzes contributed to my learning:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval15#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">I would recommend this course to others:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.eval16#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">How did you hear about this course?</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox1#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox2#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox3#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox4#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox5#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox6#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif"></font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.checkbox7#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">What was your favorites part of this course?</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.favoritepart#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">What could be done to improve this course?</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.improvements#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="4" face="Arial, Helvetica, sans-serif">Please include your comments:</font></td>
				<td align="left"><font color="##820204" size="4" face="Arial, Helvetica, sans-serif">#form.comments#</font></td>
			</tr>
			  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="../thankyou1.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>