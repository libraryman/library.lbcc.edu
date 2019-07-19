<cfswitch expression="#Trim(dbname)#"> 
    <cfcase value="AcSearch"> 
       <cflocation url="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=aph" addtoken="no">
    </cfcase> 
    <cfcase value="AmHistory"> 
        <cflocation url="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=31h" addtoken="no">
    </cfcase> 
     <cfcase value="AmWomen"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE42" addtoken="no">
    </cfcase> 
     <cfcase value="AfrAmercian"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE01" addtoken="no">
    </cfcase> 
     <cfcase value="AmercianIndian"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE43" addtoken="no">
    </cfcase> 
     <cfcase value="ArtSTOR"> 
        <cflocation url="http://www.artstor.org/" addtoken="no">
    </cfcase> 
     <cfcase value="CQResearch"> 
        <cflocation url="http://library.cqpress.com/cqresearcher/" addtoken="no">
    </cfcase> 
     <cfcase value="JSTORArts"> 
        <cflocation url="http://www.jstor.org/" addtoken="no">
    </cfcase> 
     <cfcase value="LitRC"> 
        <cflocation url="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=LitRC" addtoken="no">
    </cfcase> 
     <cfcase value="Medline"> 
        <cflocation url="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=cmedm" addtoken="no">
    </cfcase> 
     <cfcase value="ModHistory"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE53" addtoken="no">
    </cfcase> 
     <cfcase value="OpView"> 
        <cflocation url="http://infotrac.galegroup.com/itweb/cclc_lbcc?db=OVRC" addtoken="no">
    </cfcase> 
     <cfcase value="Proquest"> 
        <cflocation url="http://search.proquest.com/" addtoken="no">
    </cfcase> 
     <cfcase value="ProquestHist"> 
        <cflocation url="http://proquest.umi.com/login?COPT=REJTPTM2ZmImSU5UPTAmVkVSPTI=&clientId=27896" addtoken="no">
    </cfcase> 
     <cfcase value="Psych"> 
        <cflocation url="http://search.ebscohost.com/login.aspx?authtype=ip,uid&profile=ehost&defaultdb=pbh" addtoken="no">
    </cfcase> 
     <cfcase value="ScienceOn"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE40" addtoken="no">
    </cfcase> 
     <cfcase value="IssueResearcher"> 
        <cflocation url="http://sks.sirs.com/cgi-bin/hst-portal-res?id=SCA5991-0-3572" addtoken="no">
    </cfcase> 
     <cfcase value="WorldNews"> 
        <cflocation url="http://online.infobaselearning.com/Direct.aspx?aid=14862&pid=WE56" addtoken="no">
    </cfcase>     
    <cfdefaultcase> 
        <cflocation url="http://lib.lbcc.edu/databases.html" addtoken="no">
    </cfdefaultcase> 
</cfswitch> 

