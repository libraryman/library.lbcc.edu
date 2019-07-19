function wrapLogout() {
	var expires = " expires=Thu, 01-Jan-1970 00:00:01 GMT;";
	document.cookie = "WRAP16=;"+expires+" path=/;domain=ncsu.edu";
	document.cookie = "WRAP_REFERER=;"+expires+" path=/;domain=ncsu.edu";
	document.cookie = "WRAP_REFERER_P=;"+expires+" path=/;domain=ncsu.edu";
	document.cookie = "LIBFUNCTION=;"+expires+" path=/;domain=ncsu.edu";
}

function findWrap(){
	var sindex = document.cookie.indexOf("WRAP16");
	if (sindex != -1){
		return 1;
	}
	return 0;
}


// console.log(gaID);

/*
 * In-Field Label jQuery Plugin
 * http://fuelyourcoding.com/scripts/infield.html
 *
 * Copyright (c) 2009 Doug Neiner
 * Dual licensed under the MIT and GPL licenses.
 * Uses the same license as jQuery, see:
 * http://docs.jquery.com/License
 *
 * @version 0.1
 */
(function($){
	
    $.InFieldLabels = function(label,field, options){
        // To avoid scope issues, use 'base' instead of 'this'
        // to reference this class from internal events and functions.
        var base = this;
        
        // Access to jQuery and DOM versions of each element
        base.$label = $(label);
        //base.label = label;

 		base.$field = $(field);
		//base.field = field;
        
		base.$label.data("InFieldLabels", base);
		base.showing = true;
        
        base.init = function(){
			// Merge supplied options with default options
            base.options = $.extend({},$.InFieldLabels.defaultOptions, options);
            
            base.$label.css('position','absolute');
            var fieldPosition = base.$field.position();
            base.$label.css({
                'left' : fieldPosition.left,
                'top' : fieldPosition.top
            }).addClass(base.options.labelClass);

			// Check if the field is already filled in
			if(base.$field.val() != ""){
				base.$label.hide();
				base.showing = false;
			};
			
			base.$field.focus(function(){
				base.fadeOnFocus();
			}).blur(function(){
				base.checkForEmpty(true);
			}).bind('keydown.infieldlabel',function(e){
				// Use of a namespace (.infieldlabel) allows us to
				// unbind just this method later
				base.hideOnChange(e);
			}).change(function(e){
				base.checkForEmpty();
			}).bind('onPropertyChange', function(){
				base.checkForEmpty();
			});
        };

		// If the label is currently showing
		// then fade it down to the amount
		// specified in the settings
		base.fadeOnFocus = function(){
			if(base.showing){
				base.setOpacity(base.options.fadeOpacity);
			};
		};
		
		base.setOpacity = function(opacity){
			base.$label.stop().animate({ opacity: opacity }, base.options.fadeDuration);
			base.showing = (opacity > 0.0);
		};
		
		// Checks for empty as a fail safe
		// set blur to true when passing from
		// the blur event
		base.checkForEmpty = function(blur){
			if(base.$field.val() == ""){
				base.prepForShow();
				base.setOpacity( blur ? 1.0 : base.options.fadeOpacity );
			} else {
				base.setOpacity(0.0);
			};
		};
		
		base.prepForShow = function(e){
			if(!base.showing) {
				// Prepare for a animate in...
				base.$label.css({opacity: 0.0}).show();
				
				// Reattach the keydown event
				base.$field.bind('keydown.infieldlabel',function(e){
					base.hideOnChange(e);
				});
			};
		};

		base.hideOnChange = function(e){
			if(
				(e.keyCode == 16) || // Skip Shift
				(e.keyCode == 9) // Skip Tab
			  ) return; 
			
			if(base.showing){
				base.$label.hide();
				base.showing = false;
			};
			
			// Remove keydown event to save on CPU processing
			base.$field.unbind('keydown.infieldlabel');
		};
      
		// Run the initialization method
        base.init();
    };
	
    $.InFieldLabels.defaultOptions = {
        fadeOpacity: 0.0, // Once a field has focus, how transparent should the label be
		fadeDuration: 300, // How long should it take to animate from 1.0 opacity to the fadeOpacity
		labelClass: 'infield' // Class to be applied to label when positioned over form field
    };
	

    $.fn.inFieldLabels = function(options){
        return this.each(function(){
			// Find input or textarea based on for= attribute
			// The for attribute on the label must contain the ID
			// of the input or textarea element
			var for_attr = $(this).attr('for');
			if( !for_attr ) return; // Nothing to attach, since the for field wasn't used
			
			
			// Find the referenced input or textarea element
			var $field = $(
				"input#" + for_attr + "[type='text']," + 
				"input#" + for_attr + "[type='password']," + 
				"textarea#" + for_attr
				);
				
			if( $field.length == 0) return; // Again, nothing to attach
			
			// Only create object for input[text], input[password], or textarea
            (new $.InFieldLabels(this, $field[0], options));
        });
    };
	
})(jQuery);

//var _gaq = _gaq || [];
//  _gaq.push(['_setAccount', gaID]);
//  _gaq.push(['_setLocalRemoteServerMode']);
//  _gaq.push(['_trackPageview']);
//
//  (function() {
//    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
//    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
//    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
//  })();

$(document).ready(function() {
			

	  $("#search-header label").show().inFieldLabels();
	
	  // display logout link in utility navigation
	  if(findWrap()) { 
	    $('#libraries_title_menu li.last').before('<li><a href="http://www.lib.ncsu.edu/" onclick="wrapLogout();">Logout</a></li>');
	  }
	
	//Mega menus
	//On Hover Over
	function megaHoverOver(){
	    $(this).find(".sub").stop().fadeTo('fast', 1).show(); //Find sub and fade it in
	    (function($) {
	        //Function to calculate total width of all ul's
	        jQuery.fn.calcSubWidth = function() {
	            rowWidth = 0;
	            //Calculate row
	            $(this).find("ul").each(function() { //for each ul...
	                rowWidth += $(this).width(); //Add each ul's width together
	            });
	        };
	    })(jQuery); 

	    if ( $(this).find(".row").length > 0 ) { //If row exists...

	        var biggestRow = 0;	

	        $(this).find(".row").each(function() {	//for each row...
	            $(this).calcSubWidth(); //Call function to calculate width of all ul's
	            //Find biggest row
	            if(rowWidth > biggestRow) {
	                biggestRow = rowWidth;
	            }
	        });

	        $(this).find(".sub").css({'width' :biggestRow}); //Set width
	        $(this).find(".row:last").css({'margin':'0'});  //Kill last row's margin

	    } else { //If row does not exist...

	        $(this).calcSubWidth();  //Call function to calculate width of all ul's
	        $(this).find(".sub").css({'width' : rowWidth}); //Set Width

	    }
	}
	//On Hover Out
	function megaHoverOut(){
	  $(this).find(".sub").stop().fadeTo('fast', 0, function() { //Fade to 0 opactiy
	      $(this).hide();  //after fading, hide it
	  });
	}
	
	//Set custom configurations
	var config = {
	     sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)
	     interval: 100, // number = milliseconds for onMouseOver polling interval
	     over: megaHoverOver, // function = onMouseOver callback (REQUIRED)
	     timeout: 100, // number = milliseconds delay before onMouseOut
	     out: megaHoverOut // function = onMouseOut callback (REQUIRED)
	};
	
	$("ul#mega li .sub").css({'opacity':'0'}); //Fade sub nav to 0 opacity on default
	$("ul#mega li").hoverIntent(config); //Trigger Hover intent with custom configurations
});

