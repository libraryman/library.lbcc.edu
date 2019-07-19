// Alternate promotional images
// Slideshow done with the cycle plugin with jQuery
// Author: Eric Pauley, with help from Daniel Lucas
// August 25, 2009
// Documentation:  http://malsup.com/jquery/cycle/
//                 http://malsup.com/jquery/cycle/options.html

$(document).ready(function() {

  $("#artbox > div ").css("display","block");
  $("#artbox")
    .cycle({
    random: 1,
    fx: 'fade',
	  next: "#artboxNext",
	  prev: "#artboxPrev",
    delay: 2500,
    timeout: 5000, // milliseconds between slide transitions (0 to disable auto advance) 
    speedIn: 500,
    speedOut: 500,
    //pause: 1, // true to enable "pause on hover"
    pagerClick: function(zeroBasedSlideIndex, slideElement) {
      // Add 1 to "zeroBasedSlideIndex" simply to make the
      // number correspond to what's displayed in the artbox.
      var slideIndex = zeroBasedSlideIndex + 1;
      // Call the navigation log script with the slide
      // number in the query parameters.  Note that the
      // log script doesn't actually do anything.  It simply
      // exists so that requests to it get logged by Apache.
      $.get('/artbox-scripts/artboxnavlog.php?n=' + slideIndex);
    }
  });
  
  // This section handles the "pause" functionality.  Clicking the "pause" button
  // stops the image cycling and swaps out the image (and its alt and title attributes)
  // with a different "resume" image.  Clicking again restarts the cycling.
	$("#artboxPause").click(function() {
	   $("#artbox").cycle("toggle");
	   if ($(this).attr("src") == "/artbox/includes/artbox-pause.png") {
	     $(this).attr("src", "/artbox/includes/artbox-resume.png");
	     $(this).attr("alt", "Resume");
	     $(this).attr("title", "Resume");
	   }
	   else if ($(this).attr("src") == "/artbox/includes/artbox-resume.png") {
	     $(this).attr("src", "/artbox/includes/artbox-pause.png"); 
	     $(this).attr("alt", "Pause");
	     $(this).attr("title", "Pause");
	   }
	});

});
