<cfparam name="action" default="">
<cfapplication name="Library"
  clientmanagement="no"
   sessionmanagement="yes"
    setclientcookies="yes" setdomaincookies="yes"
	 sessiontimeout="#CreateTimeSpan(0,0,20,0)#"> 

  <cfparam name="session.application" default="">
