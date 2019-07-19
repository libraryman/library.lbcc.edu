<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" /> 
	<meta name="robots" content="none,nofollow,noindex" />
	<title>Voyager Online Catalog Record Error Report Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	<style type="text/css">
		img.voyager {
			border: 1px solid #fff;
			width: 30px;
			height: 28px;
			}
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>


<!-- Form parameters -->
		<cfparam name="author" default="" type="string" />
		<cfparam name="title" default="" type="string" />
		<cfparam name="place" default="" type="string" />
		<cfparam name="publisher" default="" type="string" />
		<cfparam name="year" default="" type="string" />
		<cfparam name="error" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />
		<cfparam name="checkbox4" default="" type="string" />						
<!-- End of form parameters -->	

</head>

<body>


<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Catalog Error Report Form</h1>
  
<h2 class="clear">Voyager Online Catalog Record Error Report Form</h2> 

<div id="main-text">

<p>Use this form to report spelling errors, missing information, and inconsistencies.
Please use a separate request form for each record that has an error. </p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/caterrform.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">B</span>ook Information</strong> (accesskey: b)</legend>
  	  	  
  	<p>
  	<label for="author" accesskey="b">Author/Editor:</label>
  	<input name="author" id="author" type="text" value="Enter author/editor here" />
  	</p>
  	
  	<p>
  	<label for="title">Title:</label>
  	<input name="title" id="title" type="text" value="Enter title here" />
  	</p>
  	
  	<p>
  	<label for="place">Place of Publication:</label>
  	<input name="place" id="place" type="text" value="Enter place of publication here" />
  	</p>
  	
  	<p>
  	<label for="publisher">Publisher:</label>
  	<input name="publisher" id="publisher" type="text" value="Enter publisher here" />
  	</p>
  	
  	<p>
  	<label for="year">Year of Publication:</label>
  	<input name="year" id="year" type="text" value="Enter year of publication here" />
  	</p>
  	
  	<label for="error">Error Found:</label>
    <textarea name="error" id="error">Please describe the error</textarea>
    <br /><br />    	  	  	
 </fieldset>
 
 <fieldset>
  	<legend><strong><span class="underline">Y</span>our Information</strong> (accesskey: y)</legend>
  	
  	<p>
    <label for="name" accesskey="y">Your Name (first and last):<span class="required">*</span></label>
    <input name="name" id="name" type="text" value="Enter your name here" />
    </p>
    
    <p>
    <label for="email">Your Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
       	
	<p>I am currently (check all that apply):</p>
	<div id="checkbox">
    <input type="checkbox" class="checkbox" value="yes" name="checkbox1" id="checkbox1" />
    <label for="checkbox1">Student</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox2" id="checkbox2" />
    <label for="checkbox2">Faculty</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox3" id="checkbox3" />
    <label for="checkbox3">Staff</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox4" id="checkbox4" />
    <label for="checkbox4">Other</label><br />
    </div>
</fieldset>


<fieldset>
	<legend><strong>S<span class="underline">u</span>bmit</strong> (accesskey: u)</legend>
	<input name="Submit" class="submit" type="submit" value="Submit Form" accesskey="u"/>
    <input name="Submit" class="submit" type="reset" value="Start Over" />
</fieldset>
       
</cfform>
    
      
<!-- *******************************************  End of form  ******************************************** -->
 
 <a title="Voyager logo" href="http://voyager.lbcc.edu">
 <img src="../images/voyager_red.gif" alt="Viking ship button to go to Voyager" class="voyager" /></a>             
 <a title="Return to Voyager" href="http://voyager.lbcc.edu">Return to Voyager</a>
</div>
</body>
</html>