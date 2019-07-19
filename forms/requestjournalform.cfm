<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Request Journal Transfer Form</title>
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
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>


<!-- Form parameters -->
		<cfparam name="campus" default="" type="string" />
		<cfparam name="available" default="" type="string" />		
		<cfparam name="title" default="" type="string" />
		<cfparam name="volume" default="" type="string" />
		<cfparam name="date" default="" type="string" />
		<cfparam name="comments" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="id" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="phone" default="" type="string" />
		<cfparam name="department" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />						
<!-- End of form parameters -->	

</head>

<body>


<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Request a Journal<br />From Other Campus</h1>
  
<h2 class="clear"> Request a Journal Issue From Other Campus</h2> 

<div id="main-text">

<p>To request a journal issue that is only available at a different LBCC campus to be transferred to the campus you use, 
please provide the requested information. Materials usually take from two to three days to arrive. Ask at your 
Circulation Desk for the item.</p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/requestjournalform.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong><span class="underline">J</span>ournal Information</strong> (accesskey: j)</legend>
  	
  	<p>Current item location:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="campus" id="LAC" value="LAC (please transfer to PCC for pickup)"  />
  	<label for="LAC" accesskey="j">LAC (please transfer to PCC for pickup)</label>
  	
  	<input type="radio" class="radio" name="campus" id="PCC" value="PCC (please transfer to LAC for pickup)" />
  	<label for="PCC">PCC (please transfer to LAC for pickup)</label>
  	</p>
  	<br class="clear" /><br />
  	
  	<p>Current item status:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="available" id="available" value="Available"  />
  	<label for="available">Available</label>
  	</p>
  	<br class="clear" />
  	<p>Please note: The item must currently be available, and it must not be a reference or reserve item in order for it to be
  	transferred to you.</p>  	    
  	
  	<p>
  	<label for="title">Journal Title:</label>
  	<input name="title" id="title" type="text" value="Enter the journal title here" />
  	</p>
  	
  	<p>
  	<label for="volume">Volume and Issue Number:</label>
  	<input name="volume" id="volume" type="text" value="Enter the volume and issue number here" />
  	</p>
  	
  	<p>
  	<label for="date">Date:</label>
  	<input name="date" id="date" type="text" value="Enter the date here" />
  	</p>
  	
  	<label class="clear">Comments, if any:</label>
    <textarea name="comments" id="comments" rows="6" cols="51">Please enter your comments</textarea>
    <br /><br /><br />  		  		
 </fieldset>
 
 <fieldset>
  	<legend><strong><span class="underline">R</span>equestor's Information</strong> (accesskey: r)</legend>
  	
  	<p>
    <label for="name" accesskey="r">Your Name (first and last):<span class="required">*</span></label>
    <input name="name" id="name" type="text" value="Enter your name here" />
    </p>
    
    <p>
    <label for="id">Your I.D. Number:</label>
    <input name="id" id="id" type="text" value="Enter your id number here" />
    </p>
    
    <p>
    <label for="email">Email address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
    
     <p>
    <label for="phone">Phone Number:</label>
    <input name="phone" id="phone" type="text" value="Enter your phone number here" />
    </p>
       	
  <p>
	<label for="department">Department/Major:</label>
	<select name="department" id="department">
		    <option value='Selectone' selected="selected">Select one</option>
			<optgroup label="School of Business and Social Science">
				  <option value="Accounting">Accounting</option> 
                  <option value="Administration">Administration of Justice</option>
                  <option value="Anthropology">Anthropology</option>
                  <option value="Business General">Business General</option>
                  <option value="Business International">Business International</option>
                  <option value="Business Law">Business Law</option>
                  <option value="CBIS">Computer Business Systems - CBIS</option>
                  <option value="Comp Apps Office Tech">Computer Applications/Office Tech</option>
                  <option value="Culinary Arts">Culinary Arts</option> 
                  <option value="Economics">Economics</option>
                  <option value="Fire Science">Fire Science</option>
                  <option value="Geography">Geography</option>
                  <option value="History">History</option>
                  <option value="Human Services/Social Work">Human Services/Social Work</option> 
                  <option value="Management">Management</option>
                  <option value="Marketing">Marketing</option>
                  <option value="Philosophy">Philosophy</option> 
                  <option value="Political Science">Political Science</option>
                  <option value="Public Administration">Public Administration</option>
                  <option value="Real Estate">Real Estate</option>
                  <option value="Sociology">Sociology</option> 
                  <option value="Travel and Tourism">Travel and Tourism</option>         
            </optgroup>
            <optgroup label="School of Creative Arts and Social Applied Sciences">
            	  <option value="Child Adult Development">Child &amp; Adult Development</option>
            	  <option value="Art">Art</option>
            	  <option value="Creative Arts">Creative Arts</option> 
                  <option value="Dance">Dance</option>
                  <option value="Family and Consumer">Family &amp; Consumer Studies</option>
                  <option value="Fashion Design">Fashion Design</option> 
                  <option value="Film">Film</option>                   
                  <option value="Food and Nutrition">Food &amp; Nutrition</option>
                  <option value="Interior Design">Interior Design</option> 
                  <option value="Music">Music</option>
                  <option value="Photography">Photography</option>
                  <option value="Radio/Television">Radio/Television</option>
                  <option value="Speech Communication">Speech Communication</option>
                  <option value="Theatre Arts">Theatre Arts</option>    
            </optgroup>
            <optgroup label="School of Health and Science">
            	  <option value="Allied Health">Allied Health</option>
            	  <option value="Astronomy">Astronomy</option>
            	  <option value="Chemistry">Chemistry</option>
            	  <option value="Diagnostic Med Imag">Diagnostic Medical Imaging</option>
            	  <option value="Emergency Med Tech">Emergency Medical Technology</option> 
            	  <option value="Environmental Science">Environmental Science</option>
            	  <option value="Geology">Geology</option>
                  <option value="Health Education">Health Education</option>
            	  <option value="Life Science">Life Science</option>
            	  <option value="Math">Mathematics</option>
            	  <option value="Medical Assisting">Medical Assisting</option>                   
                  <option value="Nursing">Nursing</option> 
            	  <option value="Physics">Physics</option>
            	  <option value="Physiology">Physiology</option>     
             </optgroup>
             <optgroup label="School of Language Arts">
                  <option value="English">English</option>
                  <option value="ESL">English as a Second Language</option>
                  <option value="Foreign Language">Foreign Language</option>
                  <option value="Journalism">Journalism</option>
              </optgroup>
              <optgroup label="School of Learning Resources">    
                  <option value="Basic Adult Ed">Basic Adult Ed</option> 
                  <option value="Learning and Acad Resources">Learning &amp; Academic Resources</option>
                  <option value="Library">Library</option>
                  <option value="Distance Learning">Distance Learning</option> 
               </optgroup>
               <optgroup label="School of Physical Education">
               	  <option value="Physical Education">Physical Education</option>
               </optgroup>
               <optgroup label="School of Trades and Industrial Techs">               	       
                  <option value="Air Conditioning">Air Conditioning and Refrigeration</option>
                  <option value="Architecture">Architectural Design</option>                                                       
                  <option value="Auto Body Repair">Auto Body Repair</option>  
                  <option value="Automotive">Automotive Mechanics</option> 
                  <option value="Aviation">Aviation</option> 
                  <option value="Carpentry">Carpentry</option>
                  <option value="Diesel Mechanics">Diesel Mechanics</option>                      
                  <option value="Drafting">Drafting</option>                  
                  <option value="Electricity">Electricity</option> 
                  <option value="Horticulture">Horticulture</option>  
                  <option value="Machine Tool">Machine Tool</option> 
                  <option value="Sheet Metal">Sheet Metal</option>                                       
                  <option value="Welding">Welding</option>  
               </optgroup>
               <optgroup label="Student Services">
               	  <option value="Counseling">Counseling</option>
               </optgroup>	  
               	   <option value="Undeclared">Undeclared</option>   
                   
	</select>
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

<a title="Library homepage" href="../index.html"><img src="../images/home.gif" alt="Homepage" class="noborder" /></a>
			<a title="Library homepage" href="../index.html"><strong>Library Homepage</strong></a>
              

</div>
</body>
</html>