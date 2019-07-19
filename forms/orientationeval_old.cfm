<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Evaluation of Orientation Form</title>
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
		select {
			width: 300px;
			}
			
		label {
			width: 20em;
			}
			
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>
	
	
	<!-- Form parameters -->	
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="course" default="" type="string" />
		<cfparam name="date" default="" type="string" />
		<cfparam name="librarian" default="" type="string" />
		<cfparam name="rating" default="" type="string" />
		<cfparam name="comments" default="" type="string" />
		<cfparam name="topicyes" default="" type="string" />
		<cfparam name="topicno" default="" type="string" />
		<cfparam name="coverage" default="" type="string" />
		<cfparam name="comments1" default="" type="string" />
		<cfparam name="directions" default="" type="string" />
		<cfparam name="comments2" default="" type="string" />
		<cfparam name="appropriate" default="" type="string" />
		<cfparam name="comments3" default="" type="string" />
		<cfparam name="helpful" default="" type="string" />
		<cfparam name="comments4" default="" type="string" />
		<cfparam name="improvement" default="" type="string" />
		<cfparam name="comments5" default="" type="string" />
		<cfparam name="comments6" default="" type="string" />
		<cfparam name="comments7" default="" type="string" />
		<cfparam name="comments8" default="" type="string" />
		<cfparam name="comments9" default="" type="string" />
		<cfparam name="LAC" default="" type="string" />
		<cfparam name="PCC" default="" type="string" />				
	<!-- End of form parameters -->	

</head>

<body>

<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Evaluation of Library Orientation</h1>
  
<h2 class="clear">Evaluation of Library Orientation</h2> 

<div id="main-text">

<p>Thank you for taking the time to fill out this evaluation of the library orientation that your class recently received. We value your comments as a means to improve our library instruction.</p>

