// Script to put random image in header

function randimg() { } ; r = new randimg() ; n = 0

// start database
r[n++]= '<img src="images/bh/burkins.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/carruthers.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/carver-lc.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/frederick-jones.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/gourdine.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/jemison.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/julian-percy.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/latimer.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/mdm-walker.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/rillieux1.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/vivien-thomas.jpg" width="150" height="153" border="1" />'
r[n++]= '<img src="images/bh/wheeler.jpg" width="150" height="153" border="1" />'



// end database

i=Math.floor(Math.random() * n) ; 
document.write( r[i] )
// end hiding script from old browsers -->


