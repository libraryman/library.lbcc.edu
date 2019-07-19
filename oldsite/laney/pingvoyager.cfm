<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<cftry>  
<cfexecute name="ping.exe" timeout="60" arguments="voyager2.lbcc.edu/vwebv/searchBasic" variable="execRet" /> 
</cftry>	
<cfcatch>
<cfthrow message="ping process timed out" />
</cfcatch>

<cfoutput>
<cfset stringToSearch = "#execRet#">
	<cfif find("Request timed out",stringToSearch) EQ 0>
    	<cfset status = "on-line">
            <p>Voyager2 -- (On Line)</p>
        <cfelse>
            <cfset status = "off-line">
            <p>Voyager2 -- (Off Line)</p> 
        </cfif>
</cfoutput>


</body>
</html>
