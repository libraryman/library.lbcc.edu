function validate(){
	if(document.myform.name.value == ""){
	alert("Please fill in your first and last name.");
	document.myform.name.focus();
	return false;
	}
	
	
	if(document.myform.email.value == ""){
	alert("Please fill in your email address.");
	document.myform.email.focus();
	return false;
	}
			
	
	if(document.myform.email.value.indexOf("@")=="-1"||
	document.myform.email.value.indexOf(".")=="-1"){
	alert("Your email address is incorrect. Please retype your email address.");
	document.myform.email.focus();
	return false;
	}

	else

	document.myform.submit();

	}
	
	