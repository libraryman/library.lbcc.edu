<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
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

function summary(thestring,length)
if len(thestring) > length then thestring = left(thestring,length)
summary = grandma(thestring)
end function

FUNCTION fixcurrency( amount )
dim i, y, x
for i = 1 to len( amount )
fixcurrency = fixcurrency & mid(amount, i,1)
if mid(amount, i,1) = "." then
y = i
x = 0
end if
if y > 1 then x = x + 1
next
if x = 2 then fixcurrency = fixcurrency & "0"
if y < 1 then fixcurrency = fixcurrency & ".00"
END FUNCTION


function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
end function

Function DecodeString(str)
dim yxy, retme
yxy = 1
do while yxy <= len(str)
select case mid(str,yxy,1)
case chr(162)
retme = retme & "<BR>"
case chr(177)
retme = retme & chr(34)
case chr(218)
retme = retme & chr(44)
case chr(171)
retme = retme & chr(39)
case else
retme = retme & mid(str,yxy,1)
end select
yxy = yxy + 1
loop
decodeString = retme
end Function
'
Dim iPageSize       
Dim iPageCount      
Dim iPageCurrent    
Dim SQL                         
Dim objPagingConn   
Dim objPagingRS     
Dim iRecordsShown   
Dim page
Dim itotal
Dim s_string, s_cat
s_string = request("ss")
s_cat = makeitanumber(request("sc"))

page = makeitanumber(request("page"))
if page < 1 then page = 1
iPageCurrent = page
'
sql = "SELECT * FROM goods WHERE (qty > 0 OR oos <> 1 AND status = 1)"
if len(s_string) > 1 then
sql = sql & " AND (heading LIKE '%" & s_string & "%' OR description LIKE '%" & s_string & "%'"
sql = sql & " OR heading LIKE '" & s_string & "%' OR description LIKE '" & s_string & "%'"
sql = sql & " OR heading LIKE '" & s_string & "' OR description LIKE '" & s_string & "'"
        if len(s_string) > 3 then   
        sql = sql & " OR heading LIKE '" & left(s_string,len(s_string)-1) & "%' OR description LIKE '" & left(s_string,len(s_string)-1) & "%')"
        else
        sql = sql & ")"
        end if
end if
if s_cat > 0 then sql = sql & " AND catid =" & s_cat 
sql = sql & " ORDER BY special ASC;"

iPageSize = 10
Set objPagingConn = Server.CreateObject("ADODB.Connection")
objPagingConn.Open constring
Set objPagingRS = Server.CreateObject("ADODB.Recordset")
objPagingRS.PageSize = iPageSize
objPagingRS.CacheSize = iPageSize
objPagingRS.Open sql, objPagingConn, adOpenStatic, adLockReadOnly, adCmdText
iPageCount = objPagingRS.PageCount
itotal = objPagingRS.RecordCount
If iPageCurrent > iPageCount Then iPageCurrent = iPageCount
If iPageCurrent < 1 Then iPageCurrent = 1
' draw html head and check for results
%><!--#include file="incbody.asp"--><%
If iPageCount = 0 Then'blowout
%>
<div class="normal">&nbsp;<br><b>
        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Sorry, no 
        matching products found.</font><br>
        &nbsp;
<br>&nbsp;
<br>&nbsp;
<br>&nbsp;
<br>&nbsp;
<br>&nbsp;
<br>&nbsp;</div>
<p>&nbsp;</p>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%objPagingRS.Close
objPagingConn.Close
set objpagingrs = nothing
set objpagingconn = nothing
Response.End
end if
'show results (set up table)
%><div class="normal"><b>Found <%=itotal%> items. Showing page <%=ipagecurrent%> of <%=ipagecount%></b><br>&nbsp;</div><%
objPagingRS.AbsolutePage = iPageCurrent
dim prodstatus
Do While iRecordsShown < iPageSize And Not objPagingRS.EOF' draw cells
select case objPagingRS("oos")
        case 1
        prodstatus = "Item currently unavailable"
        case 2
        prodstatus = "To order usually available within 2-3 days"
        case 3
        prodstatus = "To order usually available within 3-7 days"
        case 4
        prodstatus = "To order usually available within 14 days"
        case 5
        prodstatus = "To order usually available within 28 days"
        case 6
        prodstatus = "Item has been discontinued"
        case 7
        prodstatus = "Special order only-we will contact you"
        case else
        prodstatus = "Product status unknown"
        end select
