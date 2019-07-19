<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Long Beach City College Library</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52654811-1', 'auto');
  ga('require', 'displayfeatures');

  ga('send', 'pageview');

</script>
    
<link rel="shortcut icon" href="" type="image/x-icon" />

    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js" type="text/javascript"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<!--<link rel="stylesheet" href="jquery.ui.all.css" type="text/css" /> -->
<link type="text/css" rel="stylesheet" media="all" href="lbcclibrary.css" />	
<link rel="stylesheet" href="menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="print.css" type="text/css" media="print" />
<link rel="stylesheet" href="front-page2.css" type="text/css" />
<link rel="stylesheet" href="search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabber.css" />
<link rel="stylesheet" type="text/css" href="http://api.libguides.com/css/libguides_api.css" />

<script src="jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="jquery/script.js" type="text/javascript" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript"> 
$(document).ready(function () {

    
});
function changeColor() {
    var bk = '#'+$("#bk_color").val();
    var tb = '#'+$("#txt_color").val();
    var ar = '#'+$("#art_color").val();
    var st = '#'+$("#stg_color").val();
    var bkg = '#' +$('#bkg_color').val();
    //alert (bkg);
    $('#books').css("background-color",bk);
    $('#tbx').css("background-color",tb);
    $('#art').css("background-color",ar);
    $('#gdes').css("background-color",st);
    $('body').css("background-color", bkg);    
    if  ( $('#light_book').is(':checked') ) {
        $('#books').css("background-image","url('images/new_index/book_light.png')" );
        $('#books h1').css("color","#090909");
        }
    else {
    $('#books').css("background-image","url('images/new_index/book.png')" );
        $('#books h1').css("color","#EFEFEF");    
    }
    
    if  ( $('#light_txbks').is(':checked') ) {
       $('#tbx').css("background-image","url('images/new_index/txbks_light.png')" );
        $('#tbx h1').css("color","#090909");
        }

    else {
    $('#tbx').css("background-image","url('images/new_index/txbks.png')" );
        $('#tbx h1').css("color","#EFEFEF");    
    }

    
    if  ( $('#light_art').is(':checked') ) {
        $('#art').css("background-image","url('images/new_index/art_light.png')" );
        $('#art h1').css("color","#090909");
        }

    else {
        $('#art').css("background-image","url('images/new_index/art.png')" );
        $('#art h1').css("color","#EFEFEF");  
    }

        
    if  ( $('#light_stg').is(':checked') ) {
        $('#gdes').css("background-image","url('images/new_index/gdes_light.png')" );
        $('#gdes h1').css("color","#090909");
        }
    else {
        $('#gdes').css("background-image","url('images/new_index/gdes.png')" );
        $('#gdes h1').css("color","#EFEFEF");
    } 
    

}

    

