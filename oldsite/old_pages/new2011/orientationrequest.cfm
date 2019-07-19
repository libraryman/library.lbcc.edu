<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Long Beach City College Library Services > Study Rooms</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="" type="image/x-icon" />
<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/jquery.ui.all.css" type="text/css" />
<link type="text/css" rel="stylesheet" media="all" href="http://lib.lbcc.edu/new2011/lbcclibrary.css" />	
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/print.css" type="text/css" media="print" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/front-page2.css" type="text/css" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../tabber.css">
<script src="http://lib.lbcc.edu/new2011/tabber.js" type="text/javascript"></script>
<script src="http://lib.lbcc.edu/new2011/jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="http://lib.lbcc.edu/new2011/jquery/script.js" type="text/javascript" charset="utf-8"></script>
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
<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>

</head>

<body class="front not-logged-in page-node no-sidebars">
<cfinclude template="topnav.cfm">
<!--BEGIN MAIN CONTENT & RIGHT NAV -->
    <div id="outer-content-container" class="container_16"> 
		<div id="content-container" class="container_16">  
			<div id="top-content">             	
			  <div id="generalcontent"  class="grid_11 alpha">
              <div id="main-content">
	
<!-- Form parameters -->	
		<cfparam name="name" default="" type="string" />
		<cfparam name="phoneNumber" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="courseNumber" default="" type="string" />
		<cfparam name="sectionNumber" default="" type="string" />
		<cfparam name="numberStudents" default="" type="string" />
		<cfparam name="campus" default="" type="string" />
		<cfparam name="orientationDate" default="" type="string" />
		<cfparam name="alternateDates" default="" type="string" />
		<cfparam name="start" default="" type="string" />
		<cfparam name="end" default="" type="string" />
		<cfparam name="focus" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />
		<cfparam name="checkbox4" default="" type="string" />
		<cfparam name="checkbox5" default="" type="string" />
		<cfparam name="checkbox6" default="" type="string" />
		<cfparam name="checkbox7" default="" type="string" />
		<cfparam name="handsOn" default="" type="string" />
		<cfparam name="comments" default="" type="string" />
		
