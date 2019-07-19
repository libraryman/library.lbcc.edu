<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<meta name="author" content="Monica White" />
<meta name="robots" content="nofollow,noindex" />
<title>Library 1</title>


<!-- Here are the links to the external style sheets for various media -->

<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<link rel="stylesheet" type="text/css" media="print" href="print.css" />
<link rel="stylesheet" type="text/css" media="aural" href="aural.css" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<style type="text/css">

#main-text {
	margin-left: 15%; 
	margin-right: 15%;
	}

table {
	margin-left: auto;
	margin-right: auto;	
	border: 0px;
	border-collapse: collapse;
	padding: 5px;
	}
	
fieldset {
	border: 1px solid #006;
	background-color: #efefef;
	color: #000;
	padding: 5px 15px;
	margin-bottom: 10px;
	}
	
td {
	vertical-align: top;
	color: #000;
	background-color: #fff;
	}
		
td.gray {
	color: #000;
	background-color: #ddd;
	}	
	
h1 {
	text-align: center;
	}
	
legend {
	color: #006;
	background-color: #efefef;
	}
	
.u {
	text-decoration: underline;
	}
	
.submit {
	color: #006;
	background-color: #ffc;
	font-weight: bold;
	}
	
input, select, textarea {
	color: #006;
	background-color: #ffc;
	border: 1px solid #006;
	}
	
.checkbxinput {
	color: #ffc;
	background-color: #ffc;
	}

	
input.btn {
  color: #006;
  background-color: #ffc;
  border: 1px solid #006;
  font-weight: bold;
  }
	
</style>

<!-- form parameters -->

<cfparam name="eval1" default="" type="string" />
<cfparam name="eval2" default="" type="string" />
<cfparam name="eval3" default="" type="string" />
<cfparam name="eval4" default="" type="string" />
<cfparam name="eval5" default="" type="string" />
<cfparam name="eval6" default="" type="string" />
<cfparam name="eval7" default="" type="string" />
<cfparam name="eval8" default="" type="string" />
<cfparam name="eval9" default="" type="string" />
<cfparam name="eval10" default="" type="string" />
<cfparam name="eval11" default="" type="string" />
<cfparam name="eval12" default="" type="string" />
<cfparam name="eval3" default="" type="string" />
<cfparam name="eval14" default="" type="string" />
<cfparam name="eval15" default="" type="string" />
<cfparam name="eval16" default="" type="string" />
<cfparam name="checkbox1" default="" type="string" />
<cfparam name="checkbox2" default="" type="string" />
<cfparam name="checkbox3" default="" type="string" />
<cfparam name="checkbox4" default="" type="string" />
<cfparam name="checkbox5" default="" type="string" />
<cfparam name="checkbox6" default="" type="string" />
<cfparam name="checkbox7" default="" type="string" />
<cfparam name="favoritepart" default="" type="string" />
<cfparam name="improvements" default=""  type="string" />
<cfparam name="comments" default="" type="string" />

<!-- end of parameters -->

</head>

<body>



<!-- Here is the main title of the site-->

<div id="main-title">Library 1: Introduction to Libraries</div>



<!-- Here is the title of this page  -->

<h1>Evaluation Form</h1>


<!-- Here is the main piece of text  -->

<div id="main-text">

