<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Long Beach City College Library > OPAC</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52654811-1', 'auto');
  ga('require', 'displayfeatures');

  ga('send', 'pageview');

</script>
<link rel="shortcut icon" href="" type="image/x-icon" />
<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link rel="stylesheet" href="jquery.ui.all.css" type="text/css" />
<link type="text/css" rel="stylesheet" media="all" href="lbcclibrary.css" />	
<link rel="stylesheet" href="menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="print.css" type="text/css" media="print" />
<link rel="stylesheet" href="front-page2.css" type="text/css" />
<link rel="stylesheet" href="search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../tabber.css">
<script src="tabber.js" type="text/javascript"></script>
<script src="jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="jquery/script.js" type="text/javascript" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script> 
<script type="text/javascript"> 
$(document).ready(function() {
    $('.slideshow').cycle({
		fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
	});
});
</script> 
<style type="text/css">
.slideshow { margin: 10px; }
.slideshow img { padding: 5px; border: 1px solid #ccc; }
</style>
</head>

<body class="front not-logged-in page-node no-sidebars">
<cfinclude template="topnav.cfm">
<!--BEGIN MAIN CONTENT & RIGHT NAV -->
    <div id="outer-content-container" class="container_16"> 
		<div id="content-container" class="container_16">  
			<div id="top-content">             	
			  <div id="generalcontent"  class="grid_11 alpha">
              <div id="main-content">
				  <p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; <a href="index.cfm">LBCC Library Home</a> &raquo; LBCC Library Online Catalog</p><br />
                <h1>LBCC Library Online Catalog</h1>   
                 <h2>Search for Library Resources by choosing a tab below:</h2> 
					<div id="searchtabs"> 
						<div class="tabber" id="mytab1">
                        	
                           <div class="tabbertab" id="mytab">
                            <h2 id="books" class="books"><a name="tab1">Books/Media</a></h2>
                            <h1>Find Books &amp; Media in the Library Catalog</h1>
                            <p>Perform a basic keyword search for books and media (VHS, DVD, CD's, etc.).</p><br/>
                            <form action="http://lbcc.worldcat.org/search?q=" method="get" name="querybox" target="_new" id="querybox">
                            <input maxlength="255" size="28" name="q" title="Type any keyword(s) and &lt;Enter&gt;" class="textinput" />    
                            <input name="" type="submit" style="font-size:9pt;padding-left:5px;" value="Search" />&nbsp;&nbsp;<img src="http://lib.lbcc.edu/images/wclocal.jpg" alt="Search with WorldCat"/>
                            </form>
                            <p><br /></p>
                        </div>	 

						 <div class="tabbertab" id="mytab">
                            <h2 id="books" class="books"><a name="tab5">Textbooks</a></h2>
                            <h1>Search for Textbooks for your Courses</h1>
                            <p>Enter the name of your course: (example: MATH 110 or Algebra) or name of department (example: Reading)</p>
                            <form action="http://lbcc.worldcat.org/wcpa/courseReserves?query=" method="get" name="querybox" target="_new" id="querybox">
                            <input type="hidden" name="searchIn" value="Courses" />
                            <input type="hidden" name="action" value="courseReserveManagerSearchCourses" />
                            <input type="hidden" name="sort" value="name" />
                            <input maxlength="255" size="28" name="query" title="Type any keyword(s) and &lt;Enter&gt;" class="textinput" />&nbsp;
							<select name="sort">
                            	<option value="prefix,number">Course Prefix & Number
                                <option value="name">Course Name
                                <option value="department">Department Name
                            </select>
		                        <input name="" type="submit" value="Search" style="font-size:9pt;padding-left:5px;" /><br />
                            </form>
                            <p><br /><br/></p>
                        </div>	 
                            
                            <div class="tabbertab" id="mytab2">
                            	<h2>Articles/Databases</h2>   								
                               	<div class="tabberdivide1">
                               	<h1>Find Articles</h1>
                                <!-- EBSCOhost Custom Search Box Begins -->                               
                              
<script src="http://supportforms.epnet.com/eit/scripts/ebscohostsearch.js" type="text/javascript"></script>
<form action="" onsubmit="return ebscoHostSearchGo(this);" method="post">
<input id="ebscohostwindow" name="ebscohostwindow" type="hidden" value="1" />
<input id="ebscohosturl" name="ebscohosturl" type="hidden" value="http://search.ebscohost.com/login.aspx?direct=true&site=ehost-live&scope=site&type=1&db=aph&db=31h&db=kfh&db=kdh&db=bsh&db=rzh&db=c9h&db=nlebk&db=eric&db=hev&db=funk&db=8gh&db=hxh&db=hch&db=ulh&db=f5h&db=cmedm&db=mth&db=n5h&db=tfh&db=pbh&db=bwh&db=rlh&mode=bool&cli0=FT&clv0=Y&lang=en&authtype=ip" />
<input id="ebscohostsearchsrc" name="ebscohostsearchsrc" type="hidden" value="url" />
<input id="ebscohostsearchmode" name="ebscohostsearchmode" type="hidden" value="+" />
<input id="ebscohostkeywords" name="ebscohostkeywords" type="hidden" value="" />
	<p>Search in all EBSCOhost databases.</p>
    <input id="ebscohostsearchtext" name="ebscohostsearchtext" type="text" size="35" style="font-size:10pt;padding-left:5px;margin-left:0px;" /><input type="submit" value="Search" style="font-size:9pt;padding-left:5px;" /></form>
      
       <!--    EBSCOhost Custom Search Box Ends -->
     <!--   <br /> <form action="routedb_act.cfm" method="get" name="dbselect" target="_new" id="dbselect">
        <span style="font-weight:bold;" >OR</span><br />
        <select name="dbname">
        	<option value="ViewAll">Go to a Specific Database</option>
        	<option value="AcSearch">Academic Search Premier</option>
            <option value="AmHistory">American History Online</option>
            <option value="AmWomen">American Women's History Online</option>
            <option value="AfrAmercian">African American History Online</option>
            <option value="AmercianIndian">American Indian History Online</option>
            <option value="ArtSTOR">ArtSTOR</option>
            <option value="CQResearch">CQ Researcher</option>
            <option value="JSTORArts">JSTOR Arts & Sciences Collection</option>
            <option value="LitRC">Literature Resource Center</option>
            <option value="Medline">MEDLINE</option>
            <option value="ModHistory">Modern World History</option>
            <option value="OpView">Opposing Viewpoints</option>        	
            <option value="Proquest">Proquest</option>
            <option value="ProquestHist">Proquest Historical Newspapers</option>
            <option value="Psych">Psychology &amp; Behavioral Sciences</option>
            <option value="ScienceOn">Science Online</option>
            <option value="IssueResearcher">SIRS Issue Researcher</option>
            <option value="WorldNews">World News Digest</option>
        </select>
        <input type="submit" value="Go" style="font-size:9pt;padding-left:5px;" />
        </form> -->
</div>

<div class="tabberdivide2">
<b>Browse Databases</b><br />    
<a href="databases.cfm">Databases by Title</a><br />         
<a href="databases.cfm">Databases by Subject</a><br />
<!--<a href="databases.cfm">By Type</a><br /> -->
<br />
<a href="offcampus.cfm"><img src="images/icons/offcampuslock2.png" /></a>
</div>                         
</div>

			
                          
<!--<div class="tabbertab"  id="mytab2">
	<h2>Journal Titles</h2>
	<div class="tabberdivide1">
    <h1>Find Journals by Titles</h1>
	<p>Search by title for journals, magazines, or newspapers.</p><br />
	<div align="left" class="SS_TitleSearchForm">
		<form action="http://la2by9ys8g.search.serialssolutions.com/" method="get" name="SS_EJPSearchForm" target="_new" id="SS_EJPSearchForm">
        <p><em><font color="red">Search Function Disabled momentarily</font></em></p>    	
    	</form>
	</div>
</div> 

<div class="tabberdivide2">
	<BR /><BR /><BR /><BR /><a href="offcampus.cfm"><img src="images/icons/keychain3.png" /></a>
</div>              

</div> -->

<div class="tabbertab" id="mytab3">
	<h2>Research Guides</h2>
    <h1>Find Research Guides on Specific Topics</h1>
    <div id='api_searchbox_iid927'></div><script type='text/javascript' src='http://api.libguides.com/api_searchbox.php?iid=927&amp;context=object&amp;format=js'> </script>
    	<p><br /><br /><br /></p>
    </div>
</div> 

</div> 
                    
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
