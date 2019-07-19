<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>LBCC Library Databases by Subject</title>
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
<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link type="text/css" rel="stylesheet" media="all" href="lbcclibrary.css" />	
<link rel="stylesheet" href="menu4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="master.css" type="text/css" media="screen" />
<link rel="stylesheet" href="layout4.css" type="text/css" media="screen" />
<link rel="stylesheet" href="print.css" type="text/css" media="print" />
<link rel="stylesheet" href="front-page2.css" type="text/css" />
<link rel="stylesheet" href="search.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabber.css">
<script src="tabber.js" type="text/javascript"></script>
<script src="jquery/hoverIntent.js" type="text/javascript" charset="utf-8"></script> 
<script src="jquery/script.js" type="text/javascript" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script> 
<script type="text/javascript"> 
$(document).ready(function() {
    $('.slideshow').cycle({
		fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
	});
});
</script> 
<style type="text/css">
.slideshow { margin: 10px; }
.slideshow img { padding: 5px; border: 1px solid #ccc; }
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

table.grid {
			width: 620px;
			}
	
		table.grid th, table.grid td {
			padding: 1px;
			border-right: 0px solid #999;
			border-bottom: 0px solid #999;
			}
	
		table.grid th {
			color: #333;
			background: #dedede;
			text-align: center;
			font-weight: bold;
					}
	
		table.grid tr td {
			vertical-align: top;
			line-height: 1.5em;
			font-size: 12px;
			}
	
		table.grid tr.odd {
			color: #000;
			background-color: #eee;
			}
			
		#content tbody tr:hover td, #content tbody tr:hover th {
			background-color: #dee;
			}						

</style>
</style>

<script type="text/javascript">
$(document).ready(function () {
     
    $('#toggle-view li').click(function () {
 
        var text = $(this).children('div.panel');
 
         if (text.is(':hidden')) {
            text.slideDown('200');
            $(this).children('span').html('-');     
        } else {
            text.slideUp('200');
            $(this).children('span').html('+');     
        }
         
    });
 
});
</script>

</head>

<body class="front not-logged-in page-node no-sidebars">
	
<cfinclude template="topnav.cfm">

<cfparam name="begins" default="pop">
<!--BEGIN MAIN CONTENT & RIGHT NAV -->
    <div id="outer-content-container" class="container_16"> 
		<div id="content-container" class="container_16">  
			<div id="top-content">             	
			  <div id="generalcontent"  class="grid_11 alpha"> 				
              <div class="main-content">
				 <p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; <a href="index.cfm">LBCC Library Home</a> &raquo; FIND &raquo; <a href="databases_subject.cfm">Databases</a></p><br />
                <h1>Databases</h1><h4>View:&nbsp;&nbsp;&nbsp;<b>[by subject]</b>&nbsp;&nbsp;&nbsp;<a href="databases.cfm?begins=A-B">[by alphabetical listing]</a>&nbsp;&nbsp;&nbsp;<a href="databases.cfm">[most popular]</a> &nbsp;&nbsp;&nbsp;<a href="http://lbcc.worldcat.org/openurlresolver/search" target="_blank">[Journal Title Search]</a></h4>   
                <p>The following databases are licensed for use by current students, faculty, and staff of Long Beach City College only and paid for by the Library. For off-campus access, click the link of the name of the database you would like to connect to and follow the login instructions.<br /><br /></p>
                  

                   <h2>Browse our Databases by Subject<br /></h2>
                   <ul id="toggle-view">
                       <li>    
                            <h3>Multiple Database Search<br /></h3> <span>+</span>
<div class="panel">                                
<h3><a title="EBSCOhost Premiere Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.asp?profile=ehost" target="_blank">EBSCOhost Premiere Collection</a></h3>
                                <p>Full text periodical databases. Indexes and provides full text to thousand of titles. Subject coverage is broad and includes scholarly publications. Includes the following individual databases: MasterFILE Premier, Academic Search Premier, Business Source Elite, Health Source Nursing/Academic and Consumer Editions, Psychology & Behavioral Sciences Collection, Religion & Philosophy Collection, Professional Development Collection, Military & Government Collection, Newspaper Source, ERIC, MEDLINE, and CINAHL and more.<br />&nbsp;<br /></p>
                  
                                                  <h3><a title="ProQuest" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.proquest.com/" target="_blank">ProQuest</a></h3>
                                <p>Offers thousands of articles on a wide variety of topics. <cite>ProQuest</cite> provides access to approximately 1,500 scholarly and general-interest periodicals, many of them full-text, covering all major fields of study in the humanities, social sciences, and science and technology. Dates of coverage vary, but some are available from 1985 to the present.  Also included are such newspapers as the New York Times and the Los Angeles Times. The database is updated daily.<br />&nbsp;<br /></p>

