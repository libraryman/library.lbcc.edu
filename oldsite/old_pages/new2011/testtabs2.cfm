<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>jQuery UI Tabs - Default functionality</title>
	<link type="text/css" href="jquery/css/custom-theme/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery/js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="jquery/js/jquery-ui-1.8.23.custom.min.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
    <link rel="stylesheet" href="http://lib.lbcc.edu/new2011/jquery.ui.all.css" type="text/css" />
<link type="text/css" rel="stylesheet" media="all" href="http://lib.lbcc.edu/new2011/lbcclibrary.css" />	
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/print.css" type="text/css" media="print" />
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/front-page2.css" type="text/css" /> 
<link rel="stylesheet" href="http://lib.lbcc.edu/new2011/search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabber.css">
<script src="tabber.js" type="text/javascript"></script>
<script src="http://lib.lbcc.edu/new2011/jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="http://lib.lbcc.edu/new2011/jquery/script.js" type="text/javascript" charset="utf-8"></script>
	<script>
	$(function() {
		$( "#tabs" ).tabs();
	});
	</script>
    <style type="text/css">
			/*demo page css*/
			body{ font: 62.5% "Trebuchet MS", sans-serif; margin: 50px;}
			.demoHeaders { margin-top: 2em; }
			#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
			#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
			ul#icons {margin: 0; padding: 0; font-family: Arial, Helvetica, sans-serif}
			ul#icons li {margin: 2px; position: relative; padding: 4px 0; cursor: pointer; float: left;  list-style: none;}
			ul#icons span.ui-icon {float: left; margin: 0 4px;}
		</style>
</head>
<body>
<!-- Tabs -->
		<h2 class="demoHeaders">Tabs</h2>
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">First</a></li>
				<li><a href="#tabs-2">Second</a></li>
				<li><a href="#tabs-3">Third</a></li>
			</ul>
			<div id="tabs-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
			<div id="tabs-2">Phasellus mattis tincidunt nibh. Cras orci urna, blandit id, pretium vel, aliquet ornare, felis. Maecenas scelerisque sem non nisl. Fusce sed lorem in enim dictum bibendum.</div>
			<div id="tabs-3">Nam dui erat, auctor a, dignissim quis, sollicitudin eu, felis. Pellentesque nisi urna, interdum eget, sagittis et, consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.</div>
		</div>

</body>
</html>
