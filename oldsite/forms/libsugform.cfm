<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Library Suggestion Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	
	<style type="text/css">
		textarea {
			width: 500px;
			height: 200px;
			}
	</style>
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>
		
	<!-- Form parameters -->	
		<cfparam name="suggestions" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="phone" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />		
	<!-- End of form parameters -->	

</head>

<body>

<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Library Suggestions</h1>
  
<h2 class="clear">Library Suggestion Form</h2>

<img src="../images/suggestionbox2.gif" style="float: right; width: 101px; height: 49px; border: 0; margin-left: 1em;" /> 

<div id="main-text">

<p>The Library is interested in hearing your comments and ideas about our services and collections.
Please take a moment to suggest ways in which we can better serve your needs. </p>
        
<p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/libsugform.cfc?method=emailinformation" onsubmit="return validate();" method="post">
  
  
 <fieldset>
  	<legend><strong>Su<span class="underline">g</span>gestions</strong> (accesskey: g)</legend>
  	
  	<label for="suggestions" accesskey="g">Your suggestions:</label>
    <textarea name="suggestions" id="suggestions" rows="10" cols="80">Please enter your suggestions</textarea>
    <br /><br />  	  	
 </fieldset>
  
 
 <fieldset>
  	<legend><strong><span class="underline">Y</span>our Information</strong> (accesskey: y)</legend>
  	
  	<p>To better serve you and provide a response to your suggestions, please provide us with the following information:</p>
  	
  	<p>
    <label for="name" accesskey="y">Your Name (first and last):<span class="required">*</span></label>
    <input name="name" id="name" type="text" value="Enter your name here" />
    </p>
    
    <p>
    <label for="email">Your Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
    
    <p>
    <label for="phone">Your Phone Number:</label>
    <input name="phone" id="phone" type="text" value="Enter your phone number here" />
    </p>
    
    <p>I am currently (check all that apply):</p>
	<div id="checkbox">
    <input type="checkbox" class="checkbox" value="yes" name="checkbox1" id="checkbox1" />
    <label for="checkbox1">Student</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox2" id="checkbox2" />
    <label for="checkbox2">Faculty</label><br />
    
    <input type="checkbox" class="checkbox" value="yes" name="checkbox3" id="checkbox3" />
    <label for="checkbox3">Staff</label><br />
    </div>
  </fieldset>
  
  <fieldset>
	<legend><strong>S<span class="underline">u</span>bmit</strong> (accesskey: u)</legend>
	<input name="Submit" class="submit" type="submit" value="Submit Form" accesskey="u" />
    <input name="Submit" class="submit" type="reset" value="Start Over" />
  </fieldset>	
    	
       
</cfform>
    
      
<!-- *******************************************  End of form  ******************************************** -->

<a title="Library homepage" href="http://lib.lbcc.edu/index.html"><img src="../../../../libweb/libweb/web-content/images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="http://lib.lbcc.edu/index.html"><strong>Library Homepage</strong></a>
              

</div>
</body>
</html>