</div></li>
                        <li>
                            <h3>All Subjects/General<br /></h3>
                            <span>+</span>
                            <div class="panel">
                                <p>These databases have full text articles and from academic journals and entire ebooks in all disciplines, in addition to popular magazines and newspapers.<br /><br /></p>
                                <h3><a title="Academic Search Premiere" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=aph" target="_blank" >Academic Search Premiere (EBSCOhost)</a></h3>
        						
            				<p>This multi-disciplinary database provides full text for more than 4,600 journals, including full text for nearly 3,900 peer-reviewed titles. PDF backfiles to 1975 or further are available for well over one hundred journals, and searchable cited references are provided for more than 1,000 titles.<br />&nbsp;<br /></p>
                            <h3><a title="JSTOR Arts & Sciences" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.jstor.org" target="_blank">Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.<br />&nbsp;<br /></p>
                                
                                <h3><a title="E-books" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=nlebk" target="_blank">E-books (EBSCOhost)</a></h3>
                                <p>Full text for over 11,300 complete books on a variety of academic and literary topics.<br />&nbsp;<br /></p>
                                <h3><a title="NBC Learn" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://highered.nbclearn.com" target="_blank">NBC Learn Higher Ed</a></h3>
                                <h3><a title="NBC Learn K-12" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://archives.nbclearn.com" target="_blank">NBC Learn K-12</a></h3>
                                <p>Resources for Sciences, Arts &amp; Humanities, Careers, Business and more. NBC Learn Highered and NBC Learn K-12 include over 17,000 primary source videos, documents, letters, and images from NBC, dating from the 1930&rsquo;s to the present.<br /></p>                                
                            </div>
                        </li>
</ul>  <br />                     
 
                  <ul id="toggle-view">
                         <li>    
                            <h3>Art, Art &amp; Architectural History<br /></h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="ARTstor" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://library.artstor.org" target="_blank">ARTstor</a></h3>
                                <p>ARTstor is a nonprofit digital library of more than one million images in the arts, architecture, humanities, and social sciences with a suite of software tools to view, present, and manage images for research and pedagogical purposes. Our community-built collections comprise contributions from outstanding museums, photographers, libraries, scholars, photo archives, and artists and artists' estates.<br />&nbsp;<br /></p>
                                <h3><a title="JSTOR Arts & Sciences" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.jstor.org" target="_blank">JSTOR Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.<br />&nbsp;<br /></p>
                                <h3><a title="SIRS Renaissance - Current Perspectives on the Arts and Humanities" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://sks.sirs.com/cgi-bin/hst-portal-ren?id=SCA5991-0-3572" target="_blank">SIRS Renaissance - Current Perspectives on the Arts & Humanities</a></h3>
                            <p>SIRS Renaissance is a reference database that provides dynamic information on the following topics: architecture and design, culture, literature, multimedia, music, performing arts, philosophy and religion, and visual arts. Full-text articles are selected from more than 1,200 domestic and international publications. Many articles are accompanied by full-color images, including art reproductions, photographs, and illustrations.<br />&nbsp;<br /></p>           
                            </div>
                        </li>
    <li>
                            <h3>Automotive Technology</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="Auto Repair Reference" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=autorefctr" target="_blank">Auto Repair Reference (EBSCOHost)</a></h3>
                                <p>Want to fix or diagnose your car? The Auto Repair Reference Center contains do-it-yourself repair and maintenance information on most major manufacturers of domestic and imported vehicles -- more than 37,000 vehicles from 1954 to the present, with millions of videos, diagrams, drawings and step-by-step photographs. New repair procedures, TSBs and updates are added to the product on a regular basis. All of the content has been created by ASE certified technicians.<br />&nbsp;<br /></p>
 
                            </div>
                        </li>                         

                        <li>
                            <h3>Biography<br /></h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="Biography in Context" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=BIC1" target="_blank">Biography in Context</a></h3><p>Biography in Context is an engaging online experience for those seeking contextual information on the world's most influential people. The new solution merges Gale's authoritative reference content (including Lives & Perspectives) with periodicals and multimedia organized into a user-friendly portal experience while also allowing users to search for people based on name, occupation, nationality, ethnicity, birth/death dates and places, or gender as well as keyword and full text.<br />&nbsp;<br /></p>
                                <h3><a title="Literature Resource Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=LitRC" target="_blank">Literature Resource Center (Gale)</a></h3>
                            <p>Contains biographical and critical information about thousands of authors and their writing. Information about literary movements, themes, and genres is also included.<br />&nbsp;<br /></p>
                            </div>
                        </li>
                        <li>
                            <h3>Business<br /></h3>
                            <span>+</span>
                            <div class="panel">
                                
                                <h3><a title="Business Source Elite" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=bsh" target="_blank">Business Source Elite (EBSCOHost)</a></h3>
