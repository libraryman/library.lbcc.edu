<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Long Beach City College Library > OPAC</title>
	<meta name="description" content="" />
	<meta name="keywords" content="LBCC Library" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
<link href='../fc/fullcalendar.css' rel='stylesheet' />
<link href='../fc/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='../fc/lib/moment.min.js'></script>
<script src='../fc/lib/jquery.min.js'></script>
<script src='../fc/fullcalendar.min.js'></script>
<script src='../fc/gcal.js'></script>
    
<script>
	$(document).ready(function() {
	
		$('#calendar').fullCalendar({

            header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			}, 
			// US Holidays
			//events: 'http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic',
			
                   eventSources: [
            // academic calendar
                       {
    url: 'https://www.google.com/calendar/feeds/lbcclibrary%40gmail.com/public/basic',
    color: 'yellow',   // an option!
    textColor: 'black' // an option!
},

// LAC specific events -- orientations
{
    url: 'https://www.google.com/calendar/feeds/2gu1ukqf77hasq1i8ug09cqvkc%40group.calendar.google.com/public/basic',
    color: '#DDD',   // an option!
    textColor: 'black' // an option!
},

        ], 
            
			eventClick: function(event) {
				// opens events in a popup window
				window.open(event.url, 'gcalevent', 'width=700,height=600');
				return false;
			},
			
			loading: function(bool) {
				$('#loading').toggle(bool);
			}
			
		});
		
	});

</script> 
<style>
    
	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}
		
	#loading {
		display: none;
		position: absolute;
		top: 10px;
		right: 10px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}


</style>
</head>

<body>
    <h1>LAC: L-103 Calendar</h1>
	<div id='loading'>loading...</div>

	<div id='calendar'></div>
    
    
</body>
</html>
