<cfset usersIP = "#CGI.REMOTE_ADDR#">
<cfif Left(#usersIP#,3) eq "10.">
	<!--ON CAMPUS -->
<cfelse>
	<!--<cfoutput>#usersIP#</cfoutput> OFF CAMPUS     -->
    <!--Route Off-campus users to login page first -->
    <cfset proxyCheck = "#CGI.HTTP_REFERER#">
	<cfif Left(#proxyCheck#, 25) eq "http://voyager2.lbcc.edu:">
    	<!--Allow Pass thru -->
    <cfelse>
    	<cflocation url="http://voyager2.lbcc.edu:2048/login?user=dlstudent&pass=dlweb" addtoken="no">
    </cfif>
</cfif>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>LBCC Library Databases</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="" type="image/x-icon" />
<script type="text/javascript" src="https://www.google.com/jsapi?key=ABQIAAAA9rJpUdMKnSDOHuOLAZ3EtBQ8ahoZ_Ar5W_8TI_6wE4qgbNWkgRTaC6ekMlIIaLt4nuhRpMZgbNITKA"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<link href="http://www.lbcc.edu/favicon.ico" type="image/x-icon" rel="shortcut icon" />
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
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script> 
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
    width:600px;
}
 
    #toggle-view li {
        margin:5px;
        position:relative;
        cursor:pointer;
    }
     
    #toggle-view h3 {
        margin:0;
        font-size:14px;
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


