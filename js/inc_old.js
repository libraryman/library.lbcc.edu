$(function(){var e=moment().format("ddd MMM DD").toUpperCase();$("#thisDay").append(e);var a=moment().dayOfYear(),t=moment().day(),s="",r="",o=[{StartDate:250,EndDate:250,DayName:"Labor Day",Message:"Closed for Labor Day"},{StartDate:265,EndDate:265,DayName:"Flex Day",Message:"Closed for Faculty Flex Day"},{StartDate:315,EndDate:315,DayName:"Veteran's Day",Message:"Closed for Veteran's Day"},{StartDate:330,EndDate:332,DayName:"Thanksgiving",Message:"Closed for Thanksgiving"},{StartDate:346,EndDate:346,DayName:"Flex Day",Message:"Closed for Faculty Flex Day"},{StartDate:1,EndDate:1,DayName:"New Year's Holiday",Message:"Closed for New Year's Holiday"},{StartDate:18,EndDate:18,DayName:"King's Day",Message:"Closed for King's Day"},{StartDate:43,EndDate:44,DayName:"Lincoln's Day",Message:"Closed for Lincoln's Day"},{StartDate:46,EndDate:46,DayName:"Washington's Day",Message:"Closed for Washington's Day"},{StartDate:68,EndDate:68,DayName:"Flex Day",Message:"Closed for Faculty Flex Day"},{StartDate:95,EndDate:100,DayName:"Spring Recess",Message:"Closed for Spring Recess"},{StartDate:151,EndDate:151,DayName:"Memorial Day",Message:"Closed for Memorial Day"},{StartDate:161,EndDate:161,DayName:"Graduation Day",Message:"Closed for Graduation Day"},{StartDate:186,EndDate:186,DayName:"Independence Day",Message:"Closed for Independence Day"}],C=[{Semester:"Fall 2015",StartDate:236,EndDate:346,LAC_MTH:"7:00am to 10:00pm",LAC_FRI:"7:00am to 4:00pm",LAC_SAT:"10:00am to 4:00pm",PCC_MTH:"8:00am to 9:00pm",PCC_FRI:"8:00am to 2:30pm",PCC_SAT:"10:00am to 2:00pm"},{Semester:"Winter Recess 2015",StartDate:348,EndDate:365,LAC_MTH:"Closed for Winter Recess",LAC_FRI:"Closed for Winter Recess",LAC_SAT:"Closed for Winter Recess",PCC_MTH:"Closed for Winter Recess",PCC_FRI:"Closed for Winter Recess",PCC_SAT:"Closed for Winter Recess"},{Semester:"Winter Recess 2016",StartDate:1,EndDate:2,LAC_MTH:"Closed for Winter Recess",LAC_FRI:"Closed for Winter Recess",LAC_SAT:"Closed for Winter Recess",PCC_MTH:"Closed for Winter Recess",PCC_FRI:"Closed for Winter Recess",PCC_SAT:"Closed for Winter Recess"},{Semester:"Winter Intersession 2016",StartDate:4,EndDate:37,LAC_MTH:"7:00am to 9:00pm",LAC_FRI:"Closed",LAC_SAT:"Closed",PCC_MTH:"8:00am to 8:00pm",PCC_FRI:"Closed",PCC_SAT:"Closed"},{Semester:"Spring 2016",StartDate:39,EndDate:160,LAC_MTH:"7:00am to 10:00pm",LAC_FRI:"7:00am to 4:00pm",LAC_SAT:"10:00am to 4:00pm",PCC_MTH:"8:00am to 9:00pm",PCC_FRI:"8:00am to 2:30pm",PCC_SAT:"10:00am to 2:00pm"},{Semester:"Summer Recess 2016",StartDate:162,EndDate:164,LAC_MTH:"Closed for Summer Recess",LAC_FRI:"Closed for Summer Recess",LAC_SAT:"Closed for Summer Recess",PCC_MTH:"Summer for Winter Recess",PCC_FRI:"Summer for Winter Recess",PCC_SAT:"Summer for Winter Recess"},{Semester:"Summer 2016",StartDate:165,EndDate:233,LAC_MTH:"7:00am to 9:00pm",LAC_FRI:"Closed",LAC_SAT:"Closed",PCC_MTH:"8:00am to 8:00pm",PCC_FRI:"Closed",PCC_SAT:"Closed"},{Semester:"Summer Recess 2016",StartDate:234,EndDate:236,LAC_MTH:"Closed for Summer Recess",LAC_FRI:"Closed for Summer Recess",LAC_SAT:"Closed for Summer Recess",PCC_MTH:"Closed for Summer Recess",PCC_FRI:"Closed for Summer Recess",PCC_SAT:"Closed for Winter Recess"}];for(i in C)if(Number(a)>=Number(C[i].StartDate)&&Number(a)<=Number(C[i].EndDate))switch(t){case 0:var s="Closed Sunday",r="Closed Sunday";break;case 5:var s=C[i].LAC_FRI,r=C[i].PCC_FRI;break;case 6:var s=C[i].LAC_SAT,r=C[i].PCC_SAT;break;default:var s=C[i].LAC_MTH,r=C[i].PCC_MTH}for(i in o)if(Number(a)>=Number(o[i].StartDate)&&Number(a)<=Number(o[i].EndDate))var s=o[i].Message,r=o[i].Message;$("#lac_hours").append(s),$("#pcc_hours").append(r)});var slideout=new Slideout({panel:document.getElementById("panel"),menu:document.getElementById("menu"),padding:400,tolerance:70});document.querySelector("#menu_icon, #menu_icon_demo").addEventListener("click",function(){slideout.toggle()}),document.querySelector("#menu_icon").addEventListener("keypress",function(){(10==event.keyCode||13==event.keyCode)&&slideout.toggle();$('a#SiteMap').attr("tabindex",0).focus();});