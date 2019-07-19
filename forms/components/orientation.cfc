<cfcomponent>
	<cffunction access="remote" name="emailinformation" output="false" returntype="any">	
	<!--- Form Paramenters --->
<cfparam name="form.name" default="" type="string">
<cfparam name="form.phoneNumber" default="" type="string">
<cfparam name="form.email" default="" type="string">
<cfparam name="form.courseNumber" default="" type="string">
<cfparam name="form.sectionNumber" default="" type="string">
<cfparam name="form.numberStudents" default="" type="string">
<cfparam name="form.campus" default="" type="string">
<cfparam name="form.orientationDate" default="" type="string">
<cfparam name="form.alternateDates" default="" type="string">
<cfparam name="form.start" default="" type="string">
<cfparam name="form.end" default="" type="string">
<cfparam name="form.focus" default="" type="string">
<cfparam name="form.checkbox1" default="" type="string">
<cfparam name="form.checkbox2" default="" type="string">
<cfparam name="form.checkbox3" default="" type="string">
<cfparam name="form.checkbox4" default="" type="string">
<cfparam name="form.checkbox5" default="" type="string">
<cfparam name="form.checkbox6" default="" type="string">
<cfparam name="form.checkbox7" default="" type="string">
<cfparam name="form.handsOn" default="" type="string">
<cfparam name="form.comments" default="" type="string">

	<!---END of Form Paramenters --->	
	<!--- Mail Section --->
	   	<cfmail to="LACorientation@lbcc.edu, wsmith@lbcc.edu, svoskanian@lbcc.edu, c3williams@lbcc.edu" replyto="svoskanian@lbcc.edu" from="LACorientation@lbcc.edu" subject="Request for orientation from #form.name#" type="html">
		<p> <font color="##000000" size="3" face="Arial, Helvetica, sans-serif">You have a request for a library orientation.</font></p>  
		<table width="600" border="0" cellspacing="3" cellpadding="3">
			  <tr bgcolor="##ffffff">
				<td align="left" width="250"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Instructor's Name:</font></td> 
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.name#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Phone Number:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.phoneNumber#</font></td>
			  </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Email Address:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.email#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Course Number:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.courseNumber#</font></td>
			   </tr>
			   <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Section Number:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.sectionNumber#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Number of Students:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.numberStudents#</font></td>
			   </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Campus:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.campus#</font></td>
			    </tr>
			    <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Preferred Orientation Date:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.orientationDate#</font></td>
			     </tr>
			     <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Alternate Date:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.alternateDate#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Preferred Orientation Time Start Time:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.startTime#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">End Time:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.endTime#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left" valign="top"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Description of Student Assignment:</font></td>  
				<td align="left" valign="top"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.focus#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif" colspan="2"><strong>Please Cover</strong><br>Online Catalog:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox1#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Print Indexes:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox2#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Print Reference Resources:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox3#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Online Databases:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox4#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif"> Electronic Books:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox5#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Internet Resources:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox6#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Library Tour:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.checkbox7#</font></td>
			</tr>
			 <tr bgcolor="##ffffff">
				<td align="left"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Hands on Session in computer lab.:</font></td>  
				<td align="left"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.handsOn#</font></td>
			</tr>
			<tr bgcolor="##ffffff">
				<td align="left" valign="top"><font color="##000000" size="3" face="Arial, Helvetica, sans-serif">Additional Comments (optional):</font></td>  
				<td align="left" valign="top"><font color="##820204" size="3" face="Arial, Helvetica, sans-serif">#form.comments#</font></td>
			</tr>
			  
		 </table>
		    
		</cfmail>
	   	  <cflocation url="http://lib.lbcc.edu/forms/thankyou.html" addtoken="no">	
	</cffunction>	
					
</cfcomponent>