<!--BEGIN MAIN CONTENT & RIGHT NAV -->
    <div id="outer-content-container" class="container_16"> 
		<div id="content-container" class="container_16">  
			<div id="top-content">             	
			  <div id="generalcontent"  class="grid_11 alpha"> 				
              <div class="main-content">
				 <p class="breadcrumb">You are here: <a href="http://www.lbcc.edu" title="LBCC Home Page">LBCC Home</a> &raquo; <a href="index.cfm">LBCC Library Home</a> &raquo; FIND &raquo; Databases</p><br />
                <h1>Databases</h1>   
                  <p>The following databases are licensed for use by current students, faculty, and staff of Long Beach City College only and paid for by the Library. Most databases may be accessed from off-campus by clicking the link below and following the instructions. </p>
                    <cfparam name="begins" default="0">
                    <cfform method="post" action="databases.cfm">
                   <!-- <p>By Keyword:
                        <input name="keywords" type="text" size="25" /> in
                        <input name="search_all" type="submit" class="button" value="Titles &amp; Descriptions" /> or
                        <input name="search_titles" type="submit" class="button" value="Titles Only" />
                    </p>
                    <p>
                        <strong>OR</strong> Beginning With: -->
                        <h2>Databases by Title</h2>
                        <input name="begins" type="submit" value="A" />
                        <input name="begins" type="submit" value="B" />
                        <input name="begins" type="submit" value="C" />
                        <input name="begins" type="submit" value="D" disabled />
                        <input name="begins" type="submit" value="E" />
                        <input name="begins" type="submit" value="F" />
                        <input name="begins" type="submit" value="G" />
                        <input name="begins" type="submit" value="H" />
                        <input name="begins" type="submit" value="I" />
                        <input name="begins" type="submit" value="J" />
                        <input name="begins" type="submit" value="K" disabled />
                        <input name="begins" type="submit" value="L" />
                        <input name="begins" type="submit" value="M" />
                        <input name="begins" type="submit" value="N" />
                        <input name="begins" type="submit" value="O" />
                        <input name="begins" type="submit" value="P" />
                        <input name="begins" type="submit" value="Q" disabled />
                        <input name="begins" type="submit" value="R" />
                        <input name="begins" type="submit" value="S" />
                        <input name="begins" type="submit" value="T" />
                        <input name="begins" type="submit" value="U" disabled />
                        <input name="begins" type="submit" value="V" disabled />
                        <input name="begins" type="submit" value="W" />
                        <input name="begins" type="submit" value="X" disabled />
                        <input name="begins" type="submit" value="Y" disabled />
                        <input name="begins" type="submit" value="Z" disabled />                        	
                    </p>
                </cfform>
                    
                    
                    	<cfswitch expression="#Trim(begins)#"> 
    						<cfcase value="A">
                            <h3><a title="Academic Search Premiere" name="a" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=aph" target="_blank" >Academic Search Premiere (EBSCOhost)</a></h3>
        						
            				<p>This multi-disciplinary database provides full text for more than 4,600 journals, including full text for nearly 3,900 peer-reviewed titles. PDF backfiles to 1975 or further are available for well over one hundred journals, and searchable cited references are provided for more than 1,000 titles.</p>
        						   <h3><a title="America: History & Life with Full Text" name="a" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=31h" target="_blank">America: History & Life with Full Text (EBSCOhost)</a></h3>
                                <p>America: History & Life with Full Text is the definitive database of literature covering the history and culture of the United States and Canada, from prehistory to the present. With selective selective indexing for 1,700 journals from 1955 to present, this database is without question the most important bibliographic reference tool for students and scholars of U.S. and Canadian history. America: History & Life with Full Text also provides full-text coverage of more than 200 journals and nearly 100 books.</p>
                                <h3><a title="Facts on File American History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE52" target="_blank">American History Online (Facts on File)</a></h3>
                                <p>Spans more than 500 years of political, military, social, and cultural history, highlighting the important people and events of the American experience.</p>
                                <h3><a title="Facts on File American Women's History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE42" target="_blank">American Women's History Online (Facts on File)</a></h3>
                                <p>Covers the important people, events, legislation, and issues relevant to the study of women's history in the United States.</p>
                                <h3><a title="Facts on File African-American History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE01" target="_blank">African-American History Online (Facts on File)</a></h3>
                                <p>Provides expansive and in-depth information on the people, events, and topics important to the study of African-American history.</p>
                                <h3><a title="Facts on File American Indian History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE43" target="_blank">American Indian History Online (Facts on File)</a></h3>
                                <p>Offers thorough access to more than 15,000 years of Native American culture, history, and heritage.</p>
                                <h3><a title="Facts on File Ancient and Medieval History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE49" target="_blank">Ancient and Medieval History Online (Facts on File)</a></h3>
                                <p>Focuses on Egypt, Mesopotamia, Greece, Rome, Africa, Europe, the Americas, Asia, and Islamic Empire from prehistory through the 1500s.</p>
                                <h3><a title="ARTstor" href="http://voyager2.lbcc.edu:2048/login?url=http://www.artstor.org" target="_blank">ARTstor</a></h3>
                                <p>ARTstor is a nonprofit digital library of more than one million images in the arts, architecture, humanities, and social sciences with a suite of software tools to view, present, and manage images for research and pedagogical purposes. Our community-built collections comprise contributions from outstanding museums, photographers, libraries, scholars, photo archives, and artists and artists' estates.</p>
                                <h3><a title="Art Museum Image Gallery" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=ami" target="_blank">Art Museum Image Gallery (EBSCOhost)</a></h3>
                                <p>Art Museum Image Gallery offers unparalleled access to thousands of high-quality art images and related multimedia. Drawing on the collections of distinguished museums, there are over 165,000 superior quality images with covering time periods ranging from 3000 B.C. to the present day. The collection represents art from the cultures of Africa, Asia, Europe, and the Americas, including Native American and Meso-American peoples.</p>
                                <h3><a title="JSTOR Arts & Sciences" href="http://www.jstor.org" target="_blank">Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.</p>
                            </cfcase> 
                            <cfcase value="B"> 
                                <h3><a title="Bartleby.com" href="http://www.bartleby.com" target="_blank">Bartleby.com</a></h3>
                                <p>Online full-text of selected literature, reference material, and poetry. No password needed.</p>
                                
                                <h3><a title="Books in Print" href="http://www.booksinprint.com" target="_blank">Books In Print</a></h3>
                                <p>Publishing information on 1.9 million titles (including reviews) about books and media that are currently published and other books declared out-of-print over the last ten years. The database is updated monthly. <strong>Available on campus only.</strong></p>
                                
                                 <h3><a title="Britannica Online" href="http://search.eb.com/" target="_blank">Britannica Online, Academic Edition</a></h3>
                                <p>Contents of the Encyclopaedia Britannica and much more. Sections include: news of the day; links to relevant websites; 75,000 articles on general-interest topics; over 23,000 biographies; over 27,000 images and maps; over 3,300 animations; extensive World Atlas; and more than 75,000 definitions--including pronunciation guides and word histories—from Merriam-Webster's Collegiate Dictionary.</p>
                                <h3><a title="Business Company Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=BCRC" target="_blank">Business Company Resource Center (Gale)</a></h3>
                                <p>Business and Company Resource Center is a fully integrated resource bringing together company profiles, brand information, rankings, investment reports, company histories, chronologies and periodicals. Search this database to find detailed company and industry news and information.</p>
                                 <h3><a title="Business Insights: Essentials" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=BIE" target="_blank">Business Insights: Essentials (Gale)</a></h3>
                                <p>Combines all of the content formerly found in Business & Company Resource Center with a new interface designed around the research goals and workflows of your diverse business research community. Easily find information on companies, industries and more in the context of timely news, statistical data, and in-depth reports.</p>
                            </cfcase> 
                            <cfcase value="C"> 
                               <h3><a title="Career Guidance Center" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE34" target="_blank">Career Guidance Center (Ferguson's/Facts on File)</a></h3>
                                <p>Provides detailed profiles of more than 3,400 jobs and 94 industries, invaluable advice on career skills, more than 48,000 resource entries, and much more!</p>
                                <h3><a title="CINAHL Plus with Full Text" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=rzh" target="_blank">CINAHL Plus with Full Text (EBSCOhost)</a></h3>
                                <p>CINAHL® the Cumulative Index to Nursing and Allied Health Literature with Full Text is the world's most comprehensive source of full text for nursing & allied health journals, providing full text for nearly 600 journals indexed in CINAHL.With full-text coverage dating back to 1981, CINAHL with Full Text is the definitive research tool for all areas of nursing and allied health literature. In addition, this database offers access to health care books, nursing dissertations, selected conference proceedings, standards of practice, educational software, audiovisuals and book chapters.</p>
                                <h3><a title="Consumer Health Complete" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=c9h" target="_blank">Consumer Health Complete (EBSCOhost)</a></h3>
                             <p>Consumer Health Complete is a comprehensive resource for consumer-oriented health content. It is designed to support patients' information needs and foster an overall understanding of health-related topics. Consumer Health Complete provides content covering all areas of health and wellness from mainstream medicine to the many perspectives of complementary, holistic and integrated medicine. In addition, Consumer Health Complete includes the Clinical Reference System and the Lexi-PAL Drug Guide, which provides access to up-to-date, concise and clinically relevant drug monographs. The database is updated on a weekly basis.</p>
                                <h3><a title="CountryWatch" href="http://www.countrywatch.com/ip" target="_blank">CountryWatch</a></h3>
                                <p>CountryWatch provides critical country-specific intelligence and data through its suite of products to over 4000 clients including public and private sector organizations with overseas operations and global interests.  <strong>Available on campus only.</strong></p>
                                <h3><a title="CQ Researcher" href="http://library.cqpress.com/cqresearcher/" target="_blank">CQ Researcher</a></h3>
                                <p>CQ Researcher explores a single "hot" issue in the news in depth each week. Topics range from social issues to science and technology. There are 44 reports each year, including four expanded reports.</p>
                                <h3><a title="CRC Handbook of Chemistry & Physics" href="http://www.hbcpnetbase.com/" target="_blank">CRC Handbook of Chemistry & Physics</a></h3>
                                <p>The full text of the 92nd edition, 2011-2012, providing broad coverage of all types of physical science data commonly encountered by scientists and engineers.</p>
                                <!--<h3><a title="Current Issues: Environment" href="http://vnweb.hwwilsonweb.com/hww/jumpstart.jhtml" target="_blank">Current Issues: Environment</a></h3>
                                <p>Current Issues: Environment presents a carefully prepared database composed of 100% full text articles from a variety of key publications covering important environmental issues.</p> -->
                            </cfcase> 
                            <cfcase value="D"> 
                               No Databases starting with D 
                            </cfcase> 
                            <cfcase value="E"> 
                                 <h3><a title="E-books" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=nlebk" target="_blank">E-books (EBSCOhost)</a></h3>
                                <p>Full text for over 11,300 complete books on a variety of academic and literary topics.</p>
                                <h3><a title="EBSCOhost Premiere Collection" href="http://search.ebscohost.com/login.asp?profile=ehost" target="_blank">EBSCOhost Premiere Collection</a></h3>
                                <p>Full text periodical databases. Indexes and provides full text to thousand of titles. Subject coverage is broad and includes scholarly publications. Includes the following individual databases: MasterFILE Premier, Academic Search Premier, Business Source Elite, Health Source Nursing/Academic and Consumer Editions, Psychology & Behavioral Sciences Collection, Religion & Philosophy Collection, Professional Development Collection, Military & Government Collection, Newspaper Source, ERIC, MEDLINE, and CINAHL and more. </p>
                              <h3><a title="Britannica Online" href="http://search.eb.com/" target="_blank">Encyclopaedia Britannica (Britannica Online), Academic Edition</a></h3>
                                <p>Contents of the Encyclopaedia Britannica and much more. Sections include: news of the day; links to relevant websites; 75,000 articles on general-interest topics; over 23,000 biographies; over 27,000 images and maps; over 3,300 animations; extensive World Atlas; and more than 75,000 definitions -- including pronunciation guides and word histories from Merriam-Webster's Collegiate Dictionary.</p>
                                 <h3><a title="ERIC" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=eric" target="_blank">ERIC - Education Resource Information Center (EBSCOhost)</a></h3>
                                <p>ERIC, the Education Resource Information Center, contains more than 1.3 million records and links to more than 323,000 full-text documents dating back to 1966.</p>
                                <h3><a title="European View of the Americas" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hev" target="_blank">European View of the Americas: 1493-1750 (EBSCOhost)</a></h3>
                                <p>This new bibliographic database is a valuable index for libraries, scholars and individuals interested in European works that relate to the Americas. EBSCO Publishing, in cooperation with the John Carter Brown Library, has created this resource from "European Americana: A Chronological Guide to Works Printed In Europe Relating to The Americas, 1493-1750," the authoritative bibliography that is well-known and respected by scholars worldwide. The database contains more than 32,000 entries and is a comprehensive guide to printed records about the Americas written in Europe before 1750.</p>
                            </cfcase> 
                            <cfcase value="F"> 
                                  <h3><a title="Funk & Wagnells New World Encyclopedia" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=funk" target="_blank">Funk & Wagnalls New World Encyclopedia (EBSCOhost)</a></h3>
                                <p>This database provides over 25,000 encyclopedic entries covering a variety of subject areas.</p>
                            </cfcase> 
                            <cfcase value="G"> 
                                  <h3><a title="Gale Virtual Reference Library" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GVRL" target="_blank">Gale Virtual Reference Library (Gale)</a></h3>
                                <p>Access to over 150 e-book reference titles representing the following subjects: Arts, Business, Environment, History, Law, Literature, Medicine, Multicultural Studies, Nation and World, Science, Social Science, and Technology. </p>
                                 <h3><a title="GreenFILE" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=8gh" target="_blank">GreenFILE (EBSCOhost)</a></h3>
                                <p>GreenFILE offers well-researched information covering all aspects of human impact to the environment. Its collection of scholarly, government and general-interest titles includes content on global warming, green building, pollution, sustainable agriculture, renewable energy, recycling, and more. The database provides indexing and abstracts for more than 384,000 records, as well as Open Access full text for more than 4,700 records.</p>
                            </cfcase> 
                            <cfcase value="H"> 
                                  <h3><a title="Health and Wellness Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HWRC" target="_blank">Health and Wellness Resource Center (Gale)</a></h3>
                                <p>Includes all the contents of the Health Reference Center—Academic, as well as additional reference books, updated pamphlets, and Web links.</p>
                                  <h3><a title="Health Reference Center - Academic" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HRCA" target="_blank">Health Reference Center - Academic (Gale)</a></h3>
                                <p>Provides articles from medical journals, consumer-health magazines, health newsletters, reference books, topical overviews, and pamphlets on health topics. The full text of many articles and all reference books and pamphlets is included. Forty nursing journals are included in full-text, published over the past five years.</p>
                            <h3><a title="Health Source - Consumer Edition" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hxh" target="_blank">Health Source - Consumer Edition (EBSCOhost)</a></h3>
                             <p>This database is the richest collection of consumer health information available to libraries worldwide, providing information on many health topics including the medical sciences, food sciences and nutrition, childcare, sports medicine and general health. Health Source: Consumer Edition provides access to nearly 80 full text, consumer health magazines.</p>
                              <h3><a title="Health Source - Nursing/Academic Edition" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hch" target="_blank">Health Source - Nursing/Academic Edition (EBSCOhost)</a></h3>
                             <p>This database provides nearly 550 scholarly full text journals focusing on many medical disciplines. Health Source: Nursing/Academic Edition also features the Lexi-PAL Drug Guide, which covers 1,300 generic drug patient education sheets with more than 4,700 brand names.</p>
                            </cfcase> 
                            <cfcase value="I"> 
                            <h3><a title="Issues and Controversies" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE57" target="_blank">Issues & Controversies (Facts on File)</a></h3>
                            <p>Explores more than 800 hot topics in business, politics, government, education, and popular culture. </p>  
                            </cfcase> 
                            <cfcase value="J"> 
                               <h3><a title="JSTOR Arts & Sciences" href="http://www.jstor.org" target="_blank">JSTOR Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.</p>
                              <h3><a title="JSTOR Language and Literature Collection" href="http://www.jstor.org/" target="_blank">JSTOR Language and Literature Collection (JSTOR)</a></h3>
                            <p>The 58 titles in this collection span the literary cultures of many different countries, containing articles in several languages, including Arabic, Italian, and German. Developed with the help of the Modern Language Association, the collection includes PMLA and a range of core journals in the diverse fields of literary criticism that have emerged in the last thirty years. </p>     
                            </cfcase> 
                            <cfcase value="K"> 
                               No Databases starting with K  
                            </cfcase> 
                            <cfcase value="L"> 
                              <h3><a title="Language and Literature Collection" href="http://www.jstor.org/" target="_blank">Language and Literature Collection (JSTOR)</a></h3>
                            <p>The 58 titles in this collection span the literary cultures of many different countries, containing articles in several languages, including Arabic, Italian, and German. Developed with the help of the Modern Language Association, the collection includes PMLA and a range of core journals in the diverse fields of literary criticism that have emerged in the last thirty years. </p>     
                            <h3><a title="Library, Information Science and Technology Abstracts" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=lxh" target="_blank">Library, Information Science and Technology Abstracts (EBSCOhost)</a></h3>
	<p>Library, Information Science & Technology Abstracts (LISTA) indexes more than 560 core journals, nearly 50 priority journals, and nearly 125 selective journals; plus books, research reports and proceedings. Subject coverage includes librarianship, classification, cataloging, bibliometrics, online information retrieval, information management and more. Coverage in the database extends back as far as the mid-1960s.</p> 
                            <h3><a title="Literature Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=LitRC" target="_blank">Literature Resource Center (Gale)</a></h3>
                            <p>Contains biographical and critical information about thousands of authors and their writing. Information about literary movements, themes, and genres is also included.</p>    
                            </cfcase> 
                            
                            <cfcase value="M"> 
                              <h3><a title="MAS Ultra - School Edition" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=ulh" target="_blank">MAS Ultra - School Edition (EBSCOhost)</a></h3>
                            <p>Designed specifically for high school libraries, this database contains full text for nearly 500 popular, high school magazines. MAS Ultra – School Edition also provides more than 360 full text reference books, 85,670 biographies, over 107,000 primary source documents, and an Image Collection of over 510,000 photos, maps & flags, color PDFs and expanded full text backfiles (back to 1975) for key magazines.</p> 
                             <h3><a title="MasterFILE Premier" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=f5h" target="_blank">MasterFILE Premier (EBSCOhost)</a></h3>
                            <p>Designed specifically for public libraries, this multidisciplinary database provides full text for nearly 1,700 periodicals with full-text information dating as far back as 1975. Covering virtually every subject area of general interest, MasterFILE Premier also contains full text for nearly 500 reference books and over 164,400 primary source documents, as well as an Image Collection of over 592,000 photos, maps & flags.</p> 
                             <h3><a title="MEDLINE" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=cmedm" target="_blank">MEDLINE (EBSCOhost)</a></h3>
                            <p>MEDLINE provides authoritative medical information on medicine, nursing, dentistry, veterinary medicine, the health care system, pre-clinical sciences, and much more. Created by the National Library of Medicine, MEDLINE uses MeSH (Medical Subject Headings) indexing with tree, tree hierarchy, subheadings and explosion capabilities to search citations from over 4,800 current biomedical journals.</p>    
                             <h3><a title="Military and Government Collection" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=mth" target="_blank">Military & Government Collection (EBSCOhost)</a></h3>
                                <p>Designed to offer current news pertaining to all branches of the military and government, this database offers a thorough collection of periodicals, academic journals, and other content pertinent to the increasing needs of those sites. The Military & Government Collection provides cover-to-cover full text for nearly 300 journals and periodicals and indexing and abstracts for more than 400 titles. </p>
                             <h3><a title="Modern World History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE53" target="_blank">Modern World History Online (Facts on File)</a></h3>
                            <p>Covers the people, places, and events in the broad expanse of history-from mid-15th century to the present.</p>    
                            </cfcase> 
                            <cfcase value="N">
                            <h3><a title="Newspaper Source Plus" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=n5h" target="_blank">Newspaper Source Plus (EBSCOhost)</a></h3>
                                <p>Includes more than 860 full-text newspapers, providing more than 35 million full-text articles. In addition, the database features more than 857,000 television and radio news transcripts.</p>
                              <h3><a title="Nursing and Allied Health Collection" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=PPNU" target="_blank">Nursing and Allied Health Collection (Gale)</a></h3>
                            <p>All aspects of the Nursing profession -- from direct patient care to health care administration -- are covered in this collection. Including nearly 400 titles, this collection's current and authoritative content will be of use to both professionals already working in the field as well as students pursuing a nursing-focused curriculum.  </p>    
                            <h3><a title="Nursing Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=NRC" target="_blank">Nursing Resource Center (Gale)</a></h3>
                            <p>Designed for nursing students, the Nursing Resource Center brings together in an easy-to-use interface disease and drug overviews, care plans, relevant journal results and animated anatomy and physiology diagrams to complement the core encyclopedia texts. The information is written in accessible language for students completing class assignments and preparing for clinicals as they learn how to care for and treat patients. Search results are returned in tabs that correspond to steps in the nursing process.</p>    
                            </cfcase>
                            <cfcase value="O"> 
                              <h3><a title="Opposing Viewpoints Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=OVRC" target="_blank">Opposing Viewpoints Resource Center (Gale)</a></h3>
                            <p>A source for discussion of social issues and topics from the Greenhaven Press Opposing Viewpoints series and other Gale and Macmillan reference resources. Includes viewpoint articles, topic overviews, statistics, primary documents, links to websites, and full-text magazine and newspaper articles. </p> 
                            <h3><a title="Oxford English Dictionary" href="http://www.oed.com/" target="_blank">Oxford English Dictionary</a></h3>
                            <p>The definitive authority of the English language across the English-speaking world for the past millennium, including word history, pronunciation, and meanings.</p>   
                            </cfcase> 
                            <cfcase value="P"> 
                                <h3><a title="Professional Collection" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=PPRF" target="_blank">Professional Collection (Gale)</a></h3>
                            <p>A custom selection of more than 300 full-text journals for educators and administrators, provides balanced coverage for any professional educator. </p>    
                                <h3><a title="Professional Development Collection" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=tfh" target="_blank">Professional Development Collection (EBSCOhost)</a></h3>
                                <p>Designed for professional educators, this database provides a highly specialized collection of nearly 520 high quality education journals, including more than 350 peer-reviewed titles. This database also contains more than 200 educational reports. Professional Development Collection is the most comprehensive collection of full text education journals in the world.</p>
                                <h3><a title="ProQuest" href="http://search.proquest.com/" name="p" target="_blank">ProQuest</a></h3>
                                <p>Offers thousands of articles on a wide variety of topics. <cite>ProQuest</cite> provides access to approximately 1,500 scholarly and general-interest periodicals, many of them full-text, covering all major fields of study in the humanities, social sciences, and science and technology. Dates of coverage vary, but some are available from 1985 to the present. The database is updated daily.</p>                         
                                <h3><a title="Proquest Historical Newspapers" href="http://proquest.umi.com/login?COPT=REJTPTM2ZmImSU5UPTAmVkVSPTI=&clientId=27896" target="_blank">ProQuest Historical Newspapers Los Angeles Times (1881 - 1985)</a></h3>
                                <p>The Los Angeles Times (1881-1985) offers full page and article images with searchable full text back to the first issue. The collection includes complete articles, photographs, advertisements, classified ads, legal notices, comics, editorials, commentary, letters to the editor, sports, radio and television schedules. Coverage: Dec. 4, 1881 - Dec. 31, 1985.</p>      
                                <h3><a title="Psychology and Behavioral Sciences Collection" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=pbh" target="_blank">Psychology and Behavioral Sciences Collection (EBSCOhost)</a></h3>
                                <p>Psychology & Behavioral Sciences Collection is a comprehensive database covering information concerning topics in emotional and behavioral characteristics, psychiatry & psychology, mental processes, anthropology, and observational & experimental methods. This is the world's largest full text psychology database offering full text coverage for nearly 400 journals. </p>
                            </cfcase> 
                            <cfcase value="Q"> 
                                
                            </cfcase> 
                            <cfcase value="R"> 
                             <h3><a title="Regional Business News" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=bwh" target="_blank">Regional Business News (EBSCOhost)</a></h3>
                                <p>This database provides comprehensive full text coverage for regional business publications. Regional Business News incorporates coverage of more than 80 regional business publications covering all metropolitan and rural areas within the United States.</p>   
                             <h3><a title="Religion and Philosophy Collection" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=rlh" target="_blank">Religion and Philosophy Collection (EBSCOhost)</a></h3>
                                <p>Provides extensive coverage of such topics as world religions, major denominations, biblical studies, religious history, epistemology, political philosophy, philosophy of language, moral philosophy and the history of philosophy. With more more than 300 full text journals, the Religion & Philosophy Collection is an essential tool for researchers and students of theology and philosophical studies.</p>   
                            </cfcase> 
                            <cfcase value="S"> 
                             <h3><a title="Science Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE40" target="_blank">Science Online (Facts on File)</a></h3>
                            <p>Presents a broad range of scientific disciplines through extensive definitions, essays, diagrams, biographies, and experiments.</p>     
                             <h3><a title="SIRS Government Reporter" href="http://sks.sirs.com/cgi-bin/hst-portal-gov?id=SCA5991-0-3572" target="_blank">SIRS Government Reporter</a></h3>
                            <p>Contains full-text documents on a wide variety of topics; the almanac databases include current and historic government documents; landmark and recent U.S. Supreme Court decisions; information about federal departments, agencies, elected leaders, and more.</p>   
                            <h3><a title="SIRS Renaissance - Current Perspectives on the Arts and Humanities" href="http://sks.sirs.com/cgi-bin/hst-portal-ren?id=SCA5991-0-3572" target="_blank">SIRS Renaissance - Current Perspectives on the Arts & Humanities</a></h3>
                            <p>SIRS Renaissance is a reference database that provides dynamic information on the following topics: architecture and design, culture, literature, multimedia, music, performing arts, philosophy and religion, and visual arts. Full-text articles are selected from more than 1,200 domestic and international publications. Many articles are accompanied by full-color images, including art reproductions, photographs, and illustrations.</p>  
                            <h3><a title="SIRS Issues Researcher" href="http://sks.sirs.com/cgi-bin/hst-portal-ren?id=SCA5991-0-3572" target="_blank">SIRS Issues Researcher</a></h3>
                            <p>SIRS Issues Researcher helps students make sense of the world by offering relevant, credible resources that tell the whole story on the major issues and world conflicts of the day.</p>  
                            </cfcase> 
                            <cfcase value="T"> 
                             <h3><a title="Todays Science" href="http://sks.sirs.com/cgi-bin/hst-portal-ren?id=SCA5991-0-3572" target="_blank">Today's Science (Facts on File)</a></h3>
                            <p>Updated weekly and containing thousands of links to a 15-year backfile, Today's Science explains important developments in biology, chemistry, the environment, space, physics, and technology.</p>    
                            </cfcase> 
                            <cfcase value="U"> 
                                
                            </cfcase> 
                            <cfcase value="V"> 
                                
                            </cfcase> 
                            <cfcase value="W"> 
                            <h3><a title="Well-Connected Reports Online" href="http://www.well-connected.com/default.aspx?account=LOBGBEACHCOLL&edition=1&referer=http://207.233.62.0" target="_blank">Well-Connected Reports Online</a></h3>
                            <p>A library of reports on common diseases and wellness issues.</p>
                            <h3><a title="World News Digest" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE56" target="_blank">World News Digest: U.S. and World News 1940 - Present (Facts on File)</a></h3>
                            <p>Brings together and enhances nearly seven decades of news (US and World News from 1940 to present) from the renowned Facts On File World News Digest in print. Other features include Country Profiles, Almanac and Encyclopedia.</p>    
                            </cfcase> 
                            <cfcase value="X"> 
                                
                            </cfcase> 
                            <cfcase value="Y"> 
                                
                            </cfcase> 
                            <cfcase value="Z"> 
                                
                            </cfcase> 
                           
                            <cfcase value="0"> 
                              <h3><a title="Academic Search Premiere" name="a" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=aph" target="_blank" >Academic Search Premiere (EBSCOhost)</a></h3>
        						
            				<p>This multi-disciplinary database provides full text for more than 4,600 journals, including full text for nearly 3,900 peer-reviewed titles. PDF backfiles to 1975 or further are available for well over one hundred journals, and searchable cited references are provided for more than 1,000 titles.</p>
        						   <h3><a title="America: History & Life with Full Text" name="a" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=31h" target="_blank">America: History & Life with Full Text (EBSCOhost)</a></h3>
                                <p>America: History & Life with Full Text is the definitive database of literature covering the history and culture of the United States and Canada, from prehistory to the present. With selective selective indexing for 1,700 journals from 1955 to present, this database is without question the most important bibliographic reference tool for students and scholars of U.S. and Canadian history. America: History & Life with Full Text also provides full-text coverage of more than 200 journals and nearly 100 books.</p>
                                <h3><a title="Facts on File American History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE52" target="_blank">American History Online (Facts on File)</a></h3>
                                <p>Spans more than 500 years of political, military, social, and cultural history, highlighting the important people and events of the American experience.</p>
                                <h3><a title="Facts on File American Women's History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE42" target="_blank">American Women's History Online (Facts on File)</a></h3>
                                <p>Covers the important people, events, legislation, and issues relevant to the study of women's history in the United States.</p>
                                <h3><a title="Facts on File African-American History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE01" target="_blank">African-American History Online (Facts on File)</a></h3>
                                <p>Provides expansive and in-depth information on the people, events, and topics important to the study of African-American history.</p>
                                <h3><a title="Facts on File American Indian History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE43" target="_blank">American Indian History Online (Facts on File)</a></h3>
                                <p>Offers thorough access to more than 15,000 years of Native American culture, history, and heritage.</p>
                                <h3><a title="Facts on File Ancient and Medieval History Online" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE49" target="_blank">Ancient and Medieval History Online (Facts on File)</a></h3>
                                <p>Focuses on Egypt, Mesopotamia, Greece, Rome, Africa, Europe, the Americas, Asia, and Islamic Empire from prehistory through the 1500s.</p>
                                <h3><a title="ARTstor" href="http://voyager2.lbcc.edu:2048/login?url=http://www.artstor.org" target="_blank">ARTstor</a></h3>
                                <p>ARTstor is a nonprofit digital library of more than one million images in the arts, architecture, humanities, and social sciences with a suite of software tools to view, present, and manage images for research and pedagogical purposes. Our community-built collections comprise contributions from outstanding museums, photographers, libraries, scholars, photo archives, and artists and artists' estates.</p>
                                <h3><a title="Art Museum Image Gallery" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=ami" target="_blank">Art Museum Image Gallery (EBSCOhost)</a></h3>
                                <p>Art Museum Image Gallery offers unparalleled access to thousands of high-quality art images and related multimedia. Drawing on the collections of distinguished museums, there are over 165,000 superior quality images with covering time periods ranging from 3000 B.C. to the present day. The collection represents art from the cultures of Africa, Asia, Europe, and the Americas, including Native American and Meso-American peoples.</p>
                                <h3><a title="JSTOR Arts & Sciences" href="http://www.jstor.org" target="_blank">Arts & Sciences Collection (JSTOR)</a></h3>
                                <p>Established in 1997, JSTOR's first collection includes core journals in economics, history, political science, and sociology, as well as in other key fields in the humanities and social sciences. This collection also contains titles in ecology, mathematics, and statistics. Overall, there are 119 titles in twenty-one disciplines.</p>
                                <!--BEGIN B DATABASES -->
                                <h3><a title="Bartleby.com" href="http://www.bartleby.com" target="_blank">Bartleby.com</a></h3>
                                <p>Online full-text of selected literature, reference material, and poetry. No password needed.</p>
                                
                                <h3><a title="Books in Print" href="http://www.booksinprint.com" target="_blank">Books In Print</a></h3>
                                <p>Publishing information on 1.9 million titles (including reviews) about books and media that are currently published and other books declared out-of-print over the last ten years. The database is updated monthly. <strong>Available on campus only.</strong></p>
                                
                                 <h3><a title="Britannica Online" href="http://search.eb.com/" target="_blank">Britannica Online, Academic Edition</a></h3>
                                <p>Contents of the Encyclopaedia Britannica and much more. Sections include: news of the day; links to relevant websites; 75,000 articles on general-interest topics; over 23,000 biographies; over 27,000 images and maps; over 3,300 animations; extensive World Atlas; and more than 75,000 definitions--including pronunciation guides and word histories—from Merriam-Webster's Collegiate Dictionary.</p>
                                <h3><a title="Business Company Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=BCRC" target="_blank">Business Company Resource Center (Gale)</a></h3>
                                <p>Business and Company Resource Center is a fully integrated resource bringing together company profiles, brand information, rankings, investment reports, company histories, chronologies and periodicals. Search this database to find detailed company and industry news and information.</p>
                                 <h3><a title="Business Insights: Essentials" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=BIE" target="_blank">Business Insights: Essentials (Gale)</a></h3>
                                <p>Combines all of the content formerly found in Business & Company Resource Center with a new interface designed around the research goals and workflows of your diverse business research community. Easily find information on companies, industries and more in the context of timely news, statistical data, and in-depth reports.</p>
                             	<!--BEGIN C DATABASES -->
                            	<h3><a title="Career Guidance Center" href="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE34" target="_blank">Career Guidance Center (Ferguson's/Facts on File)</a></h3>
                                <p>Provides detailed profiles of more than 3,400 jobs and 94 industries, invaluable advice on career skills, more than 48,000 resource entries, and much more!</p>
                                <h3><a title="CINAHL Plus with Full Text" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=rzh" target="_blank">CINAHL Plus with Full Text (EBSCOhost)</a></h3>
                                <p>CINAHL® the Cumulative Index to Nursing and Allied Health Literature with Full Text is the world's most comprehensive source of full text for nursing & allied health journals, providing full text for nearly 600 journals indexed in CINAHL.With full-text coverage dating back to 1981, CINAHL with Full Text is the definitive research tool for all areas of nursing and allied health literature. In addition, this database offers access to health care books, nursing dissertations, selected conference proceedings, standards of practice, educational software, audiovisuals and book chapters.</p>
                                <h3><a title="Consumer Health Complete" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=c9h" target="_blank">Consumer Health Complete (EBSCOhost)</a></h3>
                             <p>Consumer Health Complete is a comprehensive resource for consumer-oriented health content. It is designed to support patients' information needs and foster an overall understanding of health-related topics. Consumer Health Complete provides content covering all areas of health and wellness from mainstream medicine to the many perspectives of complementary, holistic and integrated medicine. In addition, Consumer Health Complete includes the Clinical Reference System and the Lexi-PAL Drug Guide, which provides access to up-to-date, concise and clinically relevant drug monographs. The database is updated on a weekly basis.</p>
                                <h3><a title="CountryWatch" href="http://www.countrywatch.com/ip" target="_blank">CountryWatch</a></h3>
                                <p>CountryWatch provides critical country-specific intelligence and data through its suite of products to over 4000 clients including public and private sector organizations with overseas operations and global interests.  <strong>Available on campus only.</strong></p>
                                <h3><a title="CQ Researcher" href="http://library.cqpress.com/cqresearcher/" target="_blank">CQ Researcher</a></h3>
                                <p>CQ Researcher explores a single "hot" issue in the news in depth each week. Topics range from social issues to science and technology. There are 44 reports each year, including four expanded reports.</p>
                                <h3><a title="CRC Handbook of Chemistry & Physics" href="http://www.hbcpnetbase.com/" target="_blank">CRC Handbook of Chemistry & Physics</a></h3>
                                <p>The full text of the 92nd edition, 2011-2012, providing broad coverage of all types of physical science data commonly encountered by scientists and engineers.</p>
                                 <!--BEGIN E DATABASES -->
                                <h3><a title="E-books" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=nlebk" target="_blank">E-books (EBSCOhost)</a></h3>
                                <p>Full text for over 11,300 complete books on a variety of academic and literary topics.</p>
                                <h3><a title="EBSCOhost Premiere Collection" href="http://search.ebscohost.com/login.asp?profile=ehost" target="_blank">EBSCOhost Premiere Collection</a></h3>
                                <p>Full text periodical databases. Indexes and provides full text to thousand of titles. Subject coverage is broad and includes scholarly publications. Includes the following individual databases: MasterFILE Premier, Academic Search Premier, Business Source Elite, Health Source Nursing/Academic and Consumer Editions, Psychology & Behavioral Sciences Collection, Religion & Philosophy Collection, Professional Development Collection, Military & Government Collection, Newspaper Source, ERIC, MEDLINE, and CINAHL and more. </p>
                              <h3><a title="Britannica Online" href="http://search.eb.com/" target="_blank">Encyclopaedia Britannica (Britannica Online), Academic Edition</a></h3>
                                <p>Contents of the Encyclopaedia Britannica and much more. Sections include: news of the day; links to relevant websites; 75,000 articles on general-interest topics; over 23,000 biographies; over 27,000 images and maps; over 3,300 animations; extensive World Atlas; and more than 75,000 definitions -- including pronunciation guides and word histories from Merriam-Webster's Collegiate Dictionary.</p>
                                 <h3><a title="ERIC" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=eric" target="_blank">ERIC - Education Resource Information Center (EBSCOhost)</a></h3>
                                <p>ERIC, the Education Resource Information Center, contains more than 1.3 million records and links to more than 323,000 full-text documents dating back to 1966.</p>
                                <h3><a title="European View of the Americas" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hev" target="_blank">European View of the Americas: 1493-1750 (EBSCOhost)</a></h3>
                                <p>This new bibliographic database is a valuable index for libraries, scholars and individuals interested in European works that relate to the Americas. EBSCO Publishing, in cooperation with the John Carter Brown Library, has created this resource from "European Americana: A Chronological Guide to Works Printed In Europe Relating to The Americas, 1493-1750," the authoritative bibliography that is well-known and respected by scholars worldwide. The database contains more than 32,000 entries and is a comprehensive guide to printed records about the Americas written in Europe before 1750.</p>
                             
                              <!--BEGIN F DATABASES -->
                                
                              <h3><a title="Funk & Wagnells New World Encyclopedia" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=funk" target="_blank">Funk & Wagnalls New World Encyclopedia (EBSCOhost)</a></h3>
                              <p>This database provides over 25,000 encyclopedic entries covering a variety of subject areas.</p>  
                              
                              
                              <!--BEGIN G DATABASES -->
                                
                              <h3><a title="Gale Virtual Reference Library" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=GVRL" target="_blank">Gale Virtual Reference Library (Gale)</a></h3>
                                <p>Access to over 150 e-book reference titles representing the following subjects: Arts, Business, Environment, History, Law, Literature, Medicine, Multicultural Studies, Nation and World, Science, Social Science, and Technology. </p>
                                 <h3><a title="GreenFILE" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=8gh" target="_blank">GreenFILE (EBSCOhost)</a></h3>
                                <p>GreenFILE offers well-researched information covering all aspects of human impact to the environment. Its collection of scholarly, government and general-interest titles includes content on global warming, green building, pollution, sustainable agriculture, renewable energy, recycling, and more. The database provides indexing and abstracts for more than 384,000 records, as well as Open Access full text for more than 4,700 records.</p>
                                
                              <!--BEGIN H DATABASES -->     
                                
                                
                               <h3><a title="Health and Wellness Resource Center" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HWRC" target="_blank">Health and Wellness Resource Center (Gale)</a></h3>
                                <p>Includes all the contents of the Health Reference Center—Academic, as well as additional reference books, updated pamphlets, and Web links.</p>
                                  <h3><a title="Health Reference Center - Academic" href="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=HRCA" target="_blank">Health Reference Center - Academic (Gale)</a></h3>
                                <p>Provides articles from medical journals, consumer-health magazines, health newsletters, reference books, topical overviews, and pamphlets on health topics. The full text of many articles and all reference books and pamphlets is included. Forty nursing journals are included in full-text, published over the past five years.</p>
                            <h3><a title="Health Source - Consumer Edition" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hxh" target="_blank">Health Source - Consumer Edition (EBSCOhost)</a></h3>
                             <p>This database is the richest collection of consumer health information available to libraries worldwide, providing information on many health topics including the medical sciences, food sciences and nutrition, childcare, sports medicine and general health. Health Source: Consumer Edition provides access to nearly 80 full text, consumer health magazines.</p>
                              <h3><a title="Health Source - Nursing/Academic Edition" href="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=hch" target="_blank">Health Source - Nursing/Academic Edition (EBSCOhost)</a></h3>
                             <p>This database provides nearly 550 scholarly full text journals focusing on many medical disciplines. Health Source: Nursing/Academic Edition also features the Lexi-PAL Drug Guide, which covers 1,300 generic drug patient education sheets with more than 4,700 brand names.</p>
                           
                            
                            </cfcase> 
                        </cfswitch>                     	
                           
                  
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