<p>Please provide feedback below about your students' recent library orientation:</p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/orientationeval.cfc?method=emailinformation" onsubmit="return validate();" method="post">
  
  
 <fieldset>
  	<legend><strong>Evaluator's <span class="underline">I</span>nformation</strong> (accesskey: i)</legend>
  	
  	<p>
    <label for="name" accesskey="i">Your Name:<span class="required">*</span></label>
    <input name="name" id="name" type="text" value="Enter your name here" />
    </p>
    
    <p>
    <label for="email">Your email address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
    
    <p>
    <label for="course">Course Title &amp; Number:</label>
    <input name="course" id="course" type="text" value="Enter the course title and number here" />
    </p>
    
    <p>
    <label for="date">Orientation Date &amp; Time:</label>
    <input name="date" id="date" type="text" value="Enter as mm/dd/yy" />
    </p>
    
     <p>
    <label for="librarian">Librarians's Name:</label>
    <input name="librarian" id="librarian" type="text" value="Enter the librarian's name here" />
    </p>
 </fieldset>
  
 
 <fieldset>
  	<legend><strong><span class="underline">E</span>valuation</strong> (accesskey: e)</legend>  							
				
  	<p>
  	<label for="rating" accesskey="e">How would rate the overall presentation?</label>
	<select name="rating" id="rating">
				  <option value="Selectone" selected="selected">Select one</option>
				  <option value="Excellent">Excellent&nbsp;&nbsp;</option> 
                  <option value="Good">Good</option> 
                  <option value="Fair">Fair</option> 
                  <option value="Poor">Poor</option>                   
	</select>
	</p>
		
	<label class="clear">Comments, if any:</label>
    <textarea name="comments" id="comments" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br /><br />
	
	<p>Did you have a specific topic or materials that you asked to be covered?</p> 
	<p>                
    <input type="radio" class="radio" checked="checked" value="Yes" name="topic" id="topicyes" />
    <label for="topicyes">Yes</label> 
    
    <input type="radio" class="radio" value="No" name="topic" id="topicno" />
    <label for="topicno">No</label>
    </p>
    <br class="clear" /><br />
    
    <p>
	<label for="coverage">If yes, how would you rate coverage of this area?</label>
	<select name="coverage" id="coverage">
				  <option value='Selectone' selected="selected">Select one</option>
				  <option value="Excellent">Excellent</option> 
                  <option value="Good">Good</option> 
                  <option value="Fair">Fair</option> 
                  <option value="Poor">Poor</option>                   
	</select>
	</p><br />
	
	<label class="clear">Comments, if any:</label>
    <textarea name="comments1" id="comments1" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br />
	
	<p>
	<label for="directions">Were the librarian's directions and explanations clear and easy to understand?</label>
	<select name="directions" id="directions">
				  <option value='Selectone' selected="selected">Select one</option>
				  <option value="Excellent">Excellent</option> 
                  <option value="Good">Good</option> 
                  <option value="Fair">Fair</option> 
                  <option value="Poor">Poor</option>                   
	</select>
	</p><br />
	
	<label class="clear">Comments, if any:</label>
    <textarea name="comments2" id="comments2" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br />
	
	<p>
	<label for="appropriate">Was the presentation appropriate for the needs of the class?</label>
	<select name="appropriate" id="appropriate">
				  <option value='Selectone' selected="selected">Select one</option>
				  <option value="Excellent">Excellent</option> 
                  <option value="Good">Good</option> 
                  <option value="Fair">Fair</option> 
                  <option value="Poor">Poor</option>                   
	</select>
	</p><br />
	
	<label class="clear">Comments, if any:</label>
    <textarea name="comments3" id="comments3" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br />
	
	<p>
	<label for="helpful">Do you think that the students felt that the instruction was helpful?</label>
	<select name="helpful" id="helpful">
				  <option value='Selectone' selected="selected">Select one</option>
				  <option value="Yes">Yes</option> 
                  <option value="No">No</option>                            
	</select>
	</p><br />
	
	<label class="clear">Comments, if any:</label>
    <textarea name="comments4" id="comments4" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br />
	
	<p>
	<label for="improvement">Was there any indication of improvement in the quality of the students' work following the orientation?</label>
	<select name="improvement" id="improvement">
				  <option value='Selectone' selected="selected">Select one</option>
				  <option value="Yes">Yes</option> 
                  <option value="No">No</option>                                    
	</select>
	</p><br />
	
	<label class="clear">Comments, if any:</label>
    <textarea name="comments5" id="comments5" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br />
    
    <p>What was your favorite part of the presentation?</p>
    <label class="clear">Comments, if any:</label>
    <textarea name="comments6" id="comments6" rows="6" cols="51">Please enter your favorite part</textarea>
    <br /><br />
    
    <p>What would you add to the presentation?</p>
    <label class="clear">Comments, if any:</label>
    <textarea name="comments7" id="comments7" rows="6" cols="51">Please describe what you would add</textarea>
    <br /><br />
    
    <p>What would you take out of the the presentation?</p>
    <label class="clear">Comments, if any:</label>
    <textarea name="comments8" id="comments8" rows="6" cols="51">Please describe what you would take out</textarea>
    <br /><br />
    
    <p>Do you have any suggestions for improvement or other comments?</p>
    <label class="clear">Comments, if any:</label>
    <textarea name="comments9" id="comments9" rows="6" cols="51">Please enter your suggestions for improvement</textarea>
    <br /><br />    
</fieldset>	
    	

<fieldset>
	<p>Send this form to</p> 
	<p>                
    <input type="radio" class="radio" checked="checked" value="LAC" name="campus" id="LAC" accesskey="u"/>
    <label for="LAC">LAC</label> 
    
    <input type="radio" class="radio" value="PCC" name="campus" id="PCC" />
    <label for="PCC">PCC</label>
    </p>
    <br class="clear" /><br />
	<legend><strong>S<span class="underline">u</span>bmit</strong> (accesskey: u)</legend>
	<input name="Submit" class="submit" type="submit" value="Submit Form" />
    <input name="Submit" class="submit" type="reset" value="Reset" />
</fieldset>
       
</cfform>
    
      
<!-- *******************************************  End of form  ******************************************** -->

<a title="Library homepage" href="../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html"><strong>Library Homepage</strong></a>
              

</div>
</body>
</html>