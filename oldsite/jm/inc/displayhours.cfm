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

	<!--
	   <cfset lachours = "Closed">
       <cfset pcchours = "Closed">
	   --->

	<!-- Normal TERM HOURS -->

	   <cfset lachours = "10:00 am to 4:00 pm">
       <cfset pcchours = "10:00 am to 2:00 pm"> 

    </cfcase>
    <!--- SUMMER HOURS CURRENTLY COMMENTED OUT (SWITCH THIS to LIVE CODE DURING SUMMER) --->
    <!---<cfcase value="2;3;4;5" delimiters=";">
        <cfset lachours = "8:00 am to 6:00 pm">
        <cfset pcchours = "8:00 am to 4:00 pm">
    </cfcase>
    <cfcase value="6">
        <cfset lachours = "Closed">
        <cfset pcchours = "Closed">
    </cfcase>
    <cfcase value="7">
        <cfset lachours = "Closed">
        <cfset pcchours = "Closed">
    </cfcase>  --->   
</cfswitch>   
<!---Check for any exceptions (holidays, etc.) --->

<cfswitch expression="#todaydayofyear#">
	
	<cfcase value="45" delimiters=";"> 
			<!--- 2014 Holidays --->
    	    <cfset lachours = "Closed -- Lincoln's Day">
            <cfset pcchours = "Closed -- Lincoln's Day">
	</cfcase>	

	<cfcase value="48" delimiters=";"> 
			<!--- 2014 Holidays --->
    	    <cfset lachours = "Closed -- Washington's Day">
            <cfset pcchours = "Closed -- Washington's Day">
	</cfcase>

	<cfcase value="111;112;113;114;115;116" delimiters=";"> 
			<!--- 2014 Holidays --->
    	    <cfset lachours = "Closed -- Spring Break">
            <cfset pcchours = "Closed -- Spring Break">
	</cfcase>

	<cfcase value="146" delimiters=";"> 
			<!--- 2014 Holidays --->
    	    <cfset lachours = "Closed -- Memorial Day">
            <cfset pcchours = "Closed -- Memorial Day">
	</cfcase>

	<cfcase value="77" delimiters=";">
    	    <cfset lachours = "Closed -- Flex Day">
            <cfset pcchours = "Closed -- Flex Day">
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


<div class="span-8 right">
    <div class="span-8 last">                   
    <div class="span-4 quiet  border">
        <h3 class="quiet right">Library Hours</h3><p class="right"><cfoutput>#DayOfWeekAsString("#DayofWeek(todayDate)#")#, #MonthAsString(Month(todayDate))# #Day(todayDate)# </cfoutput></p>
    
    </div>
        
    <div class="right quiet last">
        <strong>LAC Campus</strong><br /><cfoutput>#lachours#</cfoutput><br />
        <strong>PCC Campus</strong><br /><cfoutput>#pcchours#</cfoutput>
       
    </div>
   
</div> 
     <a href="hours.cfm">See All Hours</a> || <a href="campusmaps.cfm">Maps/Location</a> 
    </div>