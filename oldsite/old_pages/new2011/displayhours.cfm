<!--- 
Library Hours Include File 
Created by: Dena Laney
Date: August 28th, 2012
Updated: 
Notes: To be included on the right of the library content pages
       Checks to see what day of week it is, sets hours for that day and
	   then checks to see if there is an exception to that date (holiday, flex day, between semesters etc
	   before displaying hours
--->  
<cfset todayDate = Now()>
<cfset todaydayofyear = #DayofYear(todayDate)#>
<cfset lachours = "">
<cfset pcchours = "">
<h1>Today's Library Hours</h1>
<img src="http://lib.lbcc.edu/new2011/images/icons/clock.png" style="float:left; padding:15px;" border="0" />
<p><cfoutput>#DayOfWeekAsString("#DayofWeek(todayDate)#")#, #MonthAsString(Month(todayDate))# #Day(todayDate)# </cfoutput></p>
<!---<cfset todaydayofyear = "357"> <cfoutput>#todaydayofyear#</cfoutput> --->
<cfswitch expression="#DayofWeek(todayDate)#">
    <cfcase value="1">
        <cfset lachours = "Closed">
        <cfset pcchours = "Closed">
    </cfcase>    
    <cfcase value="2;3;4;5" delimiters=";">
        <cfset lachours = "7:00 am to 10:00 pm">
        <cfset pcchours = "8:00 am to 9:00 pm">
    </cfcase>
    <cfcase value="6">
        <cfset lachours = "7:00 am to 4:00 pm">
        <cfset pcchours = "8:00 am to 2:30 pm">
    </cfcase>
    <cfcase value="7">
        <cfset lachours = "10:00 am to 4:00 pm">
        <cfset pcchours = "10:00 am to 2:00 pm">
    </cfcase>
</cfswitch>   
<!---Check for any exceptions (holidays, etc.) --->
<cfswitch expression="#todaydayofyear#">
	<cfcase value="247;317;327;328;329" delimiters=";">
    	    <cfset lachours = "Closed -- Holiday">
            <cfset pcchours = "Closed -- Holiday">
    </cfcase>
    <cfcase value="283">
    	    <cfset lachours = "Closed -- Flex Day">
            <cfset pcchours = "Closed -- Flex Day">
    </cfcase>
    <cfdefaultcase>
    	<cfif #todaydayofyear# gte "352">
    	    <cfset lachours = "Closed -- Semester Break">
            <cfset pcchours = "Closed -- Semester Break">
    	</cfif>
    </cfdefaultcase>             
</cfswitch>     
    <ul class="news">
    	<li><strong>LAC Campus</strong><br /><cfoutput>#lachours#</cfoutput></li>
    	<li><strong>PCC Campus</strong><br /><cfoutput>#pcchours#</cfoutput></li>	
	</ul>
<p><a href="hours.cfm">See All Hours</a></p>
<br /><br /><br />
