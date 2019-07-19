<!DOCTYPE html>
<html>
<head>
    <title>Long Beach City College Library</title>
    <meta charset="utf-8"/>
    <link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />    
    <cfinclude template="inc/css_inc.cfm">
    <cfinclude template="inc/js_inc.cfm">
</head>
<body>
    <div id="header">
        <div class="container">

            <div class="span-24" id="libheader">          
                <div class="span-12 left">
                    <img src="images/alt_hbrgr_menu.png" height="75" />
                    <img src="images/alt_library_header.png" />
                </div>
                <cfinclude template="inc/displayhours.cfm">

            </div>
        </div>
    </div>
    
    <div class="container">

        
        
        <div class="span-18 toprow"> 
            <h1 class="phat">Find</h1>
                    
            <a href="//lbcc.worldcat.org"><div class="span-6 badge" id="booksetc"><h1><br />Books, Media and More&hellip;</h1></div></a>
            <div class="span-6 badge" id="textbooks"><h1><br />Course Textbooks</h1></div>
            <div class="span-6 badge last" id="databases"><h1><br />Articles and eBooks</h1></div>
    
            <hr class="space" />   
            
            
            <h1 class="phat">Learn</h1>
            
            <div class="span-6 badge" id="guides"><h1><br />Study Guides</h1></div>  
            <div class="span-6 badge" id="tutorials"><h1><br />How To &hellip;</h1></div>
            <div class="span-6 badge last" id="wkshops"><h1><br />Workshops and Orientations</h1></div>
            
            <hr class="space" />      
            
      <h1 class="phat">Connect</h1>            
            <div class="span-6 badge" id="libtech"><h1><br />Library Tech Certification</h1></div>
            <div class="span-6 badge" id="libclub"><h1><br />Library Club</h1></div>
            <div class="span-6 badge last" id="wkstudy"><h1><br />Work @ the Library</h1></div>
            
        </div>           

        <div class="span-3">&nbsp;</div>
            <div class="span-3  last" id="logobar">
<!--
            <div class="span-4"><h3>News</h3><p>In a surprise announcement &hellip;</p></div>       
            <div class="span-4"><h3>more News</h3><p>In a related news break</p></div>           
-->
<div id="logo">&nbsp;</div>
        </div>
                                         
                                      
         
    </div>
<!--
<hr class="space" />    <hr class="space" />    <hr class="space" />    <hr class="space" />    <hr class="space" />            
    <div class="container">
        <div class="span-24" id="foot">
            <cfinclude template="inc/contact_inc.cfm">
        </div>
    </div>
-->
</body>
</html>