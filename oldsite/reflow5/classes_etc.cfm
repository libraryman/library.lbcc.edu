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

        <cfinclude template="inc/2_macro_menu_inc.cfm">      

        </div>
             


    
    <div class="nine columns alpha"> 

     <div class="alpha nine columns wkshop_header">
    <h1 class="banner_title">Classes</h1>
        </div>
        <div class="body_copy">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu justo in diam fermentum dignissim vel sed augue. Maecenas vel sapien luctus, commodo metus sed, dictum massa. Vivamus non facilisis turpis. Nunc ultricies sit amet urna et blandit. Sed auctor porta iaculis. Duis vel porttitor quam, ut malesuada odio. Fusce ex enim, consequat ut ipsum eget, pellentesque luctus mauris. Nunc at molestie neque, sed laoreet mauris.</p>
            </div>
    <div class="alpha nine columns wkshop_header">
    <h1 class="banner_title">Workshops</h1>
        </div>
         <div class="body_copy">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu justo in diam fermentum dignissim vel sed augue. Maecenas vel sapien luctus, commodo metus sed, dictum massa. Vivamus non facilisis turpis. Nunc ultricies sit amet urna et blandit. Sed auctor porta iaculis. Duis vel porttitor quam, ut malesuada odio. Fusce ex enim, consequat ut ipsum eget, pellentesque luctus mauris. Nunc at molestie neque, sed laoreet mauris.</p>
            </div>
           
    <div class="alpha nine columns wkshop_header">
    <h1 class="banner_title">Orientations</h1>
        </div> 
        <div class="body_copy">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eu justo in diam fermentum dignissim vel sed augue. Maecenas vel sapien luctus, commodo metus sed, dictum massa. Vivamus non facilisis turpis. Nunc ultricies sit amet urna et blandit. Sed auctor porta iaculis. Duis vel porttitor quam, ut malesuada odio. Fusce ex enim, consequat ut ipsum eget, pellentesque luctus mauris. Nunc at molestie neque, sed laoreet mauris.</p>
            </div>
            

           <div class="nine columns alpha">&nbsp;</div>
 </div>   
                
        <cfinclude template="inc/displayhours_inc.cfm">  
        
    </div>
    
    <cfinclude template="inc/bottom_contact_inc.cfm">

                                      
</div>         


        

</body>
</html>