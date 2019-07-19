<!--- 
Right Navigation General Site Include File 
Created by: Dena Laney
Date: March 19th, 2012
Notes: To be included on the right of EVERY non-home page
--->             
<div id="libraryhours" class="grid_4 omega"> 
	<div id="rightnav-quick" class="rightnav"> 
    	<a href="askalibrarian.cfm"><img src="images/askalibrariangray.gif" alt="Contact a librarian" /></a>
        <br /> <br />
    <h1> Today's Library Hours</h1>
    <img src="images/icons/clock.png" style="float:left; padding:5px;" border="0" />
	<ul class="news">
    	<li><strong>LAC Campus</strong><br />7:00 am to 10:00 pm</li>
        <li><strong>PCC Campus</strong><br />8:00 am to 9:00 pm</li>	
	</ul>
    <p><a href="">See All Hours</a></p>
	<br /> <br /> <br />
    <h1>Live Chat with a Librarian</h1>
    <iframe src="http://www.google.com/talk/service/badge/Show?tk=z01q6amlqj2b9iviudqmka726335l3t0dsupms3e6ggbir8ne14jkj5v8d1javrrt842jjegtastl9kbd0t5iqa843vsk74ihj900qg7liulk1rrfenp24nnvlm8oo53nb1crkg5dpujp5tsnfd37h74d9kss751i6fn1etoukogkha8fbcdhju9rg5qarqpat4dpnjfd5is23eabj3fufnneme00&amp;w=180&amp;h=60" frameborder="0" allowtransparency="true" width="180" height="60"></iframe>
	<br /> <br />
<!---<h1>Events &amp; Activities</h1>
<cfhttp url="http://lbcc.libcal.com/rss.php?m=week&iid=396&cid=1130" method="GET" resolveurl="No"></cfhttp> 
<cfhttp url="https://www.google.com/calendar/feeds/mj3pfh54mv19n85tbf327uu8kg%40group.calendar.google.com/public/basic" method="GET" resolveurl="No"></cfhttp>
<cfset libcal_xml=XMLParse(cfhttp.FileContent)>
<cfoutput>
<cfloop index="x" from="1" to="2">
#libcal_xml.rss.channel.item[x].title.xmlText#<br /> -->
<!--<a href="#libcal_xml.rss.channel.item[x].link.xmlText#">click here</a>
#libcal_xml.rss.channel.item[x].description.xmlText#
</cfloop >
</cfoutput > --->
    <br /> <br />
    <h1>Follow Us</h1>
    <table width="200" align="center">
    	<tr>
        	<td><a href=""><img src="images/icons/Social.me/48 by 48 pixels/facebook.png" width="48" height="48" border="0" /></a></td>
            <td><a href=""><img src="images/icons/Social.me/48 by 48 pixels/twitter.png" width="48" height="48" border="0" /></a></td>
             <td><a href=""><img src="images/icons/Social.me/48 by 48 pixels/youtube.png" width="48" height="48" border="0" /></a></td>
             <td><a href=""><img src="images/icons/Social.me/48 by 48 pixels/flickr.png" width="48" height="48" border="0" /></a></td>
		</tr>
	</table>
    <br /><br />
	</div> 
</div> 