<p>In order to provide you with better service and instructional content, we would appreciate your feedback.  Please click on the most appropriate responses.  Then, click the <span class="submit">Submit</span> button at the bottom of the screen.</p>
	
	<form action="components/eval1.cfc?method=emailinformation" method="post">
		
	<fieldset>
		<legend accesskey="i"><strong><span class="u">I</span>nstructor</strong> (accesskey: i)</legend>
			<table summary="This table is used to lay out form controls">
				<tr>
					<td>1.</td>
					<td><label for="eval1">I felt that the instructor had expert knowledge of the course subject matter.</label></td>
					<td class="gray"><select name="eval1" tabindex="1" id="eval1" class="formInputField" onfocus="focusField(this)" onblur="blurField(this)">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree" class="gray">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree" class="gray">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>2.</td>
					<td><label for="eval2">I felt that the instructor made a good effort to interact with the students.</label></td>
					<td class="gray"><select name="eval2" tabindex="2" id="eval2" class="formInputField" onfocus="focusField(this)" onblur="blurField(this)">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>3.</td>
					<td><label for="eval3">The instructor provided timely feedback.</label></td>
					<td class="gray"><select name="eval3" tabindex="3" id="eval3">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>4.</td>
					<td><label for="eval4">The instructor's feedback was clear and useful.</label></td>
					<td class="gray"><select name="eval4" tabindex="4" id="eval4">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>5.</td>
					<td><label for="eval5">The instructor treated students with respect.</label></td>
					<td class="gray"><select name="eval5" tabindex="5" id="eval5">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>6.</td>
					<td><label for="eval6">The instructor was available and helpful.</label></td>
					<td class="gray"><select name="eval6" tabindex="6" id="eval6">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>7.</td>
					<td><label for="eval7">The instructor inspired interest in the course material.</label></td>
					<td class="gray"><select name="eval7" tabindex="7" id="eval7">
							<option value="selectOone" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>
				<tr>
					<td>8.</td>
					<td><label for="eval8">I would recommend this instructor to others.</label></td>
					<td class="gray"><select name="eval8" tabindex="8" id="eval8">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
				</tr>												
			</table>
		</fieldset>
		
		
		<fieldset>
		<legend accesskey="c"><strong><span class="u">C</span>ourse</strong> (accesskey: c)</legend>
			<table summary="This table is used to lay out form controls">
				<tr>
					<td>&nbsp;9.</td>
					<td><label for="eval9">The course was well organized.</label></td>
							<td class="gray"><select name="eval9" tabindex="9" id="eval9">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>10.</td>
					<td><label for="eval10">The objectives/learning outcomes for each module were clear.</label></td>
							<td class="gray"><select name="eval10" tabindex="10" id="eval10">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>11.</td>
					<td><label for="eval11">The assignments accurately measured my attainment of these learning outcomes.</label></td>
							<td class="gray"><select name="eval11" tabindex="11" id="eval11">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>12.</td>
					<td><label for="eval12">Course requirements and grading were clear.</label></td>
							<td class="gray"><select name="eval12" tabindex="12" id="eval12">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>13.</td>
					<td><label for="eval13">The study guides were well written and clear.</label></td>
							<td class="gray"><select name="eval13" tabindex="13" id="eval13">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>14.</td>
					<td><label for="eval14">The study guides helped me to understand the assigned work.</label></td>
							<td class="gray"><select name="eval14" tabindex="14" id="eval14">
							<option value="selectOne" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				<tr>
					<td>15.</td>
					<td><label for="eval15">The self-assessment activities (quizzes) contributed to my learning.</label></td>
							<td class="gray"><select name="eval15" tabindex="15" id="eval15">
							<option value="selectOone" selected="selected">Select one</option>
							<option value="stronglyAgree">Strongly agree</option>
							<option value="agree">Agree</option>
							<option value="disagree">Disagree</option>
							<option value="stronglyDisagree">Strongly disagree</option>
							<option value="noResponse">No response</option>
						</select></td>
						</tr>
				
				<tr>
					<td>16.</td>
					<td>How did you hear about this course?  Please check all that apply.</td>
					<td class="gray">
						<input type="checkbox" name="checkbox1" tabindex="17" id="checkbox1" value="Printed schedule" class=
						"checkbxinput" />
						<label for="checkbox1">Printed schedule</label><br />
						<input type="checkbox" name="checkbox2" tabindex="18" id="checkbox2" value="College website" class=
						"checkbxinput" />
						<label for="checkbox2">College website</label><br />
						<input type="checkbox" name="checkbox3" tabindex="19" id="checkbox3" value="Flier or poster" class=
						"checkbxinput" />
						<label for="checkbox3">Flier or poster</label><br />
						<input type="checkbox" name="checkbox4" tabindex="20" id="checkbox4" value="Librarian" class=
						"checkbxinput" />
						<label for="checkbox4">Librarian</label><br />
						<input type="checkbox" name="checkbox5" tabindex="21" id="checkbox5" value="Instructor" class=
						"checkbxinput" />
						<label for="checkbox5">Instructor</label><br />
						<input type="checkbox" name="checkbox6" tabindex="22" id="checkbox6" value="Friend, relative, or co-worker" class="checkbxinput" />
						<label for="checkbox6">Friend, relative, or co-worker</label><br />
						<input type="checkbox" name="checkbox7" tabindex="23" id="checkbox7" value="E-mail announcement" class=
						"checkbxinput" />
						<label for="checkbox7">E-mail announcement</label><br />
					</td>
				</tr>
						
				<tr>
				<td>17.</td>
					<td><label for="favoritepart">What was your favorite part of this course?</label></td>
					<td class="gray"><input type="text" name="favoritepart" tabindex="24" id="favoritepart" value="Type here" size="35" maxlength="35" /></td>
				</tr>
				<tr>
					<td>18.</td>
					<td><label for="improvements">What could be done to improve this course?</label></td>
					<td class="gray"><textarea name="improvements" tabindex="25" id="improvements" rows="6" cols="35">Type here</textarea></td>
				</tr>
				<tr>
					<td>19.</td>
					<td><label for="comments">Please include your comments.</label></td>
					<td class="gray"><textarea name="comments" tabindex="26" id="comments" rows="6" cols="35">Type here</textarea></td>
				</tr>
			</table>
		</fieldset>
		
		<fieldset class="white">
			<legend accesskey="s"><strong><span class="u">S</span>ubmit</strong> (accesskey: s)</legend>
				<table summary="This table is used to lay out form controls">								
				<tr>
					<td colspan="3" class="gray"><input type="submit" name="submit" tabindex="27" value="Submit" class="btn" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" name="reset" tabindex="28" value="Start over" class="btn" /></td>
				</tr>																
				</table>	
		</fieldset>
	</form>
	
</div>
</body>
</html>