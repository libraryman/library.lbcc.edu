
var isNav4, isIE4
if (parseInt(navigator.appVersion.charAt(0)) >= 4) {
 isNav4 = (navigator.appName == "Netscape") ? true : false
 isIE4 = (navigator.appName.indexOf("Microsoft" != -1)) 
 ? true : false
}
   if (isNav4) {
           document.captureEvents(Event.MOUSEDOWN);
}

function click(e) {
   if (isNav4 && e.which != 1) {
           alert ("Contents Copyrighted.");
           return false;
        }
   if (isNav4 && e.which == 1) {
           return true;
        }
   if (isIE4 && event.button==2) {
           alert("Contents Copyrighted.")
           return false;
        }
   return true;
}
   document.onmousedown=click
