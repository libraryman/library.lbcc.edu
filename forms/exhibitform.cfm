<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Request to Mount an Exhibit Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	<style type="text/css">	
		label {
			width: 250px;
			}	
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>

<!-- Form parameters -->
		<cfparam name="description" default="" type="string" />
		<cfparam name="items" default="" type="string" />		
		<cfparam name="period" default="" type="string" />
		<cfparam name="library" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="group" default="" type="string" />
		<cfparam name="phone" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />						
<!-- End of form parameters -->	

</head>

<body>

<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Liberal Arts Campus Exhibit Request</h1>
  
<h2 class="clear">Request to Mount an Exhibit in the LAC Library</h2> 

<div id="main-text">

<p><strong>Please note:</strong> The Library is not responsible for the loss or damage of items while they are on display. Those who display must provide their own insurance for items used in the display.</p>

<p>Please complete the entire form.</p>
        
 <p><span class="required">*</span> denotes required</p> 
            
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/exhibitform.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">D</span>isplay Details</strong> (accesskey: d)</legend>  	
  	    
  	<label for="description">Description of Display:</label>
    <textarea name="description" id="description" rows="6" cols="51" accesskey="d">Please enter description of display</textarea>
    <br /><br /><br />
    
    <label for="items">Items to Be Displayed:</label>
    <textarea name="items" id="items" rows="6" cols="51">Please enter items to display</textarea>
    <br /><br /><br />
  	  	
  	<p>
  	<label for="period">Display Period:</label>
  	<input name="period" id="period" type="text" value="Enter time period here" />
  	</p>
  	
  	<p>
  	<label for="library">Will Library Materials Be Used in Display?</label>
  	<input name="library" id="library" type="text" value="Enter Library materials here" />
  	</p>  	  		
 </fieldset>
 
 <fieldset>
  	<legend accesskey="e"><strong><span class="underline">E</span>xhibitor's Information</strong> (accesskey: e)</legend>
  	
  	<p>
  	<label for="name" accesskey="e">Person Responsible for Display:<span class="required">*</span></label>
  	<input name="name" id="name" type="text" value="Enter name here" />
  	</p>
  	
  	<p>
    <label for="email">Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter email address here" />
    </p>
  	
  	<p>
    <label for="group">Name of Class, Group, or Organization:</label>
    <input name="group" id="group" type="text" value="Enter name here" />
    </p>
    
    <p>
    <label for="phone">Phone Number:</label>
    <input name="phone" id="phone" type="text" value="Enter phone number here" />
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
	<input name="Submit" class="submit" type="submit" value="Submit Form" accesskey="u"/>
    <input name="Submit" class="submit" type="reset" value="Start Over" />
</fieldset>
       
</cfform>
    
      
<!-- *******************************************  End of form  ******************************************** -->

<p>[<a title="Get more information about exhibits" href="../policies/exhibits.html">Get more information about exhibits</a>]</p>

<a title="Library homepage" href="http://../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html"><strong>Library Homepage</strong></a>
              

</div>
</body>
</html>