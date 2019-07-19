<cfif #FORM.username# eq "lbcclib" and #FORM.pword# eq "lbcc">
	<cflocation url="http://voyager2.lbcc.edu:2048/login?user=lbcclib&pass=lbcc" addtoken="no">
<cfelseif #username# eq "dlstudent" and #pword# eq "dlweb">
	<cflocation url="http://voyager2.lbcc.edu:2048/login?user=dlstudent&pass=dlweb" addtoken="no">    
</cfif>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16130388-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>