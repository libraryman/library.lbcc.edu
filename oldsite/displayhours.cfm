<!--- 
Library Hours Include File 
Created by: Dena Laney
Date: August 28th, 2012
Updated: February 5th for SPRING 2014 semester only
Notes: To be included on the right of the library content pages
       Checks to see what day of week it is, sets hours for that day and
	   then checks to see if there is an exception to that date (holiday, flex day, between semesters etc
	   before displaying hours
	   Hint: Check Academic Calendar at http://www.lbcc.edu/calendar.cfm for dates
	   and compare to a date of the year calendar such as http://asd.gsfc.nasa.gov/Craig.Markwardt/doy2013.html (Google it)
--->  
<cfset todayDate = Now()>
<cfset todaydayofyear = #DayofYear(todayDate)#>
<cfset lachours = "">
<cfset pcchours = "">
<h1>Today's Library Hours</h1>
<!-- img src="http://lib.lbcc.edu/new2011/images/icons/clock.png" style="float:left; padding:15px;" border="0" / -->
<p><cfoutput>#DayOfWeekAsString("#DayofWeek(todayDate)#")#, #MonthAsString(Month(todayDate))# #Day(todayDate)# </cfoutput></p>
<!--- Next lines of code commented out but are for testing purposes --->
<!--- 
set to a specific day for testing purposes to see if program is calculating correctly
<cfset todaydayofyear = "357">
--->
<!---
output to check to see what day of the year it is currently
<cfoutput>#todaydayofyear#</cfoutput>
--->

<cfswitch expression="#DayofWeek(todayDate)#">

    <cfcase value="1"> 
	<!---Closed on Sundays--->
        <cfset lachours = "Closed">
        <cfset pcchours = "Closed">
    </cfcase>

    
   <!--- DEFAULT  HOURS  --->
   <!--- MON - THUR hours --->
    <cfcase value="2;3;4;5" delimiters=";"> 
        <cfset lachours = "7:00 am to 10:00 pm">
        <cfset pcchours = "8:00 am to 9:00 pm">
    </cfcase>


    <!--- FRI default hours --->
    <cfcase value="6">
        <cfset lachours = "7:00 am to 4:00 pm">
        <cfset pcchours = "8:00 am to 2:30 pm">
    </cfcase>


    <!---  SAT default hours --->
    <cfcase value="7">
       <!--- Intersession CLOSED --->
      <cfset lachours = "10:00 am to 4:00 pm">
        <cfset pcchours = "10:00 am to 2:00 pm">
 </cfcase>


</cfswitch>   
<!---Check for any exceptions (holidays, etc.) --->

<cfswitch expression="#todaydayofyear#">
    
	<cfcase value="162;163;164;165;" delimiters=";"> 
			<!--- Spring-Summer Recess --->
    	    <cfset lachours = "The Library is closed until Monday, June 15">
            <cfset pcchours = "The Library is closed until Monday, June 15">
    </cfcase>

	<cfcase value="184;" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Independence Day">
            <cfset pcchours = "Closed -- Independence Day">
    </cfcase>
                
                
    <cfcase value="233;234;235;" delimiters=";"> 
			<!--- Summer-Fall Break --->
    	    <cfset lachours = "The Library is closed until Monday, August 24">
            <cfset pcchours = "The Library is closed until Monday, August 24">
    </cfcase>

<cfcase value="250" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Labor Day">
            <cfset pcchours = "Closed -- Labor Day">
	</cfcase>	

	<cfcase value="265" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Flex Day">
            <cfset pcchours = "Closed -- Flex Day">
	</cfcase>	


	<cfcase value="315" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Veteran's Day">
            <cfset pcchours = "Closed -- Veteran's Day">
	</cfcase>	


	<cfcase value="330;331;332;333" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Thanksgiving Holiday">
            <cfset pcchours = "Closed -- Thanksgiving Holiday">
	</cfcase>	

	<cfcase value="346;347" delimiters=";"> 
			<!--- 2015 Holidays --->
    	    <cfset lachours = "Closed -- Flex Day">
            <cfset pcchours = "Closed -- Flex Day">
	</cfcase>	

	<cfcase value="348;349;350;351;352;353;354;355;356;357;358;359;360;361;362;363;364;365;1;2;3" delimiters=";"> 
			<!--- 2015-16 Holidays --->
    	    <cfset lachours = "Closed -- Winter Recess">
            <cfset pcchours = "Closed -- Winter Recess">
	</cfcase>	

	<cfcase value="18" delimiters=";"> 
			<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed --King's Day">
            <cfset pcchours = "Closed -- King's Day">
	</cfcase>	

	<cfcase value="43;44" delimiters=";"> 
			<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed -- Lincoln's Day">
            <cfset pcchours = "Closed -- Lincoln's Day">
	</cfcase>	

	<cfcase value="46" delimiters=";"> 
			<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed -- Washington's Day">
            <cfset pcchours = "Closed -- Washington's Day">
	</cfcase>

    <cfcase value="68" delimiters=";">
<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed -- Flex Day">
            <cfset pcchours = "Closed -- Flex Day">
	</cfcase>

	<cfcase value="95;96;97;98;99;100" delimiters=";"> 
			<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed -- Spring Break">
            <cfset pcchours = "Closed -- Spring Break">
	</cfcase>

	<cfcase value="151" delimiters=";"> 
			<!--- 2016 Holiday --->
    	    <cfset lachours = "Closed -- Memorial Day">
            <cfset pcchours = "Closed -- Memorial Day">
	</cfcase>


	<cfdefaultcase>
    		
		<cfif #todaydayofyear# gte "348"> <!---last day of the semester--->
    	   		<cfset lachours = "Closed -- Semester Break">
            		<cfset pcchours = "Closed -- Semester Break">
    		</cfif>
	</cfdefaultcase>
            
</cfswitch> 

    
    <ul class="news">
    	<li><strong>LAC Campus</strong><br /><cfoutput>#lachours#</cfoutput></li>
    	<li><strong>PCC Campus</strong><br /><cfoutput>#pcchours#</cfoutput></li>	
	</ul>
<p><a href="hours.cfm">See All Hours</a> || <a href="campusmaps.cfm">Maps/Location</a></p>
<br />