</script> 
<style>
    /* quick overrides */
    #libraryhours {background: #fff;}
    .quicklinks img {border:0px solid #fff; box-shadow:0px 0px 0px #fff;padding-bottom:80px;}
    tbody {border-collapse:collapse;border:0px #fff;border-spacing:0px;}
    body {background-image:url('images/new_index/blk.png'); background-repeat:repeat;}
    h1 {border-bottom:0px solid #ffffff}
    #footer p {color:#eee;}
    body {background-color:#090909;}
    /* new stuff */
.bigbutton { height:80px;  
    }
.bigbutton h1 {margin-left:5px;line-height:130px;font-weight:100; font-size:1.2em;color:#EFEFEF;}
    
.buttontext p a:link, a:visited, p {font-size:.8em; line-height:1em; padding-right:10px;color:#090909;}
    
.first_buttontext {padding-left:10px;}
.mid_buttontext {margin-right:5px;}
.last_buttontext {margin-left:-10px;}
#books {background-color:#090909;width:160px; background-image:url('images/new_index/book.png'); background-repeat:no-repeat;margin-left:10px;}
#tbx {background-color:#090909;width:110px; background-image:url('images/new_index/txbks.png'); background-repeat:no-repeat; }
#art {background-color:#090909;;width:160px;background-image:url('images/new_index/art.png'); background-repeat:no-repeat;}
#gdes {background-color:#090909;width:160px;background-image:url('images/new_index/gdes.png'); background-repeat:no-repeat;margin-left:-10px; }
 #modbar {width:100%;background-color:#fff;}   
    </style>
</head>

<body>
<div id="modbar">
 
    Books:<input type="checkbox" id="light_book" name="light_background" value="dark" /><input type="text" id="bk_color" value="">
    txtbooks:<input type="checkbox" id="light_txbks" name="light_background" value="dark" /><input type="text" id="txt_color" value="" />       
    articles:<input type="checkbox" id="light_art" name="light_background" value="dark" /><input type="text" id="art_color" value="" />      
    study guides:<input type="checkbox" id="light_stg" name="light_background" value="dark" /><input type="text" id="stg_color" value="" /> <!-- <br />background:<input type="text" id="bkg_color" value="" /> -->  <a onclick="changeColor();" href="#" class="test">||Try it</a>
    </div>
<cfinclude template="topnav.cfm">
	

<div class="clear"> </div>
    
<div id="outer-content-container" class="container_16"> 
	<div id="content-container" class="container_16">  
			<div id="top-content">             	
				<div class="grid_11 alpha"> 
					 <p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; LBCC Library Home</p>
<h1><i>Find</i></h1>

        <a href="http://lbcc.worldcat.org">
        <div class="grid_3">
            <div class="bigbutton" id="books"> <h1>Books, Movies&hellip;</h1>
             </div>                                       
             <p class="buttontext first_buttontext"><i>and much more! Use WorldCat to find books, movies, maps, and reference books&hellip;</i></p>
        </div></a>
                                                   
        <a href="http://lbcc.worldcat.org/wcpa/courseReserves?action=courseReserveManager">
        <div class="grid_2">
            <div  class="bigbutton" id="tbx">    <h1>Textbooks</h1>                      
                
            </div>
            <p class="buttontext"><i>Borrow textbooks for in&ndash;library use.</i></p>
        </div></a>
        
        <a href="http://lib.lbcc.edu/databases_subject.cfm">
        <div class="grid_3">
            <div class="bigbutton" id="art"> <h1>Articles & eBooks</h1>
             </div>                                       
             <p class="buttontext mid_buttontext"><i>Use our research databases to search thousands of peer&ndash;reviewed journals, ebooks, and popular magazines.</i></p>
        </div></a>
        
            
        
        <a href="http://lbcc.libguides.com">
            <div class="grid_3 omega">
                <div  class="bigbutton" id="gdes">   <h1>Study Guides</h1>                       
                    
                </div>
                <p class="buttontext  last_buttontext"><i>Get started on your research project</i></p>
        </div></a>
        
                            
<div class="clear"> </div>
<div class="quicklinks"> 
	<div class="quicklinks" > 
<a href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://highered.nbclearn.com" target="_blank"><img src="images/nbcLearn_logo_stacked_pos.jpg" alt="NBC Learn" width="375"  />
		</div> 
 
    <div class="quicklinks"> 
		
        <h3><a href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://highered.nbclearn.com" target="_blank">NEW! NBC Learn</a></h3> 
        <p>LBCC has recently subscribed to an exciting new digital resource called NBC LEARN, a collection of videos, documents, and images for on-line use in the classroom or off-campus. If you are looking for a way to enliven your classes, introduce current events, or use real-world examples to bring subjects to life for your students, we have a new resource for you!   These short, 2-5 minute videos are engaging, relevant and inspiring, and can be incorporated into classroom lectures and online teaching materials.</p>
<h2>Visit:</h2>
        <h2><a href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://highered.nbclearn.com" target="_blank">NBC Learn Higher Ed</a></h2>
        <h2><a href="http://lib-ezproxy.lbcc.edu:2048/login?url=http:/archives.nbclearn.com" target="_blank">NBC Learn K-12</a></h2>
 <h2><a href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.nbclearn.com/portal/site/learn/higher-ed" target="_blank">Learn More&hellip;</a></h2>       
	</div> 
</div> 

                    
<div class="quicklinks"> 
	<div id="librarynews1" class="quicklinks"> 

        <br /><p><img class="quicklinks displayed" src="images/worldcat.gif" alt="WorldCat Local" width="98"/></p>
        <h3><a href="http://lbcc.worldcat.org" target="_blank">Get started with WorldCat</a></h3> 
        <p>We use WorldCat as our Online Public Access Catalog (OPAC). You can search the library for books, media, and even journal articles. Learn how to search WorldCat by viewing <a href="http://www5.oclc.org/downloads/tutorials/worldcatlocal/basicsrch/default.htm" target="_blank"><strong>this short tutorial</strong></a> or these <a href="http://www.oclc.org/worldcat/help/en/default.htm#searching" target="_blank"><strong>FAQ's.</strong></a></p>

		</div> 
 
    <div class="quicklinks"> 
		<br /><p><img class="quicklinks displayed" alt="Genealogy tree" src="images/workshops.jpg"  width="98"/></p>
        <h3><a href="workshops.cfm">Drop-in Workshops</a></h3> 
        <p>Coming soon - library drop-in workshops to help you improve your library skills. </p>
        <p><a href="workshops.cfm">See Workshop Schedule</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
	</div> 
</div> 
</div> 

<cfinclude template="rightnavmain_buttons.cfm">
				</div>
			</div>
			<div class="clear"> </div>
			<div class="clear"> </div>
		
		<!-- </div>close outer-content-container -->

<div class="clear"></div>
<!-- close feature-container -->

<cfinclude template="footer.cfm">

</body>
</html>
