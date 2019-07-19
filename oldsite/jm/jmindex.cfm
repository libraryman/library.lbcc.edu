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
             

       
        <div class="span-24 toprow"> 
            <h1 class="quiet">Find</h1>
        </div>
        <div class="span-24">
            <a href="//lbcc.worldcat.org"><div class="span-6" id="booksetc"><h2 class="quiet"><br />Books, Media and More&hellip;</h2></div></a>
            <div class="span-6 badge" id="textbooks"><h1 class="quiet"><br />Course Textbook Reserves</h1></div>
            <div class="span-6 badge" id="databases"><h1 class="quiet"><br />Articles/ Databases</h1></div>
  
        </div>
        <hr class="space" />   
        
                <div class="span-24 prepend-top">
                    <h1 class="quiet">Learn</h1>
                </div>
        
        <div class="span-24  bottomrow">                
            <div class="span-18">            
                    
                <div class="span-18">
                    <div class="span-6 badge last" id="guides"><h1 class="quiet"><br />Research Guides</h1></div>  
                    <div class="span-6 badge" id="tutorials"><h1 class="quiet"><br />Tutorials</h1></div>
                    <div class="span-6 badge" id="wkshops"><h1 class="quiet"><br />Workshops and Orientations</h1></div>

                </div>  
                <hr class="space" />      
                <div class="span-18 prepend-top">
                    <h1 class="quiet">Join</h1>
                </div>
                    
                <div class="span-18">        
                    <div class="span-6 badge" id="libtech"><h1 class="quiet"><br />Library Tech Certification</h1></div>
                    <div class="span-6 badge last" id="libclub" class="quiet"><br /><h1>Library Club</h1></div>
                    <div class="span-6 badge last" id="wkstudy" class="quiet"><br /><h1>Work at the Library</h1></div>
                </div>
            </div>
            
            
            <div class="span-4 prepend-1 border last">
            <div class="span-4"><h3>News</h3><p>In a surprise announcement &hellip;</p></div>       
            <div class="span-4"><h3>more News</h3><p>In a related news break</p></div>           
            </div>
        </div>                                         
                                      
         
    </div>
    <div class="container">
        <div class="span-24" id="foot">
            <cfinclude template="inc/contact_inc.cfm">
        </div>
    </div>
</body>
</html>