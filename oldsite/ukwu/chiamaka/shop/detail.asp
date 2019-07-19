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
Dim SQL                         
Dim objPagingConn   
Dim objPagingRS     
Dim page
Dim itotal
Dim s_string, s_cat, item_id, fail
s_string = request("ss")
s_cat = makeitanumber(request("sc"))
page = makeitanumber(request("page"))
item_id = makeitanumber(request("item"))
'
sql = "SELECT * FROM goods WHERE id = " & item_id & "AND status =1;"

%><!--#include file="incbody.asp"--><%
Set objPagingConn = Server.CreateObject("ADODB.Connection")
objPagingConn.Open constring
Set objPagingRS = Server.CreateObject("ADODB.Recordset")
objPagingRS.Open sql, objPagingConn, adOpenStatic, adLockReadOnly, adCmdText
If objPagingRS.EOF then fail = "Sys error:detail/83<br>"
if not objPagingRS.EOF then
        if objpagingrs("qty") < 1 then
                if objpagingrs("oos") = 1 then fail = fail & "Product not available<br>"
        end if
end if
if len (fail) < 1 then' ok to draw product
dim prodstatus
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

' draw html head and check for results


%>
&nbsp;<br>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="101%" colspan="4" bgcolor="#000000">
<div align="center" class="normal"><font color="#FFFFFF"><b><%=decodestring(objpagingrs("heading"))%></b></font></div></td>
</tr>
<tr>
<td width="101%" colspan="4">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="27%"><img border="0" src="prodpix/<%=decodestring(objpagingrs("picname"))%>" width="200" height="150"></td>
<td width="73%" valign="top">
<div align="center" class="normal"><br>
<br>
<%=decodestring(objpagingrs("description"))%><br>
<br>
£<%=fixcurrency(objpagingrs("price"))%><br>
<br>
<% if objpagingrs("qty") < 1 then%>(<%=prodstatus%>)<%else%>(in stock)<%End if%></div></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td width="24%">
<p align="center"><%if last_visit < objpagingrs("added") then%><img border="0" src="1ms/new.gif" width="35" height="20"><%else%>&nbsp;<%end if%></td>
<td width="14%">
<p align="center"><%if objpagingrs("special") = true then%><img border="0" src="1ms/offer.gif" width="34" height="14"><%else%>&nbsp;<%end if%></td>
</center>
<td width="17%"><a href="additem.asp?cart=<%=cart_id%>&user=<%=user_id%>&item=<%=objpagingrs("id")%>&page=<%=page%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>"><img border="0" src="1ms/buyit.gif" align="right" alt="Add <%=objpagingrs("heading")%> to your order"></a></td>
<td width="34%">
<div align="right" class="normal"><b><a href="search.asp?page=<%=page%>&user=<%=user_id%>&cart=<%=cart_id%>&sc=<%=s_cat%>&ss=<%=server.URLEncode(s_string)%>">Back
to search results....</a></b></div></td>
</tr>
</table>
</div>
<br>&nbsp;
<%else%>
<div class = "normal"><b><u>Error.</b></u><br>
<br>
An error has occurred see message below</p>
<br><%=fail%><br>
<br>
If you would like to contact us about this please <a href="mailto:<%=b_email%>">email
us</a></p>
<%end if%>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->
<%objPagingRS.Close
objPagingConn.Close
set objpagingrs = nothing
set objpagingconn = nothing
Response.End
%>
