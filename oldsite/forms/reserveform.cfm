<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Request Book Transfer Form</title>
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
			width: 100px;
			}
			
		p.copyright {
			margin-left: 5%;
			margin-right: 5%;
			border: 6px double #820204;
			padding: 10px;
			}
			
		.highlight {
			color: #000;
			background-color: #ffc;
			}
	</style>	
	<script type="text/javascript" language="JavaScript" src="validate-forms.js"></script>


<!-- Form parameters -->
		<cfparam name="campus" default="" type="string" />
		<cfparam name="checkbox1" default="" type="string" />		
		<cfparam name="checkbox2" default="" type="string" />
		<cfparam name="checkbox3" default="" type="string" />
		<cfparam name="name" default="" type="string" />
		<cfparam name="email" default="" type="string" />
		<cfparam name="phone" default="" type="string" />
		<cfparam name="course" default="" type="string" />
		
		<cfparam name="owner" default="" type="string" />
		<cfparam name="circulating" default="" type="string" />
		<cfparam name="takeoout" default="" type="string" />
		<cfparam name="author" default="" type="string" />
		<cfparam name="title" default="" type="string" />
		<cfparam name="call" default="" type="string" />
		<cfparam name="date" default="" type="string" />
		<cfparam name="edition" default="" type="string" />
		<cfparam name="comments" default="" type="string" />
				
		<cfparam name="owner1" default="" type="string" />
		<cfparam name="circulating1" default="" type="string" />
		<cfparam name="takeoout1" default="" type="string" />
		<cfparam name="author1" default="" type="string" />
		<cfparam name="title1" default="" type="string" />
		<cfparam name="call1" default="" type="string" />
		<cfparam name="date1" default="" type="string" />
		<cfparam name="edition1" default="" type="string" />
		<cfparam name="comments1" default="" type="string" />
		
		<cfparam name="owner2" default="" type="string" />
		<cfparam name="circulating2" default="" type="string" />
		<cfparam name="takeoout2" default="" type="string" />
		<cfparam name="author2" default="" type="string" />
		<cfparam name="title2" default="" type="string" />
		<cfparam name="call2" default="" type="string" />
		<cfparam name="date2" default="" type="string" />
		<cfparam name="edition2" default="" type="string" />
		<cfparam name="comments2" default="" type="string" />
			
									
<!-- End of form parameters -->	

</head>

<body>


<img src="../images/redliblogosm.gif" class="logo" alt="Long Beach City College, California, Library" /> 

<h1>Library Forms:<br />Place Item on Reserve</h1>
  
<h2 class="clear">Place Item on Reserve at PCC or LAC Library</h2> 

<div id="main-text">

<p>Instructions: You may complete this form and submit it online for library-owned materials. For personal materials 
or photocopies, complete the form, print it and submit it in person with your personal materials or photocopies to the 
Reserve Desk of the LAC or PCC Library.  <span class="highlight"><strong>Note:</strong> When processing personal copies, it is necessary for 
the Library to attach identifying labels and security strips which could permanently alter the appearance of the material.</span> 
Due to staff shortage, please allow 3-4 days for processing.</p>

