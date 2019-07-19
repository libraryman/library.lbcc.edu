// by Paul@YellowPencil.com and Scott@YellowPencil.com
// feel free to delete all comments except for the above credit

function setTall() {
	if (document.getElementById) {
		// the divs array contains references to each column's div element.  
		// Replace 'center' 'right' and 'left' with your own.  
		// Or remove the last one entirely if you've got 2 columns.  Or add another if you've got 4!
		var divs = new Array(document.getElementById('main-text'), document.getElementById('left-menu'));
		
		// Let's determine the maximum height out of all columns specified
		var maxHeight = 0;
		for (var i = 0; i < divs.length; i++) {
			if (divs[i].offsetHeight > maxHeight) maxHeight = divs[i].offsetHeight;
		}
		
		// Let's set all columns to that maximum height
		for (var i = 0; i < divs.length; i++) {
			divs[i].style.height = maxHeight + 'px';

			// Now, if the browser's in standards-compliant mode, the height property
			// sets the height excluding padding, so we figure the padding out by subtracting the
			// old maxHeight from the new offsetHeight, and compensate!  So it works in Safari AND in IE 5.x
			if (divs[i].offsetHeight > maxHeight) {
				divs[i].style.height = (maxHeight - (divs[i].offsetHeight - maxHeight)) + 'px';
			}
		}
	}
}

window.onload = function() {
	setTall();
}

window.onresize = function() {
	setTall();
}