%>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="11%" rowspan="2">
<p align="center"><img border="0" src="prodpix/<%=decodestring(objpagingrs("picname"))%>" width="75" height="56"></td>
<td width="91%" valign="top" colspan="3">
<div align="center" class="normal"><b><%=decodestring(objpagingrs("heading"))%></b></div>
<div align ="center" class="smalltext"><%=decodestring(objpagingrs("description"))%>
<br>
£<%=fixcurrency(objpagingrs("price"))%>&nbsp;<font color="#FF0000"><i>
<% if objpagingrs("qty") < 1 then%>(<%=prodstatus%>)<%else%>(in stock)<%End if%></i></font></div></td>
</tr>
<tr>
<td width="20%" valign="top" align="center">
<%if objpagingrs("special") = true then%><img border="0" src="1ms/offer.gif" width="34" height="14"><%else%>&nbsp;<%end if%></td>
<td width="20%" valign="top" align="center">
<%if last_visit < objpagingrs("added") then%><img border="0" src="1ms/new.gif" width="35" height="20"><%else%>&nbsp;<%end if%></td>
<td width="20%" valign="top" align="center" class="normal">
<a href="additem.asp?cart=<%=cart_id%>&user=<%=user_id%>&item=<%=objpagingrs("id")%>&page=<%=ipagecurrent%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>"><img border="0" src="1ms/buyit.gif" align="right" alt="Add <%=objpagingrs("heading")%> to your order"></a>
</td>
<td width="20%" valign="top" align="center"class="normal"><a href="detail.asp?cart=<%=cart_id%>&user=<%=user_id%>&item=<%=objpagingrs("id")%>&page=<%=ipagecurrent%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>"><b>more info...</b></a></td>
</tr>
</table>
</div>
<hr>
<%iRecordsShown = iRecordsShown + 1
objpagingrs.movenext
loop
'close table & draw page navigator%>
<hr>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="53">
<tr>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%if ipagecurrent > 1 then%><a href="search.asp?page=<%=iPageCurrent - 1%>&user=<%=user_id%>&cart=<%=cart_id%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>"><font color="#000000"><b>[Last
Page]</b></font></a><%end if%>&nbsp;
</td>
<td width="34%" align="center" class="normal" height="16"><font color="#000000"><b><a href="index.asp?cart=<%=cart_id%>&user=<%=user_id%>">[exit
to storefront]</a></b></font></td>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%If iPageCurrent < iPageCount then%><a href="search.asp?page=<%=iPageCurrent + 1%>&user=<%=user_id%>&cart=<%=cart_id%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>"><font color="#000000"><b>[Next
Page]</b></font></a><%end if%>&nbsp;
</td>
</tr>
<tr>
<td colspan="3" align="center" class="normal" height="15"><font color="#000000">&nbsp;
<%if ipagecount > 1 then%><b>Jump
to specific page</b><%end if%>&nbsp;</font></td>
</tr>
<tr>
<td colspan="3" align="center" class="normal" height="16"><font color="#000000">
&nbsp;<%if ipagecount > 1 then
dim counter
for counter = 1 to ipagecount
if ipagecurrent <> counter then%>&nbsp;<a href="search.asp?page=<%=counter%>&user=<%=user_id%>&cart=<%=cart_id%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>">[<%=counter%>]</a>&nbsp;<%end if
next%></b><%end if%>&nbsp;</font></td>
</tr>
</table>
</div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%objPagingRS.Close
objPagingConn.Close
set objpagingrs = nothing
set objpagingconn = nothing
response.end%>
