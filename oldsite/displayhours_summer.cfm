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
	<!---Closed on Sundays--->

    <cfcase value="1"> 
        <cfset lachours = "Closed">
        <cfset pcchours = "Closed">
    </cfcase>

    
   <!--- DEFAULT  HOURS  --->
   <!--- MON - THUR hours --->
<!--- SUMMER HOURS -- NORMAL HOURS CURRENTLY COMMENTED OUT --->
 <cfcase value="2;3;4;5" delimiters=";">
        <cfset lachours = "7:00 am to 9:00 pm"> <!-- "" -->
        <cfset pcchours = "8:00 am to 9:00 pm"> <!-- "" -->
    </cfcase>
    <cfcase value="6">
        <cfset lachours = "Closed"> <!-- "7:00 am to 4:00 pm" -->
        <cfset pcchours = "Closed"> <!-- "7:00 am to 2:30 pm" -->
    </cfcase>
    <cfcase value="7">
        <cfset lachours = "Closed"> <!-- "10:00 am to 4:00 pm" -->
        <cfset pcchours = "Closed"> <!-- "10:00 am to 2:00 pm" -->
    </cfcase>   


            
</cfswitch>   
<!---Check for any exceptions (holidays, etc.) --->

<cfswitch expression="#todaydayofyear#">
	
	<cfcase value="156;157;158;159;160;161;162;163;164;165" delimiters=";"> 
			<!--- Spring - Summer Break --->
    	    <cfset lachours = "Closed -- Summer Break">
            <cfset pcchours = "Closed -- Summer Break">
	</cfcase>

	<cfcase value="184;" delimiters=";"> 
			<!--- 2014 Holidays --->
    	    <cfset lachours = "Closed -- Independence Day Holiday">
            <cfset pcchours = "Closed -- Independence Day Holiday">
	</cfcase>
	<cfcase value="227;228;229;230;231;232;233;234;235;236" delimiters=";"> 
			<!--- Summer-Fall Break --->
    	    <cfset lachours = "The Library is closed until Monday, August 25">
            <cfset pcchours = "The Library is closed until Monday, August 25">
	</cfcase>



	<cfdefaultcase>
    		<cfif #todaydayofyear# lte "31"> <!---interession hours/month of january--->
    	    		<cfset lachours = "8:30 am - 12:30 pm">
            		<cfset pcchours = "Closed">
    		</cfif>
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
