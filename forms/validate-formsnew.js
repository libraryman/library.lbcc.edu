function validate(){
	if(document.myform.name.value == ""){
	alert("Please fill in your first and last name.");
	document.myform.name.focus();
	return false;
	}

	if(document.myform.id.value == "") {
		alert("Please fill in your ID number to process your request.");
		document.myform.id.focus();
		return false;
	}
	
	if(document.myform.phone.value == "") {
		alert("Please fill in your phone number so we can contact you.");
		document.myform.phone.focus();
		return false;
	}

	else

	document.myform.submit();

	}
	
	