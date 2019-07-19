<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta name="robots" content="none,nofollow,noindex" /> 
	<title>Request Book Transfer Form</title>
	<link rel="stylesheet" type="text/css" media="screen" href="forms.css" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52654811-1', 'auto');
  ga('require', 'displayfeatures');

  ga('send', 'pageview');

</script>
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
Please allow 48 hours for processing.</p>

<p>Please submit a separate form for each course.</p>
        
 <p><span class="required">*</span> denotes required</p> 
          
 
 
 <!-- *************************** start of form   ************************************* --> 
 
  <cfform name="myform" action="components/reserveform.cfc?method=emailinformation"  method="post">        

    
    
  <fieldset>
  	<legend><strong>Information about Book or Photocopy No. <span class="underline">1</span> </strong>(accesskey: 1)</legend>   

  	<cfinput type="text"  name="owner" message="This is a test" required="yes" id="personal"  />
  	<label for="personal">Your Personal Copy/Photocopy</label>


 

 


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