<!-- End of form parameters -->	
<p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; <a href="index.cfm">LBCC Library Home</a> &raquo; ABOUT &raquo; <a href="forms.cfm">Policies &amp; Request Forms</a> &raquo;Library Orientation Request</p><br />
<h1>Library Orientation Request</h1> 
<p>
Library orientations are given at both the LAC and PCC libraries. </p>
<br />
<p>Instructors are reminded to schedule library orientations prior to confirming a specific date in their syllabus. If you would like a customized orientation related to a specific class assignment, please include information about the assignment at the time of orientation request. Orientations <strong>MUST</strong> be scheduled at least two weeks in advance and instructors <strong>MUST</strong> accompany their class.
 </p><br />
 
 <p>Please direct related questions to:</p>
 <p><strong>LAC:</strong> Call Kaye Koppe ext. 4853, or email her at kkoppe@lbcc.edu.</p></p>
 <p><strong>PCC:</strong> Call the on-duty Reference Librarian at the PCC Library at ext. 3028, or email: pcclibrary@lbcc.edu
 </p><br />
 <p><strong>Please submit one form per class</strong>. If you do not receive confirmation concerning the date and time of the orientation within 3 business days, please call or email to confirm receipt of your request.</p><br />
 
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="orientation.cfc?method=emailinformation" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">I</span>nstructor's Information</strong></legend>
  
  	<p>
  	<label for="name" accesskey="i">Instructor's name (first &amp; last):<span class="required">*</span></label>
  	<cfinput type="text" name="name" message="Please enter an instructor name to continue" required="yes" id="name"  />
  	</p>
    
    <p>
    <label for="phoneNumber">Phone Number:</label>
    <input name="phoneNumber" id="phoneNumber" type="text" value="Enter your phone number here" />
    </p>
     
    <p>
    <label for="email">Email address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
  </fieldset>
  
  <fieldset>
  	<legend><strong><span class="underline">O</span>rientation Details</strong></legend>
                
    <p>
    <label for="courseNumber" accesskey="o">Course Name &amp; Number:</label>
    <input name="courseNumber" id="courseNumber" type="text" value="Enter the course name and number here" />
    </p>
     <p>
    <label for="courseNumber" accesskey="o">Section Number:</label>
    <input name="sectionNumber" id="sectionNumber" type="text" value="Enter the section number here" />
    </p>
    <p>
    <label for="numberStudents">Number of students enrolled in class:</label>
	<input name="numberStudents" id="numberStudents" type="text" value="Enter the number of students here" />
    </p> 
    <br />
    
    <p>This orientation is to be held at:</p>           
  	<p>
  	<input type="radio" name="campus"  checked="checked" id="LAC" value="LAC" />
    <label for="LAC">LAC Library</label> 
    
    <input type="radio" name="campus" id="PCC" value="PCC" />
    <label for="PCC">PCC Library</label>
    </p>
    <br /><br />
    <p><strong>Reminder</strong>: Orientation requests must be made <u>at least TWO weeks in advance</u> of preferred date.</p>     
	<p class="clear">
	<label for="orientationDate">Preferred Orientation Date:</label>
	<input name="orientationDate" id="orientationDate" type="text" value="Enter as mm/dd/yy" />
	</p>
                
    <p>
    <label for="alternateDate">Alternate Date:</label>
    <input name="alternateDate" id="alternateDate" type="text" value="Enter as mm/dd/yy" />
    </p>
    
    <p>Preferred Orientation Time:</p>
    <p>
    <label for="startTime">Start Time:</label>
    <input name="startTime" id="startTime" type="text" value="e.g. type 10 am" />        
  	</p>
          
    <p>
    <label for="endTime">End Time:</label>
    <input name="endTime" id="endTime" type="text" value="e.g. type 11 am" />
  	</p>
            
    <label for="assignmentfocus">Would you like to relate to a particular assignment in your class? If so, please provide a description of the student assignment:</label>
    <textarea name="focus" id="focus" rows="6" cols="51">Please describe the assignment</textarea>
    
    <br /><br />
    <p>Please cover:</p>
    <div id="checkbox">
    <input type="checkbox" value="yes" name="checkbox1" id="checkbox1" />
    <label for="checkbox1">Online Catalog</label><br />
    
    <input type="checkbox" value="yes" name="checkbox2" id="checkbox2" />
    <label for="checkbox2">Print Indexes</label><br />
    
    <input type="checkbox" value="yes" name="checkbox3" id="checkbox3" />
    <label for="checkbox3">Print Reference Resources</label><br />
                  
    <input type="checkbox" value="yes" name="checkbox4" id="checkbox4"/>
    <label for="checkbox4">Online Databases</label><br />
                    
    <input type="checkbox" value="yes" name="checkbox5" id="checkbox5" />
    <label for="checkbox5">Electronic Books</label><br />
    
    <input type="checkbox" value="yes" name="checkbox6" id="checkbox6" />
    <label for="checkbox6">Internet Resources</label><br />
					
	<input type="checkbox" value="yes" name="checkbox7" id="checkbox7" />
    <label for="checkbox7">Library Tour</label>
    </div>
    <br /><br />
                  
    <p class="clear">Hands-on session in computer lab:</p>
    <p>                 
    <input type="radio" checked="checked" value="No" name="handsOn" id="handsOnNo" />
    <label for="no">No</label> 
    
    <input type="radio" value="Yes" name="handsOn" id="handsOnYes" />
    <label for="yes">Yes </label>
    </p>
    <br /><br />
      
    <label>Additional Comments (optional):</label>
    <textarea name="comments" id="comments" rows="6" cols="51">Please enter any additional comments</textarea>    
</fieldset>
 
<fieldset>
	<legend><strong>S<span class="underline">u</span>bmit</strong></legend>	
    <input name="Submit" type="reset" value="Clear Form" />
    <input name="Submit" type="submit" value="Submit Form" accesskey="u" />
</fieldset>
       
</cfform>
      
<!-- *******************************************  End of form  ******************************************** -->
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