<p>This business database provides full text for over 1,000 business publications. The rich collection of titles in Business Source Elite provides information dating back to 1985. More than 10,100 substantial company profiles from Datamonitor are also included. This database is updated on a daily basis via EBSCOhost.<br />&nbsp;<br /></p>
                                <h3><a title="Regional Business News" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=bwh" target="_blank">Regional Business News (EBSCOhost)</a></h3>
                                <p>This database provides comprehensive full text coverage for regional business publications. Regional Business News incorporates coverage of more than 80 regional business publications covering all metropolitan and rural areas within the United States.<br />&nbsp;<br /></p> 
                            </div>
                        </li>                       
                        
                        <li>
                            <h3>Career Resources</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="Career Guidance Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE34" target="_blank">Career Guidance Center (Ferguson's/Facts on File)</a></h3>
                                <p>Provides detailed profiles of more than 3,400 jobs and 94 industries, invaluable advice on career skills, more than 48,000 resource entries, and much more!<br />&nbsp;<br /></p>
                            </div>
                        </li>
                      
                        <li>
                            <h3>Child Education and Development Resources</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="NBC Learn K-12" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://archives.nbclearn.com" target="_blank">NBC Learn K-12</a></h3>
                                <p>Resources for Sciences, Arts &amp; Humanities, Careers, Business and more. NBC Learn K-12 includes over 17,000 primary source videos, documents, letters, and images from NBC, dating from the 1930&rsquo;s to the present.<br /></p>           
                                <h3><a title="Primary Search" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=prh" target="_blank">Primary Search (EBSCOHost)</a></h3>
<p>A great resource for students seeking resources for children, <i>Primary Search</i> provides full text for more than 70 popular, magazines for elementary school research. All full text articles included in the database are assigned a reading level indicator (Lexiles), and full text information dates as far back as 1990.<br />&nbsp;<br /></p>

                                <h3><a title="Searchasaurus" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=sas" target="_blank">Searchasaurus (EBSCOHost)</a></h3>
                                <p>
EBSCO's Searchasaurus interface provides an exciting and easy way for primary school students to enhance and develop basic search methodologies. Students will be riveted by the colorful, animated interface, complete with erupting volcanoes and a dinosaur guide, as they gather information on a wide range of topics. Searchasaurus offers Lexile limiters (reading level), making it easy for students to read and research only appropriately challenging materials. The following databases are available via the Searchasaurus interface: Primary Search&reg;, Middle Search&reg; Plus, Book Collection: Nonfiction&trade;, Image Collection, Newspaper Source&trade;, and TOPICsearch&trade;.<br />&nbsp;<br /></p>
                            </div>
                        </li>

                        <li>
                            <h3>E-books</h3>
                            <span>+</span>
                            <div class="panel">
                                 <h3><a title="E-books" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=nlebk" target="_blank">E-books (EBSCOhost)</a></h3>
                                <p>Full text for over 11,300 complete books on a variety of academic and literary topics.<br />&nbsp;<br /></p>
                             <h3><a title="Gale Virtual Reference Library" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GVRL" target="_blank">Gale Virtual Reference Library (Gale)</a></h3>
                                <p>Access to over 150 e-book reference titles representing the following subjects: Arts, Business, Environment, History, Law, Literature, Medicine, Multicultural Studies, Nation and World, Science, Social Science, and Technology.<br />&nbsp;<br /></p>
                            </div>
                        </li>
                      

                        <li>
                            <h3>Education</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="ERIC" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=eric" target="_blank">ERIC - Education Resource Information Center (EBSCOhost)</a></h3>
                                <p>ERIC, the Education Resource Information Center, contains more than 1.3 million records and links to more than 323,000 full-text documents dating back to 1966.<br />&nbsp;<br /></p>
                                
                                <h3><a title="Primary Search" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=prh" target="_blank">Primary Search (EBSCOHost)</a></h3>
<p>A great resource for students seeking resources for children, <i>Primary Search</i> provides full text for more than 70 popular, magazines for elementary school research. All full text articles included in the database are assigned a reading level indicator (Lexiles), and full text information dates as far back as 1990.<br />&nbsp;<br /></p>
                                
                                <h3><a title="Professional Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=SPJ.SP04" target="_blank">Professional Collection</a></h3><p>A custom selection of more than 300 full-text journals for educators and administrators, provides balanced coverage for any professional educator.<br />&nbsp;<br /></p>

                                <h3><a title="Professional Development Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=tfh" target="_blank">Professional Development Collection (EBSCOhost)</a></h3>
                                <p>Designed for professional educators, this database provides a highly specialized collection of nearly 520 high quality education journals, including more than 350 peer-reviewed titles. This database also contains more than 200 educational reports. Professional Development Collection is the most comprehensive collection of full text education journals in the world.<br />&nbsp;<br /></p>
                            </div>
                        </li>
                        <li>
                            <h3>Encyclopedias/General Reference</h3>
                            <span>+</span>
                            <div class="panel">
                                
                                <h3><a title="BIR Entertainment" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=bir&defaultdb=kdh" target="_blank">BIR Entertainment</a></h3>
<p>BIR Entertainment provides information on about 450,000 music titles and 200,000 DVD/video titles, with more being added regularly. With BIR, your patrons can find music or videos featuring a favorite artist or performer, or a specific genre. <br />&nbsp;<br /></p>

<h3><a title="Books In Print" href="http://www.booksinprint.com/" target="_blank">Books In Print</a></h3>
<p>Publishing information on 1.9 million titles (including reviews) about books and media that are currently published and other books declared out-of-print over the last ten years. The database is updated monthly. Available on campus only.<br />&nbsp;<br /></p>


                                 <h3><a title="Britannica Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.eb.com/" target="_blank">Encyclop&aelig;dia Britannica (Britannica Online), Academic Edition</a></h3>
                                <p>Contents of the Encyclop&aelig;dia Britannica and much more. Sections include: news of the day; links to relevant websites; 75,000 articles on general-interest topics; over 23,000 biographies; over 27,000 images and maps; over 3,300 animations; extensive World Atlas; and more than 75,000 definitions -- including pronunciation guides and word histories from Merriam-Webster's Collegiate Dictionary.<br />&nbsp;<br /></p>
                                <h3><a title="Funk & Wagnells New World Encyclopedia" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=funk" target="_blank">Funk & Wagnalls New World Encyclopedia (EBSCOhost)</a></h3>
                                <p>This database provides over 25,000 encyclopedic entries covering a variety of subject areas.<br />&nbsp;<br /></p>
                                <h3><a title="Gale Virtual Reference Library" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GVRL" target="_blank">Gale Virtual Reference Library (Gale)</a></h3>
                                <p>Access to over 150 e-book reference titles representing the following subjects: Arts, Business, Environment, History, Law, Literature, Medicine, Multicultural Studies, Nation and World, Science, Social Science, and Technology.<br />&nbsp;<br /></p>
                                <h3><a title="MAS Ultra - School Edition" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=ulh" target="_blank">MAS Ultra - School Edition (EBSCOhost)</a></h3>
                            <p>Designed specifically for high school libraries, this database contains full text for nearly 500 popular, high school magazines. MAS Ultra - School Edition also provides more than 360 full text reference books, 85,670 biographies, over 107,000 primary source documents, and an Image Collection of over 510,000 photos, maps & flags, color PDFs and expanded full text backfiles (back to 1975) for key magazines.<br />&nbsp;<br /></p> 
                             <h3><a title="MasterFILE Premier" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=f5h" target="_blank">MasterFILE Premier (EBSCOhost)</a></h3>
                            <p>Designed specifically for public libraries, this multidisciplinary database provides full text for nearly 1,700 periodicals with full-text information dating as far back as 1975. Covering virtually every subject area of general interest, MasterFILE Premier also contains full text for nearly 500 reference books and over 164,400 primary source documents, as well as an Image Collection of over 592,000 photos, maps & flags.<br />&nbsp;<br /></p> 
                            <h3><a title="Oxford English Dictionary" href="http://www.oed.com/" target="_blank">Oxford English Dictionary</a></h3>
                            <p>The definitive authority of the English language across the English-speaking world for the past millennium, including word history, pronunciation, and meanings.<strong>Available on campus only.</strong><br />&nbsp;<br /></p>   
                            </div>
                        </li>
                        <li>
                            <h3>English Language & Literature</h3>
                            <span>+</span>
                            <div class="panel">
                                
                                                           
                            <h3><a title="JSTOR Language and Literature Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.jstor.org/" target="_blank">JSTOR Language and Literature Collection (JSTOR)</a></h3>
                            <p>The 58 titles in this collection span the literary cultures of many different countries, containing articles in several languages, including Arabic, Italian, and German. Developed with the help of the Modern Language Association, the collection includes PMLA and a range of core journals in the diverse fields of literary criticism that have emerged in the last thirty years.<br />&nbsp;<br /></p>     						 
                            <h3><a title="Literature Resource Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=LitRC" target="_blank">Literature Resource Center (Gale)</a></h3>
                            <p>Contains biographical and critical information about thousands of authors and their writing. Information about literary movements, themes, and genres is also included.<br />&nbsp;<br /></p>  
                            </div>
                        </li>                       

                         <li>
                            <h3>Government & Politics</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="JSTOR Arts & Sciences" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.jstor.org" target="_blank">JSTOR Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.<br />&nbsp;<br /></p>
                                <h3><a title="Military and Government Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=mth" target="_blank">Military & Government Collection (EBSCOhost)</a></h3>
                                <p>Designed to offer current news pertaining to all branches of the military and government, this database offers a thorough collection of periodicals, academic journals, and other content pertinent to the increasing needs of those sites. The Military & Government Collection provides cover-to-cover full text for nearly 300 journals and periodicals and indexing and abstracts for more than 400 titles.<br />&nbsp;<br /></p>
                                <h3><a title="SIRS Government Reporter" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://sks.sirs.com/cgi-bin/hst-portal-gov?id=SCA5991-0-3572" target="_blank">SIRS Government Reporter</a></h3>
                            <p>Contains full-text documents on a wide variety of topics; the almanac databases include current and historic government documents; landmark and recent U.S. Supreme Court decisions; information about federal departments, agencies, elected leaders, and more.<br />&nbsp;<br /></p>   
                             <h3><a title="CountryWatch" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.countrywatch.com/ip" target="_blank">CountryWatch</a></h3>
                                <p>CountryWatch provides critical country-specific intelligence and data through its suite of products to over 4000 clients including public and private sector organizations with overseas operations and global interests.<br />&nbsp;<br /></p>
                            </div>
                        </li>                        
                        <li>
                            <h3>History</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="America: History & Life with Full Text"href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=31h" target="_blank">America: History & Life with Full Text (EBSCOhost)</a></h3>
                                <p>America: History & Life with Full Text is the definitive database of literature covering the history and culture of the United States and Canada, from prehistory to the present. With selective selective indexing for 1,700 journals from 1955 to present, this database is without question the most important bibliographic reference tool for students and scholars of U.S. and Canadian history. America: History & Life with Full Text also provides full-text coverage of more than 200 journals and nearly 100 books.<br />&nbsp;<br /></p>
                                <h3><a title="Facts on File American History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE52" target="_blank">American History Online (Facts on File)</a></h3>
                                <p>Spans more than 500 years of political, military, social, and cultural history, highlighting the important people and events of the American experience.<br />&nbsp;<br /></p>
<!--
                                <h3><a title="Facts on File American Women's History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE42" target="_blank">American Women's History Online (Facts on File)</a></h3>
                                <p>Covers the important people, events, legislation, and issues relevant to the study of women's history in the United States.<br />&nbsp;<br /></p>
                                <h3><a title="Facts on File African-American History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE01" target="_blank">African-American History Online (Facts on File)</a></h3>
                                <p>Provides expansive and in-depth information on the people, events, and topics important to the study of African-American history.<br />&nbsp;<br /></p>
                                <h3><a title="Facts on File American Indian History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE43" target="_blank">American Indian History Online (Facts on File)</a></h3>
                                <p>Offers thorough access to more than 15,000 years of Native American culture, history, and heritage.<br />&nbsp;<br /></p>
                                <h3><a title="Facts on File Ancient and Medieval History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE49" target="_blank">Ancient and Medieval History Online (Facts on File)</a></h3>
                                <p>Focuses on Egypt, Mesopotamia, Greece, Rome, Africa, Europe, the Americas, Asia, and Islamic Empire from prehistory through the 1500s.<br />&nbsp;<br /></p>
                                <h3><a title="European View of the Americas" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hev" target="_blank">European View of the Americas: 1493-1750 (EBSCOhost)</a></h3>
                                <p>This new bibliographic database is a valuable index for libraries, scholars and individuals interested in European works that relate to the Americas. EBSCO Publishing, in cooperation with the John Carter Brown Library, has created this resource from "European Americana: A Chronological Guide to Works Printed In Europe Relating to The Americas, 1493-1750," the authoritative bibliography that is well-known and respected by scholars worldwide. The database contains more than 32,000 entries and is a comprehensive guide to printed records about the Americas written in Europe before 1750.<br />&nbsp;<br /></p>
-->
                                <h3><a title="Modern World History Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE53" target="_blank">Modern World History Online (Facts on File)</a></h3>
                            <p>Covers the people, places, and events in the broad expanse of history-from mid-15th century to the present.<br />&nbsp;<br /></p>    
                            </div>
                        </li>
                       
                        <li>
                            <h3>News & Newspapers</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="Newspaper Source Plus" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=n5h" target="_blank">Newspaper Source Plus (EBSCOhost)</a></h3>
                                <p>Includes more than 860 full-text newspapers, providing more than 35 million full-text articles. In addition, the database features more than 857,000 television and radio news transcripts.<br />&nbsp;<br /></p>
                                <h3><a title="ProQuest" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.proquest.com/" target="_blank">ProQuest</a></h3>
                                <p>Offers thousands of articles on a wide variety of topics. <cite>ProQuest</cite> provides access to approximately 1,500 scholarly and general-interest periodicals, many of them full-text, covering all major fields of study in the humanities, social sciences, and science and technology. Dates of coverage vary, but some are available from 1985 to the present. The database is updated daily.<br />&nbsp;<br /></p>                         
                                <h3><a title="Proquest Historical Newspapers" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.proquest.com/?accountid=39846&selectids=1006442" target="_blank">ProQuest Historical Newspapers Los Angeles Times (1881 - 1985)</a></h3>
                                <p>The Los Angeles Times (1881-1985) offers full page and article images with searchable full text back to the first issue. The collection includes complete articles, photographs, advertisements, classified ads, legal notices, comics, editorials, commentary, letters to the editor, sports, radio and television schedules. Coverage: Dec. 4, 1881 - Dec. 31, 1985.<br />&nbsp;<br /></p>     
                            
                            <h3><a title="Regional Business News" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=bwh" target="_blank">Regional Business News (EBSCOhost)</a></h3>
                                <p>This database provides comprehensive full text coverage for regional business publications. Regional Business News incorporates coverage of more than 80 regional business publications covering all metropolitan and rural areas within the United States.<br />&nbsp;<br /></p> 
<!--
                                 <h3><a title="World News Digest" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE56" target="_blank">World News Digest: U.S. and World News 1940 - Present (Facts on File)</a></h3>
                            <p>Brings together and enhances nearly seven decades of news (US and World News from 1940 to present) from the renowned Facts On File World News Digest in print. Other features include Country Profiles, Almanac and Encyclopedia.<br />&nbsp;<br /></p>  
-->
                        </div>
                        </li>
                         <li>
                            <h3>Nursing, Health & Medicine</h3>
                            <span>+</span>
                            <div class="panel">


                                <h3><a title="CINAHL Plus with Full Text" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=rzh" target="_blank">CINAHL Plus with Full Text (EBSCOhost)</a></h3>
                                <p>CINAHL&reg; the Cumulative Index to Nursing and Allied Health Literature with Full Text is the world's most comprehensive source of full text for nursing &amp; allied health journals, providing full text for nearly 600 journals indexed in CINAHL. With full-text coverage dating back to 1981, CINAHL with Full Text is the definitive research tool for all areas of nursing and allied health literature. In addition, this database offers access to health care books, nursing dissertations, selected conference proceedings, standards of practice, educational software, audiovisuals and book chapters.<br />&nbsp;<br /></p>
                                <h3><a title="Consumer Health Complete" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=c9h" target="_blank">Consumer Health Complete (EBSCOhost)</a></h3>
                             <p>Consumer Health Complete is a comprehensive resource for consumer-oriented health content. It is designed to support patients' information needs and foster an overall understanding of health-related topics. Consumer Health Complete provides content covering all areas of health and wellness from mainstream medicine to the many perspectives of complementary, holistic and integrated medicine. In addition, Consumer Health Complete includes the Clinical Reference System and the Lexi-PAL Drug Guide, which provides access to up-to-date, concise and clinically relevant drug monographs. The database is updated on a weekly basis.<br />&nbsp;<br /></p>
                             <h3><a title="Health and Wellness Resource Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HWRC" target="_blank">Health and Wellness Resource Center (Gale)</a></h3>
                                <p>Includes all the contents of the Health Reference Center—Academic, as well as additional reference books, updated pamphlets, and Web links.<br />&nbsp;<br /></p>
                                <h3><a title="Health Reference Center - Academic" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HRCA" target="_blank">Health Reference Center - Academic (Gale)</a></h3>
                                <p>Provides articles from medical journals, consumer-health magazines, health newsletters, reference books, topical overviews, and pamphlets on health topics. The full text of many articles and all reference books and pamphlets is included. Forty nursing journals are included in full-text, published over the past five years.<br />&nbsp;<br /></p>
                            <h3><a title="Health Source - Consumer Edition" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hxh" target="_blank">Health Source - Consumer Edition (EBSCOhost)</a></h3>
                             <p>This database is the richest collection of consumer health information available to libraries worldwide, providing information on many health topics including the medical sciences, food sciences and nutrition, childcare, sports medicine and general health. Health Source: Consumer Edition provides access to nearly 80 full text, consumer health magazines.<br />&nbsp;<br /></p>
<!-- 
                            <h3><a title="Health Source - Nursing/Academic Edition" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hch" target="_blank">Health Source - Nursing/Academic Edition (EBSCOhost)</a></h3>
                             <p>This database provides nearly 550 scholarly full text journals focusing on many medical disciplines. Health Source: Nursing/Academic Edition also features the Lexi-PAL Drug Guide, which covers 1,300 generic drug patient education sheets with more than 4,700 brand names.<br />&nbsp;<br /></p>                            <h3><a title="MEDLINE" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=cmedm" target="_blank">MEDLINE (EBSCOhost)</a></h3>
                            <p>MEDLINE provides authoritative medical information on medicine, nursing, dentistry, veterinary medicine, the health care system, pre-clinical sciences, and much more. Created by the National Library of Medicine, MEDLINE uses MeSH (Medical Subject Headings) indexing with tree, tree hierarchy, subheadings and explosion capabilities to search citations from over 4,800 current biomedical journals.<br />&nbsp;<br /></p>   
                            <h3><a title="Nursing and Allied Health Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=PPNU" target="_blank">Nursing and Allied Health Collection (Gale)</a></h3>
                            <p>All aspects of the Nursing profession -- from direct patient care to health care administration -- are covered in this collection. Including nearly 400 titles, this collection's current and authoritative content will be of use to both professionals already working in the field as well as students pursuing a nursing-focused curriculum.<br />&nbsp;<br /></p>    
                            <h3><a title="Nursing Resource Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=NRC" target="_blank">Nursing Resource Center (Gale)</a></h3>
                            <p>Designed for nursing students, the Nursing Resource Center brings together in an easy-to-use interface disease and drug overviews, care plans, relevant journal results and animated anatomy and physiology diagrams to complement the core encyclopedia texts. The information is written in accessible language for students completing class assignments and preparing for clinicals as they learn how to care for and treat patients. Search results are returned in tabs that correspond to steps in the nursing process.<br />&nbsp;<br /></p> 

          		<h3><a title="Well-Connected Reports (A.D.A.M.)" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.interactiveanatomy.com/default.aspx?account=73-0026533&edition=8" target="_blank"><strong>Well-Connected Reports (A.D.A.M.)</strong></a></h3>
          		<p>Well-Connected In-Depth Reports are designed to provide a more thorough and comprehensive understanding of complex information than ordinary household medical reference books or online resources. Written by top medical journalists and reviewed by an expert physician board that includes faculty at the Harvard Medical School, the online library includes 100 detailed, in-depth reports on key health conditions. For the newly diagnosed, those with a loved one with a chronic condition or those requiring more in-depth information on a specific condition, Well-Connected online reports provide reliable, comprehensive and current information. Well-Connected Reports assesses and incorporates into each report the most current, relevant, and authoritative information available. Other features include extensive tables, links to reviewed and useful sites, links for locating specialists, links to Medline and other articles used in updating the reports.</p> 
 -->  
                            </div>
                        </li>
                        
                        <li>
                            <h3>Religion & Philosophy</h3>
                            <span>+</span>
                            <div class="panel">
                        <h3><a title="Religion and Philosophy Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=rlh" target="_blank">Religion and Philosophy Collection (EBSCOhost)</a></h3>
                                <p>Provides extensive coverage of such topics as world religions, major denominations, biblical studies, religious history, epistemology, political philosophy, philosophy of language, moral philosophy and the history of philosophy. With more more than 300 full text journals, the Religion & Philosophy Collection is an essential tool for researchers and students of theology and philosophical studies.<br />&nbsp;<br /></p>
                        	</div>
                        </li>
                        <li>
                            <h3>Psychology</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="Psychology and Behavioral Sciences Collection" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=pbh" target="_blank">Psychology and Behavioral Sciences Collection (EBSCOhost)</a></h3>
                                <p>Psychology & Behavioral Sciences Collection is a comprehensive database covering information concerning topics in emotional and behavioral characteristics, psychiatry & psychology, mental processes, anthropology, and observational & experimental methods. This is the world's largest full text psychology database offering full text coverage for nearly 400 journals.<br />&nbsp;<br /></p>
                            </div>
                        </li>
                        <li>
                            <h3>Social Issues, Controversial and Debate Topics</h3>
                            <span>+</span>
                            <div class="panel">                           
                        	<h3><a title="CQ Researcher" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://library.cqpress.com/cqresearcher/" target="_blank">CQ Researcher</a></h3>
                                <p>CQ Researcher explores a single "hot" issue in the news in depth each week. Topics range from social issues to science and technology. There are 44 reports each year, including four expanded reports.<br />&nbsp;<br /></p>
                            <h3><a title="GenderWatch" href="http://search.proquest.com/?accountid=39846&selectids=1006729" target="_blank">GenderWatch (ProQuest)</a></h3>
                            <p>This database contains unique and diverse publications that focus on how gender impacts a broad spectrum of subject areas. With its archival material, dating back to 1970 in some cases, GenderWatch is a repository of important historical perspectives on the evolution of the women's movement, men's studies, the transgendered community and the changes in gender roles over the years. Publications include scholarly journals, magazines, newspapers, newsletters, regional publications, books and NGO, government and special reports.<br />&nbsp;<br /></p>
                                
                            <h3><a title="Global Issues In Context" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GIC" target="_blank">Global Issues In Context</a></h3>

<p><i>Global Issues in Context</i> ties together sources to present a rich analysis of issues - social, political, military, economic, environmental, science related, health related, cultural - and headlines in world hot spots. It provides information seekers with a framework to better understand 21st-century issues and events while highlighting global connections and the interdependence of all nations.<br />&nbsp;<br /></p>
                                
                            <h3><a title="GreenFILE" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=8gh" target="_blank">GreenFILE (EBSCOhost)</a></h3>
                                <p>GreenFILE offers well-researched information covering all aspects of human impact to the environment. Its collection of scholarly, government and general-interest titles includes content on global warming, green building, pollution, sustainable agriculture, renewable energy, recycling, and more. The database provides indexing and abstracts for more than 384,000 records, as well as Open Access full text for more than 4,700 records.<br />&nbsp;<br /></p>
                                
                                <h3><a title="GREENR (Global Resources on Energy,Environment, and Natural Resources)" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GRNR" target="_blank">GREENR (Global Resources on Energy,Environment, and Natural Resources)</a></h3><p>The Global Reference on the Environment, Energy, and Natural Resources focuses on the physical, social, and economic aspects of environmental issues. Topic, organization, and country portals form research centers around issues covering energy systems, health care, agriculture, climate change, population, and economic development. Portals include authoritative analysis, academic journals, news, case studies, legislation, conference proceedings, primary source documents, statistics, and rich multimedia. Use Browse Issues and Topics, World Map, Basic Search or Advanced Search to explore the database.<br />&nbsp;<br /></p>
                                    
                                <h3><a title="Issues and Controversies" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE57" target="_blank">Issues & Controversies (Facts on File)</a></h3>
                            <p>Explores more than 800 hot topics in business, politics, government, education, and popular culture.<br />&nbsp;<br /></p> 
                            <h3><a title="Opposing Viewpoints Resource Center" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=OVRC" target="_blank">Opposing Viewpoints Resource Center (Gale)</a></h3>
                            <p>A source for discussion of social issues and topics from the Greenhaven Press Opposing Viewpoints series and other Gale and Macmillan reference resources. Includes viewpoint articles, topic overviews, statistics, primary documents, links to websites, and full-text magazine and newspaper articles.<br />&nbsp;<br /></p> 
                            <h3><a title="SIRS Issues Researcher" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://sks.sirs.com/cgi-bin/hst-portal-res?id=SCA5991-0-3572" target="_blank">SIRS Issues Researcher</a></h3>
                            <p>SIRS Issues Researcher helps students make sense of the world by offering relevant, credible resources that tell the whole story on the major issues and world conflicts of the day.<br />&nbsp;<br /></p>
                                
                         </div>
                        </li>
                        <li>
                            <h3>Science</h3>
                            <span>+</span>
                            <div class="panel">
                                <h3><a title="CRC Handbook of Chemistry & Physics" href="http://www.hbcpnetbase.com/" target="_blank">CRC Handbook of Chemistry & Physics</a></h3>
                                <p>The full text of the 92nd edition, 2011-2012, providing broad coverage of all types of physical science data commonly encountered by scientists and engineers.<strong> Available on campus only.</strong><br />&nbsp;<br /></p>
                                <h3><a title="GreenFILE" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=8gh" target="_blank">GreenFILE (EBSCOhost)</a></h3>
                                <p>GreenFILE offers well-researched information covering all aspects of human impact to the environment. Its collection of scholarly, government and general-interest titles includes content on global warming, green building, pollution, sustainable agriculture, renewable energy, recycling, and more. The database provides indexing and abstracts for more than 384,000 records, as well as Open Access full text for more than 4,700 records.<br />&nbsp;<br /></p>
                                
                                <h3><a title="GREENR (Global Resources on Energy,Environment, and Natural Resources)" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GRNR" target="_blank">GREENR (Global Resources on Energy,Environment, and Natural Resources)</a></h3><p>The Global Reference on the Environment, Energy, and Natural Resources focuses on the physical, social, and economic aspects of environmental issues. Topic, organization, and country portals form research centers around issues covering energy systems, health care, agriculture, climate change, population, and economic development. Portals include authoritative analysis, academic journals, news, case studies, legislation, conference proceedings, primary source documents, statistics, and rich multimedia. Use Browse Issues and Topics, World Map, Basic Search or Advanced Search to explore the database.<br />&nbsp;<br /></p>
                                    
                                    
                                <h3><a title="JSTOR Arts & Sciences" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://www.jstor.org" target="_blank">JSTOR Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.<br />&nbsp;<br /></p>
<!--
                                <h3><a title="Science Online" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE40" target="_blank">Science Online (Facts on File)</a></h3>
                            <p>Presents a broad range of scientific disciplines through extensive definitions, essays, diagrams, biographies, and experiments.<br />&nbsp;<br /></p>     
-->
                             <h3><a title="Todays Science" href="http://lib-ezproxy.lbcc.edu:2048/login?url=http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE59" target="_blank">Today's Science (Facts on File)</a></h3>
                            <p>Updated weekly and containing thousands of links to a 15-year backfile, Today's Science explains important developments in biology, chemistry, the environment, space, physics, and technology.</p>    
                                
                            </div>
                        </li>                      
                        
                   </ul>    
                  
                   <br />
                    
                   
                </div>
                </div> 
               
			<cfinclude template="rightnavstandard.cfm">
			</div>		
		<div class="clear"> </div>
		
	
	</div>
	<!-- close outer-content-container -->

	<div class="clear"></div>
	<!-- close feature-container -->

	<cfinclude template="footer.cfm">

</div>
</body>
</html>