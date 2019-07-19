	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/stylesheets/base.css">
	<link rel="stylesheet" href="css/stylesheets/skeleton.css">
	<link rel="stylesheet" href="css/stylesheets/layout.css">
<!--    <link rel="stylesheet" href="css/slider-pro.min.css">-->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">



<style>

    
    html, body {
   
    background-color: #000;
    max-width: 100%;
    overflow: scroll;
    overflow-x: hidden;

}
    #breadcrumb, #breadcrumb a:link, #breadcrumb a:visited 
    {
        text-align:left;font-size:8pt; color:#aaa;
    }

    
/* from old site */    
h2 {
	font-size: 16px;
	line-height: 20px;
	padding: 5px 0 5px 0;
	font-weight: bold;	
}
h2 a, h2 a:link, h2 a:visited {
	text-decoration: none;
	/* border-bottom: 1px dotted #ccc; removed 4/23/12 dl */ 
	font-size: 15px;
	padding: 0;
}  
    
h3 {
	font-size: 14px;
	line-height: 16px; 
	color: #666666;
	/*  padding: 5px 0 5px 0;*/
}
h3 a, h3 a:link, h3 a:visited {
	text-decoration: none;
	/* border-bottom: 1px dotted #ccc; removed 4/23/12 dl */
	font-size: 14px;
	padding-top: 0;
	padding: 0;
}
h4, h5, h6 {
	font-size: 12px;
	line-height: 16px;
	color: #333333;
}
    
 /*   
    #toggle-view {
    list-style:none;    
    font-family:arial;
    font-size:11px;
    margin:0;
    padding:0;
    width:620px;
}
 
#toggle-view li {
    margin:0px;
	position:relative;
    cursor:pointer;
    }
     
#toggle-view h3 {
    margin:0;
    font-size:14px;
	line-height: 20px;
    }
 
#toggle-view span {
        position:absolute;
        right:0px; top:0;
        color:#000;
        font-size:12px;
    }
     
#toggle-view .panel {
        margin:0px 0;
        display:none;
    }  

    */
/* end copypasta from old site */   
    a:link, a:visited {color:#090909;}
    a:hover, a:active {color:#CCC;}

    #header {
        height:80px;
        position:fixed;
        top:0px;
        background-color:rgb(255, 248, 234); 
        overflow: hidden;
        z-index: 1099;       
    } 
    
    #booksetc {
        background:url('img/books_media.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
       }
    #textbooks {
        background:url('img/textbooks.png') rgb(240, 240, 240) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
    #databases {
        background:url('img/databases.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
    #guides {
        background:url('img/studyguides.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
    
    #tutorials {
        background:url('img/tutorials.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
    
    
    #wkshops {
        background:url('img/wkshops.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
   
    #libtech {
        background:url('img/libtech.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }

    #libclub {
        background:url('img/libclub.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }
      #wkstudy {
        background:url('img/work.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
    }
      #about {
        background:url('img/about.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }

      #contact {
        background:url('img/contact.png') rgb(255, 255, 255) no-repeat;
        background-color:#EF4037;
        margin-bottom:10px;        
    }
    
      #services {
        background:url('img/services.png') rgb(255, 255, 255) no-repeat;
        background-color: #EF4037;
        margin-bottom:10px;
    }

    .small_text{
        color:#090909;
        font-size:.8em;
    }
    
    .big_text {
        color:#090909;
        font-size:1.4em;
    }
    
    .banner { position: relative; overflow: auto; }
    .banner li { list-style: none; }
    .banner ul li { float: left; }
    
    .banner_title {
        color:#aaa;
        font-family:arial;
        margin:10px;
       padding-top:10px;
/*        padding-right:25px;*/
        padding-bottom:15px;
        line-height:1.3em;
        text-decoration:none;
        font-size:2em;

        display:block;
        text-align:right;


    }
    .wheat {background-color:#fff8ea;   /* DARKER VERSION #F5E0BA */
    }
    
    .white {background-color:white;
    }

  .spacer-25 {
           padding-top:25px; 
        }

        .tag { color:#fff;
                    font-weight:bold;
                    font-family:arial;
                    margin:10px;
                    padding-top:10px;
                    line-height:1.3em;
                    font-size:1.2em;
        }

    .videoshell {   
        display:flex;
        flex-direction: row;
        padding-top:40px;
        justify-content: center;
        align-items: center;
       background-color:transparent;
    }     

    
  .subtext   {
     color:#aaa;
        margin-left:27%;
/*        margin-right:10px;*/
        text-align:right;
    }    
.sp-next-arrow:after, .sp-next-arrow:before, .sp-previous-arrow:after, .sp-previous-arrow:before {
        background-color:#ddd!important;    
        }

#macro_menu {z-index:888;background-color:#fff8ea;display:none;position:fixed;top:80px;} 
    
<cfinclude template="css_max_inc.cfm">

<cfinclude template="css_min_inc.cfm">

</style>

