<!DOCTYPE html PUBLIC "XHTML 1.0 Transitional"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Long Beach City College Library</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="" type="image/x-icon" />
<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js" type="text/javascript"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<!--<link rel="stylesheet" href="jquery.ui.all.css" type="text/css" /> -->
<link type="text/css" rel="stylesheet" media="all" href="lbcclibrary.css" />	
<link rel="stylesheet" href="menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="print.css" type="text/css" media="print" />
<link rel="stylesheet" href="front-page2.css" type="text/css" />
<link rel="stylesheet" href="search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabber.css" />
<link rel="stylesheet" type="text/css" href="http://api.libguides.com/css/libguides_api.css" />
<script src="tabber.js" type="text/javascript"></script>
<script src="jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="jquery/script.js" type="text/javascript" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script> 
<script type="text/javascript"> 
$(document).ready(function() {
    $('.slideshow').cycle({
		 //fx: 'fade' scrollLeft choose your transition type, ex: fade, scrollUp, shuffle, etc...
		 fx:     'fade', 
    	 timeout: 10000
	});
});
</script> 
<style type="text/css">
.slideshow { margin: 0px; }
.slideshow img { padding: 0px; display: none}
#slideshow img.first { display: block }
</style>
</head>

<body class="front not-logged-in page-node no-sidebars">

<cfinclude template="topnav.cfm">
	

    <div id="topimage-container">
	<div id="topimage">        	
    	<div class="slideshow"> 
            <img src="images/studentstacks.jpg" alt="Student in Library" width="960" height="173" class="first" /> 
			<img src="images/worldcat_ad2.jpg" alt="LAC Library Building" height="173" width="960"/>    
            <img src="images/dystopianheader2.jpg" alt="LAC Library Building" height="173" width="960" />
            <img src="images/buildingheader2.jpg" alt="LAC Library Building" height="173" width="960" />
        </div>
	</div>			
</div>
<!-- close topimage-container -->

<div class="clear"> </div>
    
<div id="outer-content-container" class="container_16"> 
	<div id="content-container" class="container_16">  
			<div id="top-content">             	
				<div id="mainsearch" class="grid_11 alpha"> 
					 <p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; LBCC Library Home</p>
                    <h1>Start your search here</h1> 
					<div id="searchtabs"> 
						<div class="tabber" id="mytab1">
                        	
                           <div class="tabbertab" id="mytab">
                            <h2 id="books" class="books"><a name="tab1">Books/Media</a></h2>
                            <h1>Find Books &amp; Media in the Library Catalog</h1>
                            <p>Perform a basic keyword search for books and media (VHS, DVD, CD's, etc.).</p><br/>
                            <form action="http://lbcc.worldcat.org/search?q=" method="get" name="querybox" id="querybox">
                            <input maxlength="255" size="28" name="q" title="Type any keyword(s) and &lt;Enter&gt;" class="textinput" />    
                            <input name="" type="submit" style="font-size:9pt;padding-left:5px;" value="Search" />&nbsp;&nbsp;<img src="http://lib.lbcc.edu/images/wclocal.jpg" alt="Search with WorldCat"/>
                            </form>
                            <p><br /></p>
                        </div>	 

						 <div class="tabbertab" id="mytab">
                            <h2 id="books" class="books"><a name="tab5">Textbooks</a></h2>
                            <h1>Search for Textbooks for your Courses</h1>
                            <p>Enter the name of your course: (example: MATH 110 or Algebra) or name of department (example: Reading)</p>
                            <form action="http://lbcc.worldcat.org/wcpa/courseReserves?query=" method="get" name="querybox" id="querybox">
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
                               	<div style="float:left;width:270px;height:100%;">
                                    <h1>New! Download <i>Entire</i> Ebooks from Ebscohost!</h1>
                                    <p>With a few easy steps, you can now download and read entire ebooks on your smartphone, tablet, or desktop computer. Get started with these <a href="ebook-download-instr.cfm"><strong>basic instructions</strong></a>.</p>                               
                                </div>
                                <div>
                                    <div id="databases"><h1>Search our databases</h1> <p>for popular magazines, peer&ndash;reviewed journal articles and more&hellip;<br />
                                        You can view a list of our databases by <a href="databases.cfm?begins=A-C"><strong>title</strong></a>, <a href="databases_subject.cfm"><strong>subject</strong></a>, or view a list of our <a href="databases.cfm"><strong>most popular</strong></a> databases.</p>
                                    </div>
                                </div>                         
                            </div>

			

<div class="tabbertab" id="mytab3">
	<h2>Research Guides</h2>
    <h1>Find Research Guides on Specific Topics</h1>
    <div id='api_searchbox_iid927'></div><script type='text/javascript' src='http://api.libguides.com/api_searchbox.php?iid=927&amp;context=object&amp;format=js'> </script>
    	<p><br /><br /><br /></p>
    </div>
</div> 

</div> 
				
<div class="quicklinks"> 
	<div id="librarynews1" class="quicklinks"> 

        <br /><p><img class="quicklinks displayed" src="images/worldcat.gif" alt="WorldCat Local" width="98"/></p>
        <h3><a href="http://lbcc.worldcat.org" target="_blank">Get started with WorldCat</a></h3> 
        <p>We use WorldCat as our Online Public Access Catalog (OPAC). You can search the library for books, media, and even journal articles. Learn how to search WorldCat by viewing <a href="http://www5.oclc.org/downloads/tutorials/worldcatlocal/basicsrch/default.htm" target="_blank"><strong>this short tutorial</strong></a> or these <a href="http://www.oclc.org/worldcat/help/en/default.htm#searching" target="_blank"><strong>FAQ's.</strong></a></p>

		</div> 
 
    <div class="quicklinks"> 
		<br /><p><img class="quicklinks displayed" alt="Genealogy tree" src="images/workshops.jpg"  width="98"/></p>
        <h3><a href="workshops.cfm">Drop-in Workshops</a></h3> 
        <p>Coming soon - library drop-in workshops to help you improve your library skills. </p>
        <p><a href="workshops.cfm">See Workshop Schedule</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
	</div> 
</div> 
</div> 

<cfinclude template="rightnavmain.cfm">
				</div>
			</div>
			<div class="clear"> </div>
			<div class="clear"> </div>
		
		<!-- </div>close outer-content-container -->

<div class="clear"></div>
<!-- close feature-container -->

<cfinclude template="footer.cfm">

</body>
</html>
