/*global jQuery */
/*Ward Smith
/*7/29/14
* openclosed.js 1.2
*/

//adjust the closure dates every semester 
var libclosed = new Array();
var libclosed = [244,266,314,331,332,334,335,347,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,1,2,3];

// find out the number of the day of the year
var timestmp = new Date().setFullYear(new Date().getFullYear(), 0, 1);
var yearFirstDay = Math.floor(timestmp / 86400000);
var today = Math.ceil((new Date().getTime()) / 86400000);
var dayOfYear = today - yearFirstDay;

// find out the number of the day of the week
var thisDay=new Date();
var dayOfWeek = thisDay.getDay();
//document.getElementById("demo").innerHTML = dayOfWeek;

//if it is a holiday/flex day or sunday, the library is closed. Friday and Saturday have hours specific to each campus that vary each semester (especially the summer)

var isClosed = $.inArray(dayOfYear,libclosed);
var lac_hrs = "";
var pcc_hrs = "";

if (isClosed === -1) //if the library is not closed
    {

     if (dayOfWeek == 0) {
        hrs = "The Library is closed on Sundays";
        lac_hrs = "CLOSED";
        pcc_hrs = "CLOSED";
    }
    else if (dayOfWeek == 5) {
        
        lac_hrs = "7am-4pm";
        pcc_hrs = "8am-2:30pm";
    }
    
    else if(dayOfWeek == 6) {
        lac_hrs = "7am-4pm";
        pcc_hrs = "10am-2pm";
    }
    
    else {
        lac_hrs = "7am-10pm";
        pcc_hrs = "8am-9pm";
    }
        

}
else {
        lac_hrs = "Closed during the school Holiday";
        pcc_hrs = "Closed during the school holiday";
}
