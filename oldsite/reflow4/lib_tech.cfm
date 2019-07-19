<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>
    <title>Long Beach City College Library</title>
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

        
 $("#header").click(function() {
     $( "#macro_menu" ).toggle( "slide" );

});
    
   
    });

</script>


</head>
<body>

<cfinclude template="inc/header_inc.cfm">

    
<div class="container white">
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
<div id="macro_menu">              
        <cfinclude template="inc/macro_menu_inc.cfm">      
</div>
             


    
    <div class="nine columns alpha"> 

     <div class="alpha nine columns libtech_header"><h1 class="banner_title">Library Technician Program</h1>

        </div>
        <div class="body_copy">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu justo in diam fermentum dignissim vel sed augue. Maecenas vel sapien luctus, commodo metus sed, dictum massa. Vivamus non facilisis turpis. Nunc ultricies sit amet urna et blandit. Sed auctor porta iaculis. Duis vel porttitor quam, ut malesuada odio. Fusce ex enim, consequat ut ipsum eget, pellentesque luctus mauris. Nunc at molestie neque, sed laoreet mauris.</p>
            
            <p>Fusce ac vestibulum justo. Mauris sit amet risus sapien. Duis hendrerit magna in purus fermentum facilisis. Curabitur a quam vel lacus cursus mollis. Suspendisse sapien tellus, consectetur eu fermentum sit amet, mattis sed odio. In hac habitasse platea dictumst. Vivamus commodo lacus vel eleifend viverra. Nunc vel tortor neque. Fusce finibus dui massa, vitae porttitor ex cursus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
            
            <p>Donec finibus vestibulum metus, non condimentum tellus rhoncus vitae. Fusce diam velit, ultrices nec vestibulum quis, rhoncus quis nisl. Suspendisse in est in odio blandit lobortis id sed metus. Vivamus nec dui tincidunt, laoreet tellus ut, hendrerit nulla. Curabitur egestas erat at rutrum ornare. Donec aliquet neque a lacinia accumsan. Vestibulum dapibus elit massa, lacinia venenatis magna dapibus at.</p>
            
            <p>Fusce eu egestas dolor. Praesent turpis libero, molestie a venenatis sed, auctor quis mi. Ut id porta justo. In feugiat consequat ipsum, non volutpat tortor rhoncus ac. Nulla tincidunt fringilla rhoncus. Sed iaculis arcu velit, at semper mi placerat pulvinar. Phasellus placerat bibendum eros non molestie. Aliquam vel lobortis nunc. Duis maximus dignissim nunc, elementum pellentesque lorem ultricies quis.</p>
            

            
            </div>
           <div class="nine columns alpha">&nbsp;</div>
 </div>   
                
        <cfinclude template="inc/displayhours_inc.cfm">  
        
    </div>
    
    <cfinclude template="inc/bottom_contact_inc.cfm">

                                      
</div>         


        

</body>
</html>