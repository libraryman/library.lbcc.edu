<!--#include file="admin.asp"-->
<!--#include file="inccart.asp"-->
<%function grandma(todo)
'this function capatalizes the first letter
' and lowercases everything else
dim count
if len(todo) > 1 then
for count = 1 to len(todo)
if count = 1 then grandma = grandma & ucase(left(todo,1))
if count > 1 then grandma = grandma & lcase(mid(todo,count,1))
next
end if
end function
%>
<!--#include file="incbody.asp"-->
<%
if saved_flag <> false then
        if updated_flag = false then%>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
popwin = open("pusaved.asp","poper1",width="100",height="100",scrollbars="no",directories="no",status="no",menubar="no",toolbar="no",resizable="no");
// end cloak-->
</script>
<%else%>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
popwin = open("puboth.asp","poper2",width="100",height="100",scrollbars="no",directories="no",status="no",menubar="no",toolbar="no",resizable="no");
// end cloak-->
</script>
<%end if
else
if updated_flag <> false then%>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
popwin = open("puchanged.asp","poper3",width="100",height="100",scrollbars="no",directories="no",status="no",menubar="no",toolbar="no",resizable="no");
// end cloak-->
</script>
<%end if
end if%>
<div class="normal"><b>Welcome to Mr. Mischief's online store for the budding
practical joker!</b></div>
<div class="smalltext">We have one of the wackiest ranges of novelties and gifts available for you to
buy online NOW!<br>
<br>
From the perennial classics such as woopie cushions and stink bombs through to
our unmatched range of gifts that nobody would ever want to recieve! </div>
<!--#include file="incsoffer.asp"-->
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
