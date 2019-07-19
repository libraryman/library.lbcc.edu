<cffunction name="turnIPAddressIntoBigInteger" access="public"
returntype="numeric" hint="Converts IP Addresses to big
integers">   
    <cfargument name="ipAddress" required="yes" type="string"
hint="The IP Address">
   
    <cfset var cIpAddress = TRIM(arguments.ipAddress)>
           
    <!---  Treat each IP as a list delimited by periods. Get all
4 parts --->
    <cfset var IPAddressPart1 = listGetAt(cIpAddress,1,".")>
    <cfset var IPAddressPart2 = listGetAt(cIpAddress,2,".")>
    <cfset var IPAddressPart3 = listGetAt(cIpAddress,3,".")>
    <cfset var IPAddressPart4 = listGetAt(cIpAddress,4,".")>
   
    <!--- Return the big integer version --->
    <cfreturn (IPAddressPart1 * 256 * 256 * 256) +
(IPAddressPart2 * 256 * 256) + (IPAddressPart3 * 256) +
IPAddressPart4>
           
</cffunction>

<cffunction name="isIPInThisRange" access="public"
returntype="boolean" hint="Determines if the IP is in the
range">   
    <cfargument name="ipAddress"    required="yes" type="string"
hint="The IP Address to test">
    <cfargument name="rangeStartIP" required="yes" type="string"
hint="The IP Address that starts the range">
    <cfargument name="rangeEndIP"   required="yes" type="string"
hint="The IP Address that ends the range"> 
   
    <cfset var isInTheRange = false> 
   
    <!--- Convert the input IPs --->
    <cfset var convertedIpAddress =
turnIPAddressIntoBigInteger(arguments.ipAddress)>
    <cfset var convertedRangeStartIP =
turnIPAddressIntoBigInteger(arguments.rangeStartIP)>
    <cfset var convertedRangeEndIP =
turnIPAddressIntoBigInteger(arguments.rangeEndIP)>
   
    <!--- If the IP big integer is in between the range big
integers, then yes, this IP is in the range --->   
    <cfif convertedIpAddress GTE convertedRangeStartIP
          AND convertedIpAddress LTE convertedRangeEndIP>
        <cfset isInTheRange = true>
    </cfif>
   
    <cfreturn isInTheRange>
           
</cffunction>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>LBCC Library</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="" type="image/x-icon" />
<link type="text/css" href="jquery/css/custom-theme/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery/js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="jquery/js/jquery-ui-1.8.23.custom.min.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
    <link rel="stylesheet" href="http://lib.lbcc.edu/new2011/jquery.ui.all.css" type="text/css" />
<link type="text/css" rel="stylesheet" media="all" href="http://lib.lbcc.edu/new2011/lbcclibrary.css" />	
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/print.css" type="text/css" media="print" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/front-page2.css" type="text/css" /> 
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabber.css">
<script src="tabber.js" type="text/javascript"></script>
<script src="http://lib.lbcc.edu/new2011/jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="http://lib.lbcc.edu/new2011/jquery/script.js" type="text/javascript" charset="utf-8"></script>
	<script>
	$(function() {
		$( "#tabs" ).tabs();
	});
	$(function() {
		$( "input:submit, a, button", ".demo" ).button();
		$( "a", ".demo" ).click(function() { return false; });
	});    
    </script>
    <style type="text/css">
			/*demo page css*/		
			.demoHeaders { margin-top: 2em; }
			#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
			#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
			ul#icons {margin: 0; padding: 0; font-family: Arial, Helvetica, sans-serif}
			ul#icons li {margin: 2px; position: relative; padding: 4px 0; cursor: pointer; float: left;  list-style: none;}
			ul#icons span.ui-icon {float: left; margin: 0 4px;}
			.tabcontent {font-family:Verdana, Geneva, sans-serif; font-size:9px;}
		</style>

</head>

<body class="front not-logged-in page-node no-sidebars">
	