<p>Please submit a separate form for each course.</p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/reserveform.cfc?method=emailinformation" onsubmit="return validate();" method="post">        
  
  <fieldset>
  	<legend><strong>Information About <span class="underline">Y</span>ou and Your Course </strong>(accesskey: y)</legend>
  	  	  	  	
  	<p>Place on reserve at:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="campus" id="LAC" value="LAC Library" />
  	<label for="LAC" accesskey="y">LAC Library</label>
  	
  	<input type="radio" class="radio" name="campus" id="PCC" value="PCC Library" />
  	<label for="PCC">PCC Library</label>
  	</p>
  	<br class="clear" /><br />
  	
  	<p>Place item on reserve for (check all that apply):</p>
	<div id="checkbox">
    <input type="checkbox" class="checkbox" value="fall" name="checkbox1" id="checkbox1" />
    <label for="checkbox1">Fall</label><br />
    
    <input type="checkbox" class="checkbox" value="spring" name="checkbox2" id="checkbox2" />
    <label for="checkbox2">Spring</label><br />
    
    <input type="checkbox" class="checkbox" value="summer" name="checkbox3" id="checkbox3" />
    <label for="checkbox3">Summer</label><br />
    </div>
    
    <p>
    <label for="name">Your Name (first and last):<span class="required">*</span></label>
    <input name="name" id="name" type="text" value="Enter your name here" />
    </p>    
    
    <p>
    <label for="email">Email Address:<span class="required">*</span></label>
    <input name="email" id="email" type="text" value="Enter your email address here" />
    </p>
    
     <p>
    <label for="phone">Phone Number:</label>
    <input name="phone" id="phone" type="text" value="Enter your phone number here" />
    </p>
    
    <p>
    <label for="course">Course Number and Name:</label>
    <input name="course" id="course" type="text" value="Enter the course name and number here" />
    </p>
 </fieldset>
    
    
  <fieldset>
  	<legend><strong>Information about Book or Photocopy No. <span class="underline">1</span> </strong>(accesskey: 1)</legend>   
      	
  	<p>Book Belongs to:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="owner" id="library" value="library"  />
  	<label for="library" accesskey="1">Library Owns</label>
  	
  	<input type="radio" class="radio" name="owner" id="personal" value="personal"  />
  	<label for="personal">Your Personal Copy/Photocopy</label>
  	</p>
  	<br class="clear" />
  	
  	<p>To meet the needs of your students, please choose a circulating-time period from the drop-down box.</p>
  		<p>
	<label for="circulating">Circulation Period:</label>
	<select name="circulating" id="circulating">
				  <option value='SelectOne' selected="selected">Select one</option>
				  <option value="oneHour">1 hour</option> 
                  <option value="twoHours">2 hours</option> 
                  <option value="fourHours">4 hours</option> 
                  <option value="oneDay">1 day</option> 
                  <option value="threeDays">3 days</option> 
                  <option value="sevenDays">7 days</option> 
	</select>
	</p>
	
	<p>If this is your personal copy, may the student take the item out of the Library?</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="takeout" id="yes" value="yes" />
  	<label for="yes">Yes</label>
  	
  	<input type="radio" class="radio" name="takeout" id="no" value="no" />
  	<label for="no">No</label>
  	</p>
  	<br class="clear" /><br />
  	 	    
  	<p>
  	<label for="author">Author/Editor:</label>
  	<input name="author" id="author" type="text" value="Enter the author/editor here" />
  	</p>
  	
  	<p>
  	<label for="title">Title:</label>
  	<input name="title" id="title" type="text" value="Enter the title here" />
  	</p>
  	
  	<p>
  	<label for="call">Call Number (if Library book):</label>
  	<input name="call" id="call" type="text" value="Enter the call number here" />
  	</p>
  	
  	<p>
  	<label for="date">Date of Publication:</label>
  	<input name="date" id="date" type="text" value="Enter the date of publication here" />
  	</p>
  	
  	<p>
  	<label for="edition">Edition:</label>
  	<input name="edition" id="edition" type="text" value="Enter the edition here" />
  	</p>
  	
  	<p>
  	<label for="comments">Comments:</label>
  	<input name="comments" id="comments" type="text" value="Enter your comments here"/>
  	</p>  		
 </fieldset>
 
 
  <fieldset>
  	<legend><strong>Information about Book or Photocopy No. <span class="underline">2 </span>(for course listed above) </strong>(accesskey: 2)</legend>   
      	
  	<p>Book Belongs to:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="owner1" id="library1" value="library"  />
  	<label for="library1" accesskey="2">Library Owns</label>
  	
  	<input type="radio" class="radio" name="owner1" id="personal1" value="personal"  />
  	<label for="personal1">Your Personal Copy/Photocopy</label>
  	</p>
  	<br class="clear" />
  	
  	<p>To meet the needs of your students, please choose a circulating-time period from the drop-down box.</p>
  		<p>
	<label for="circulating1">Circulation Period:</label>
	<select name="circulating1" id="circulating1">
				  <option value='SelectOne' selected="selected">Select one</option>
				  <option value="oneHour">1 hour</option> 
                  <option value="twoHours">2 hours</option> 
                  <option value="fourHours">4 hours</option> 
                  <option value="oneDay">1 day</option> 
                  <option value="threeDays">3 days</option> 
                  <option value="sevenDays">7 days</option> 
	</select>
	</p>
	
	<p>If this is your personal copy, may the student take the item out of the Library?</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="takeout1" id="yes1" value="yes" />
  	<label for="yes1">Yes</label>
  	
  	<input type="radio" class="radio" name="takeout1" id="no1" value="no" />
  	<label for="no1">No</label>
  	</p>
  	<br class="clear" /><br />
  	 	    
  	<p>
  	<label for="author1">Author/Editor:</label>
  	<input name="author1" id="author1" type="text" value="Enter the author/editor here" />
  	</p>
  	
  	<p>
  	<label for="title1">Title:</label>
  	<input name="title1" id="title1" type="text" value="Enter the title here" />
  	</p>
  	
  	<p>
  	<label for="call1">Call Number (if library book):</label>
  	<input name="call1" id="call1" type="text" value="Enter the call number here" />
  	</p>
  	
  	<p>
  	<label for="date1">Date of Publication:</label>
  	<input name="date1" id="date1" type="text" value="Enter the date of publication here" />
  	</p>
  	
  	<p>
  	<label for="edition1">Edition:</label>
  	<input name="edition1" id="edition1" type="text" value="Enter the edition here" />
  	</p>
  	
  	<p>
  	<label for="comments1">Comments:</label>
  	<input name="comments1" id="comments1" type="text" value="Enter your comments here" />
  	</p>  		
 </fieldset>
 
 
  <fieldset>
  	<legend><strong>Information about Book or Photocopy No. <span class="underline">3</span> (for course listed above) </strong>(accesskey: 3)</legend>   
      	
  	<p>Book Belongs to:</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="owner2" id="library2" value="library"  />
  	<label for="library2" accesskey="3">Library Owns</label>
  	
  	<input type="radio" class="radio" name="owner2" id="personal2" value="personal"  />
  	<label for="personal2">Your Personal Copy/Photocopy</label>
  	</p>
  	<br class="clear" />
  	
  	<p>To meet the needs of your students, please choose a circulating-time period from the drop-down box.</p>
  		<p>
	<label for="circulating2">Circulation Period:</label>
	<select name="circulating2" id="circulating2">
				  <option value='SelectOne' selected="selected">Select one</option>
				  <option value="oneHour">1 hour</option> 
                  <option value="twoHours">2 hours</option> 
                  <option value="fourHours">4 hours</option> 
                  <option value="oneDay">1 day</option> 
                  <option value="threeDays">3 days</option> 
                  <option value="sevenDays">7 days</option> 
	</select>
	</p>
	
	<p>If this is your personal copy, may the student take the item out of the Library?</p>
  	<p>
  	<input type="radio" class="radio" checked="checked" name="takeout2" id="yes2" value="yes" />
  	<label for="yes2">Yes</label>
  	
  	<input type="radio" class="radio" name="takeout2" id="no2" value="no" />
  	<label for="no2">No</label>
  	</p>
  	<br class="clear" /><br />
  	 	    
  	<p>
  	<label for="author2">Author/Editor:</label>
  	<input name="author2" id="author2" type="text" value="Enter the author/editor here" />
  	</p>
  	
  	<p>
  	<label for="title2">Title:</label>
  	<input name="title2" id="title2" type="text" value="Enter the title here" />
  	</p>
  	
  	<p>
  	<label for="call2">Call Number (if library book):</label>
  	<input name="call2" id="call2" type="text" value="Enter the call number here" />
  	</p>
  	
  	<p>
  	<label for="date2">Date of Publication:</label>
  	<input name="date2" id="date2" type="text" value="Enter the date of publication here" />
  	</p>
  	
  	<p>
  	<label for="edition2">Edition:</label>
  	<input name="edition2" id="edition2" type="text" value="Enter the edition here" />
  	</p>
  	
  	<p>
  	<label for="comments2">Comments:</label>
  	<input name="comments2" id="comments2" type="text" value="Enter your comments here" />
  	</p>  		
 </fieldset>
 
  
<p class="copyright"><strong>NOTICE: WARNING CONCERNING COPYRIGHT RESTRICTIONS FOR PHOTOCOPIES:</strong><br />The copyright 
law of the United States (U.S. Code Title 17) governs the making of photocopies or other reproductions of copyrighted 
material. Under certain conditions specified in the law, libraries and archives are authorized to furnish a photocopy or other 
reproduction. One of these specified conditions is that the photocopy or reproduction is not to be used for any purpose other 
than scholarship or research. If a user makes a request for, or later uses, a photocopy or reproduction for purposes 
in excess of "fair use", that user may be liable for copyright infringement. This institution reserves the right to 
refuse to accept copies, if in its judgment, placement of the photopies would involve violation of the copyright law. 
Photocopied pages from a work may not represent more than 10% of the work, one article from a journal, or one chapter 
from a book. For more information on copyright law and reserve materials see US Code Title 17 Section 108.</p>


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