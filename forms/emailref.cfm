<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" /> 
	<meta name="robots" content="none,nofollow,noindex" />
	<title>Request for E-mail Reference Servic Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
	<style type="text/css">
		label {
			width: 18em;
			}
			
		textarea {
			width: 375px;
			height: 200px;
			}
	
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>
	
<!-- Form parameters -->	
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="phoneNumber" default="" type="string" />		
		<cfparam name="id" default="" type="string" />
		<cfparam name="status" default="" type="string" />
		<cfparam name="question" default="" type="string" />
		
<!-- End of form parameters -->	

</head>

<body>
		<a title="Library homepage" href="http://lib.lbcc.edu"><img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /></a>
		<h1>Library Forms:<br />
			Ask a Librarian</h1>
		<h2 class="clear">E-mail Reference Service Form</h2> 

<div id="main-text">
        
 <p>
 Use the form below to e-mail your question to a librarian. LBCC students, faculty, and staff should receive a response via e-mail within one business day. 
 </p>
  
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/emailref.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">Y</span>our Contact Information</strong> (accesskey: y)</legend>
  
  	<p>
  	<label for="name" accesskey="y">Your Name (first &amp; last):<span class="required">*</span></label>
  	<input name="name" id="name" type="text" value="Enter your first and last name" />
  	</p>
  	
  	<p>
    <label for="email">Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
    
    <p>
    <label for="phoneNumber">Phone Number:</label>
    <input name="phoneNumber" id="phoneNumber" type="text" value="Enter as xxx-xxx-xxxx" />
    </p>
    
    <p>
    <label for="id">Student/Faculty I.D. Number:<span class="required">*</span></label>
    <input name="id" id="id" type="text" value="Enter your 7-digit i.d. number" />
    </p>
    
    <p>
	<label for="status">Your Status</label>
	<select name="status" id="status">
		    <option value='Selectone' selected="selected">Select one</option>			
				  <option value="LBCC student">LBCC student</option> 
                  <option value="LBCC faculty">LBCC faculty</option>
                  <option value="LBCC staff">LBCC staff</option>
                  <option value="Other">Other</option>                                
	</select>
	</p>         
  </fieldset>
  
  <fieldset>
  	<legend><strong>Your <span class="underline">Q</span>uestion</strong> (accesskey: q)</legend>   
    <textarea name="question" id="question" rows="15" cols="51">Please enter your question</textarea> 
  </fieldset>	
  	     
<fieldset>
	<legend><strong><span class="underline">S</span>ubmit</strong> (accesskey: s)</legend>
	<input name="Submit" class="submit" type="submit" value="Ask a librarian" accesskey="u" />
    <input name="Submit" class="submit" type="reset" value="Reset" />
</fieldset>
       
</cfform>
      
<!-- *******************************************  End of form  ******************************************** -->

<a title="Library homepage" href="../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html">Library Homepage</a>

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