<cfinclude template="topnav.cfm">


<!--BEGIN MAIN CONTENT & RIGHT NAV -->
    <div id="outer-content-container" class="container_16"> 
		<div id="content-container" class="container_16">  
			<div id="top-content">             	
			  <div id="generalcontent"  class="grid_11 alpha"> 				<div id="main-content">
				  <p class="small"><a href="index.cfm">Home</a> > Student Services </p><br />
                	<h1>Computers &amp; Printing</h1>   
                  	<p>Computers for Internet research use and subscription database searching are available at both campuses from the opening of the Library until 15 minutes prior to closing.</p>
                    <!--- Set the user's IP. In a real world you'd be looking at the
CGI scope value --->
<cfset usersIP = "#CGI.REMOTE_ADDR#">
<cfif Left(#usersIP#,3) eq "10.">
	ON CAMPUS
<cfelse>
	<cfoutput>#usersIP#</cfoutput> OFF CAMPUS    
</cfif>

<!--- If the usersIp is in the range, display our message

<cfif isIPInThisRange(usersIP,"62.245.2.224","62.245.2.255")>
    First ColdfusionCountry IP Range--->
<!--- If it's not 
<cfelse>
    <cfoutput>#usersIP#</cfoutput> Another country or not the first range
</cfif>--->
                      
<!--<h2 class="demoHeaders">Tabs</h2>
		<div id="tabs">
			<ul>
				<li><a href="#ta" class="tabcontent">A</a></li>
				<li><a href="#tb" class="tabcontent">B</a></li>
				<li><a href="#tc" class="tabcontent">C</a></li>
                <li><a href="#td" class="tabcontent">D</a></li> 
                <li><a href="#te" class="tabcontent">E</a></li>
                <li><a href="#tf" class="tabcontent">F</a></li>
                <li><a href="#tg" class="tabcontent">G</a></li>
                <li><a href="#th" class="tabcontent">H</a></li>
                <li><a href="#ti" class="tabcontent">I</a></li>
                <li><a href="#tj" class="tabcontent">J</a></li>
                <li><a href="#tk" class="tabcontent">K</a></li> 
                <li><a href="#tl" class="tabcontent">L</a></li>
                <li><a href="#tm" class="tabcontent">M</a></li>
                <li><a href="#tn" class="tabcontent">N</a></li>
                <li><a href="#to" class="tabcontent">O</a></li>
                <li><a href="#tp" class="tabcontent">P</a></li>
                <li><a href="#tr" class="tabcontent">R</a></li>
                <li><a href="#ts" class="tabcontent">S</a></li>
                <li><a href="#tt" class="tabcontent">T</a></li>
               <li><a href="#tu" class="tabcontent">U</a></li>
                <li><a href="#tv" class="tabcontent">V</a></li> 
                <li><a href="#tw" class="tabcontent">W</a></li>                
			</ul>
			<div id="ta" class="tabcontent">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
			<div id="tb" class="tabcontent">Phasellus mattis tincidunt nibh. Cras orci urna, blandit id, pretium vel, aliquet ornare, felis. Maecenas scelerisque sem non nisl. Fusce sed lorem in enim dictum bibendum.</div>
			<div id="tc" class="tabcontent">Nam dui erat, auctor a, dignissim quis, sollicitudin eu, felis. Pellentesque nisi urna, interdum eget, sagittis et, consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.</div>
		</div> -->
                    
              


<div class="demo">

<input  class="tabcontent" type="submit" value="A" name="begins" />
<button  class="tabcontent">B</button>
<button  class="tabcontent">C</button>

</div><!-- End demo -->
                 
                </div>
                </div> 
			<cfinclude template="rightnavstandard.cfm">
			</div>		
		<div class="clear"> </div>	
	</div>
	<!-- close outer-content-container -->

	<div class="clear"></div>
	<!-- close feature-container -->

	<cfinclude template="footer.cfm">

</div>
</body>
</html>
