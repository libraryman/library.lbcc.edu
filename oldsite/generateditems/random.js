// Script to put random image in header

function randimg() { } ; r = new randimg() ; n = 0

// start database
r[n++]= '<img src="images/lib/lib_r01.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r02.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r03.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r04.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r05.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r06.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r07.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r08.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r09.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r10.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r11.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r12.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r13.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r14.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r15.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r16.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r17.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r18.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r19.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r20.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r21.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r22.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lib_r23.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/lac-campus.jpg" width="125" height="149" border="1" />'
r[n++]= '<img src="images/lib/pcc-campus.jpg" width="125" height="164" border="1" />'
r[n++]= '<img src="images/lib/web1.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/web2.jpg" width="175" height="175" border="1" />'
r[n++]= '<img src="images/lib/einstein.jpg" width="175" height="194" border="1" />'




// end database

i=Math.floor(Math.random() * n) ; 
document.write( r[i] )
// end hiding script from old browsers -->


