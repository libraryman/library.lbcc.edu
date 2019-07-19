<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>
    <title>Long Beach City College Library: Contact Us</title>
    <meta charset="utf-8"/>
    <meta name="description" content="Long Beach City College Libraries Portal">
	<meta name="author" content="Ward Smith">
    <link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" /> 

    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <cfinclude template="inc/js_inc.cfm">
    <cfinclude template="inc/css_inc.cfm">
<script type="text/javascript">
	$( document ).ready(function( $ ) {
		$( '#my-slider' ).sliderPro({
			width: 700,
			height: 400,
			orientation: 'horizontal',
			loop: true,
			arrows: false,
			buttons: false,
            autoScaleLayers: true,
            centerImage: true,
			thumbnailsPosition: 'right',
			thumbnailPointer: true,
			thumbnailWidth: 290,
			breakpoints: {
				800: {
					thumbnailsPosition: 'bottom',
					thumbnailWidth: 270,
					thumbnailHeight: 100
				},
				500: {
					thumbnailsPosition: 'bottom',
					thumbnailWidth: 120,
					thumbnailHeight: 50
				}
			}
		});
        
 $("#header").click(function() {
  $( "#hero" ).slideToggle("fast", "swing", function() {
    // Animation complete.
    //  alert ("finished");
    //  alert ("finished");
  });
     
     $("#learn_cont").hover(function () {
    $("#learn_panel").slideToggle(250);
});
});
    
   
    });

</script>


</head>
<body>


<cfinclude template="inc/header_inc.cfm">
    
<div class="container white">


<cfinclude template="inc/banner_inc.cfm">


    
    <div class="nine columns omega wheat toprow"> 
        <div id="button_banner">
                <nav>
                        
                    <ul>
                    <li><a href="">NEWS</a></li>
                        <li><a href="">Locations</a></li>
                         <li><a href="">Hours</a></li>
                        <li><a href="">Chat</a></li>
                        <li><a href="">FAQ</a></li>
        
                    </ul>
                    
                </nav>
        </div>
                
        <cfinclude template="inc/macro_menu_inc.cfm">
                
        <cfinclude template="inc/displayhours_inc.cfm">  
        
    </div>
    
    <cfinclude template="inc/bottom_contact_inc.cfm">

                                      
</div>         


        

</body>
</html>