<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" /> 
	<meta name="robots" content="none,nofollow,noindex" />
	<title>Request for Library Orientation Form</title>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52654811-1', 'auto');
  ga('require', 'displayfeatures');

  ga('send', 'pageview');

</script>
    <link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	<style type="text/css">
		label {
			width: 18em;
			}
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>
	
<!-- Form parameters -->	
		<cfparam name="name" default="" type="string" />
		<cfparam name="phoneNumber" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="courseNumber" default="" type="string" />
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

</head>

<body>
		<a title="Library homepage" href="http://lib.lbcc.edu"><img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /></a>
		<h1>Library Forms:<br />PCC Orientation Request</h1>
		<h2 class="clear">PCC Library Orientation Request Form</h2> 

<div id="main-text">
        
 <p>
 Instructors may request orientations to PCC Library for 
 their classes. Please fill out one form per class. Instructors are reminded 
 to schedule library orientations before they list a specific date in 
 their syllabus. Orientations <strong>MUST</strong> be scheduled at least two weeks in 
 advance, and instructors <strong>MUST</strong> accompany their class.<br />
 </p>
 
 <p>Please direct related questions to:</p>
 <p><strong>PCC:</strong> Call the on-duty Reference Librarian at the PCC Library at ext. 3028, or email: pcclibrary@lbcc.edu<br />
 If you prefer to print and mail your form to PCC, get a <a href="/forms/orientationprintpcc.html">printable version 
 of the form</a>.</p>
 
                     
 <p>Please complete the form below and click on &quot;submit form.&quot; If you do not receive confirmation 
 concerning the date and time of the orientation within three business days, please call or email us to confirm 
 receipt of your request.</p>
 
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/orientation-pcc.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">I</span>nstructor's Information</strong> (accesskey: i)</legend>
  
  	<p>
  	<label for="name" accesskey="i">Instructor's name (first &amp; last):<span class="required">*</span></label>
  	<input name="name" id="name" type="text" value="Enter your name here" />
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
  	<legend><strong><span class="underline">O</span>rientation Details</strong> (accesskey: o)</legend>
                
    <p>
    <label for="courseNumber" accesskey="o">Course Name &amp; Number:</label>
    <input name="courseNumber" id="courseNumber" type="text" value="Enter the course name and number here" />
    </p>
    
    <p>
    <label for="numberStudents">Number of students in class:</label>
	<input name="numberStudents" id="numberStudents" type="text" value="Enter the number of students here" />
    </p> 
    <br />
    
    <p>This orientation is to be held at:</p>           
  	<p>  	    
    <input type="radio" class="radio" name="campus" id="PCC" value="PCC" />
    <label for="PCC">PCC Library</label>
    </p>
    <br />
        
	<br />
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
            
    <label for="focus">Would you like to relate to a particular assignment in your class? If so, please provide a description of the student assignment:</label>
    <textarea name="focus" id="focus" rows="6" cols="51">Please describe the assignment</textarea>
    
    <br /><br />
    <p>Please cover:</p>
    <div id="checkbox">
    <input type="checkbox" class="checkbox" value="yes" name="checkbox1" id="checkbox1" />
    <label for="checkbox1">Online Catalog</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox2" id="checkbox2" />
    <label for="checkbox2">Print Indexes</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox3" id="checkbox3" />
    <label for="checkbox3">Print Reference Resources</label><br />
                  
    <input type="checkbox" class="checkbox" value="yes" name="checkbox4" id="checkbox4"/>
    <label for="checkbox4">Online Databases</label><br />
                    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox5" id="checkbox5" />
    <label for="checkbox5">Electronic Books</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox6" id="checkbox6" />
    <label for="checkbox6">Internet Resources</label><br />
					
	<input type="checkbox" class="checkbox" value="yes" name="checkbox7" id="checkbox7" />
    <label for="checkbox7">Library Tour</label>
    </div>
    <br /><br />
                  
    <p class="clear">Hands-on session in computer lab:</p>
    <p>                 
    <input type="radio" class="radio" checked="checked" value="No" name="handsOn" id="handsOnNo" />
    <label for="no">No</label> 
    
    <input type="radio" class="radio" value="Yes" name="handsOn" id="handsOnYes" />
    <label for="yes">Yes </label>
    </p>
    <br /><br />
      
    <label class="clear">Additional Comments (optional):</label>
    <textarea name="comments" id="comments" rows="6" cols="51">Please enter any additional comments</textarea>    
</fieldset>
 
<fieldset>
	<legend><strong>S<span class="underline">u</span>bmit</strong> (accesskey: u)</legend>
	<input name="Submit" class="submit" type="submit" value="Submit Form" accesskey="u" />
    <input name="Submit" class="submit" type="reset" value="Reset" />
</fieldset>
       
</cfform>
      
<!-- *******************************************  End of form  ******************************************** -->

<a title="Library homepage" href="../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html">Library Homepage</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
              
<a title="Get form to evaluate your last orientation" href="orientationeval.cfm">
<img src="/images/forms.gif" alt="Paper forms" width="57" height="56" border="0" /></a> 
<a title="Get form to evaluate your last orientation" href="orientationeval.cfm">Get Form to Evaluate Your Last Library Orientation</a>

</div>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16130388-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</body>
</html>