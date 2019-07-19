<!--- 
Footer Container Include File 
Created by: Dena Laney
Date: March 19th, 2012
Updated: April 30th, 2012
Notes: To be included on the bottom of EVERY webpage
--->

<div id="footer-container">
	<div id="footer">
		<div id="footer-left" class="grid_6">
        	<p><strong>Liberal Arts Campus Library</strong><br />
                       4901 E. Carson Street Long Beach, CA 90808<br />
                       (562) 938-4232</p>
        </div>
		<div id="footer-social" class="grid_3">
        	<ul>
            <li>&nbsp;</li>
            </ul>
        </div> 
        <div id="footer-right" class="grid_6">
        	<p><strong>Pacific Coast Campus Library</strong><br />
                       1305 E. Pacific Coast Highway Long Beach, CA 90806<br/>
                       (562) 938-3028</p>
        </div>    
        <div class="clear">&nbsp;</div> 
        <!-- close footer -->
	</div>
<!-- close footer-container -->
</div>
                    
<div id="belowfooter-container">
	<div id="belowfooter">
		<div id="belowfooter-left" class="grid_3">
        	<p><a href="http://www.lbcc.edu">LBCC Home</a></p>
        </div>
		<div id="belowfooter-center1" class="grid_3">
        	<p><a href="http://lib.lbcc.edu">Library Home Page</a></p>
        </div> 
		<div id="belowfooter-center2" class="grid_3">
        	<p><a href="siteindex.cfm">Library Site Index</a></p> 
           
        
        </div> 
        <div id="belowfooter-center3" class="grid_3">
        	<p><a href="lbcc.libanswers.com">Frequently Asked Questions</a></p>
        </div> 
        <div id="belowfooter-right" class="grid_3">
        	<p><a href="http://lbcclibrarywiki.pbworks.com">Staff Wiki</a></p>
        </div>    
        <div id="belowfooter-center2" class="grid_15" align="center">
         <cfdirectory action="list"
                   directory="#ExpandPath(".")#\"
                   name="qGetLastdateModified"
                   filter="#ListLast(CGI.SCRIPT_NAME, "/")#">
			<cfif qGetLastdateModified.recordCount>
    		<cfoutput><p>Last updated #DateFormat(qGetLastdateModified.dateLastModified, "mm/dd/yyyy")# by Dena Laney</p></cfoutput>
			</cfif>
        </div>
        <div class="clear">&nbsp;</div>       
	</div>               
</div>
  <!-- close footer -->
<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>

<script type="text/javascript">
	try {
			var pageTracker = _gat._getTracker("UA-16130388-1");
			pageTracker._trackPageview();
		} catch(err) {}
</script>