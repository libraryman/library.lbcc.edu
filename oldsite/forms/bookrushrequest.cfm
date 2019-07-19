<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" /> 
	<title>Rush-Processing of a Book Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	<style type="text/css">
		ol {
			padding-left: 0;
			margin-left: 5%;
			}
			
		ol li {
			margin-bottom: 8px;
			}
	
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>


<!-- Form parameters -->
		<cfparam name="title" default="" type="string" />	
		<cfparam name="author" default="" type="string" />
		<cfparam name="call" default="" type="string" />
		<cfparam name="campus" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="id" default="" type="string" />
		<cfparam name="phone" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />						
<!-- End of form parameters -->	

</head>

<body>

<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Rush-Process Book Form</h1>
  
<h2 class="clear">Request Rush-Processing of a Book Recently Received</h2> 

<div id="main-text">

<p>While searching the Long Beach City College online catalog, you may see a record for an item (CD, book, etc.) with its location as "LAC TECH SERV ref" and availability "check shelf" or "LIB. USE ONLY." You may request that the item be <strong>made available</strong> to you. The item will be held for you at the Circulation Desk at the Liberal Arts Campus Library or transferred to the Circulation Desk at the Pacific Coast Campus Library. </p>

<p>Guidelines for requesting the rush-processing of a book:</p>

<ol>
	<li>You must have a valid, current Long Beach City College staff or student identification card.</li>
	<li>Only circulating books or CDs will be transferred to the PCC Library Circulation Desk.</li>
	<li>Reference materials will be placed at the LAC Library "REFERENCE NEW BOOKS" shelf, located behind the Reference Desk.</li>
	<li>You may inquire at the LAC or PCC Lbrary Circulation or Reference Desk about the item's availability <em><strong>after</strong></em> 48 hours of placing a request.</li>
	<li>Items that are on order or that are located in departments other than LAC TECH SERV ref. will not be rush-processed. Examples: PCC in transit, Library Office, Media Services, and CLAS</li>
</ol>

<p>Please complete the form below:</p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/bookrushrequest.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">B</span>ook Information</strong> (accesskey: b)</legend>
  	  	  	
  	<p>
  	<label for="title" accesskey="b">Title:</label>
  	<cfinput type="text" name="title" message="Please enter the title" required="yes" id="title" />
  	</p>
  
  	<p>
  	<label for="author">Author/Editor:</label>
  	<input name="author" id="author" type="text" value="Enter author/editor here" />
  	</p>
  	  	  	
  	<p>
  	<label for="call">Call Number:</label>
  	<input name="call" id="call" type="text" value="Enter call number here" />
  	</p>
  	
  	<p>I will pick up this item at:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="campus" id="LAC" value="LAC" />
  	<label for="LAC">LAC</label>
  	
  	<input type="radio" class="radio" name="campus" id="PCC" value="PCC" />
  	<label for="PCC">PCC</label>
  	</p>
  	<br class="clear" /><br />
  	  	  	  	
 </fieldset>
 
 <fieldset>
  	<legend><strong><span class="underline">Y</span>our Information</strong> (accesskey: y)</legend>
  	
  	<p>
    <label for="name" accesskey="y">Your Name (first and last):<span class="required">*</span></label>
    <cfinput type="text" name="name" message="Please fill in your first and last name" required="yes" id="name" />
    </p>
       
    <p>
    <label for="email">Your Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" />
    </p>
    
    <p>
    <label for="id">Your I.D. Number:</label>
    <input name="id" id="id" type="text" value="Enter your id number here" />
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
	<input name="Submit" class="submit" type="submit" value="Submit Form" accesskey="u"/>
    <input name="Submit" class="submit" type="reset" value="Start Over" />
</fieldset>
       
</cfform>
    
      
<!-- *******************************************  End of form  ******************************************** -->
 <a title="Library homepage" href="../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html"><strong>Library Homepage</strong></a>            

</div>
</body>
</html>