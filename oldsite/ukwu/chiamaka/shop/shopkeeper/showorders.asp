<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
function grandma(todo)
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
%>
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
<%' collect and verify form using asp upload
'
' get querystrings
Dim searchtype
searchtype = request("t")
if not isnumeric(searchtype) then searchtype = 0
searchtype = cint(searchtype)

Dim iPageSize       
Dim iPageCount      
Dim iPageCurrent    
Dim SQL                         
Dim ocon  
Dim ors     
Dim iRecordsShown   
Dim page
Dim itotal
page = request("page")
if not isnumeric(page) then page = 1
page = cint(page)
iPageCurrent = page  
'
select case(searchtype)
case 0
sql = "SELECT * FROM orders ORDER BY date ASC;"
case 1
sql = "SELECT * FROM orders WHERE status = 3 ORDER BY date ASC;"
case 2
sql = "SELECT * FROM orders WHERE status <> 8 ORDER BY date ASC;"
case else
sql = "SELECT * FROM orders ORDER BY date ASC;"
end select
iPageSize = 25
Set ocon = Server.CreateObject("ADODB.Connection")
oCon.Open constring
Set oRS = Server.CreateObject("ADODB.Recordset")
ors.PageSize = iPageSize
ors.CacheSize = iPageSize
oRS.Open sql, oCon, adOpenStatic, adLockReadOnly, adCmdText
'ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
iPageCount = ors.PageCount
itotal = ors.RecordCount
If iPageCurrent > iPageCount Then iPageCurrent = iPageCount
If iPageCurrent < 1 Then iPageCurrent = 1
' draw html head and check for results
'**********************************************
'                               html header
'**********************************************
%><html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
.heading      { font-family: Verdana; font-size: 12pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
caption      { font-family: Verdana; font-size: 10pt; letter-spacing: 0; font-weight: bold }
hr           {  }
hr           { color: #FF0000 }
-->
</style>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
// end cloak-->
</script>
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<%
If iPageCount = 0 Then'blowout
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - List orders</td>
</tr>
<tr>
<td width="100%">
<p class="normal" align="center"><b>Sorry!<br>
&nbsp;</b><br>
No orders found.<br>
&nbsp;</p>
<div align="center"><form><input type="button" value="Exit to menu" name="B1" onclick="leavepage()"></form></div>

</center>
</td>
</tr>
<center>
<tr>
<td width="100%" bgcolor="#000000">
<p class="smalltext"><font color="#FFFFFF">Shopkeeper version 3.10 (c) 2001 Rik
Johnson</font></td>
</tr>
</table>
</center>
</div>

</body>

</html>
<%ors.Close
oCon.Close
set ors = nothing
set ocon= nothing
Response.End
end if
'show results (set up table)
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Modify product categories</td>
</tr>
<tr>
<td width="100%">
<div class="heading" align="center"><b>View orders</b></div>
<div class="normal" align="center">Type: <%if searchtype=1then%>NEW<%else%>ALL/ACTIVE<%end if%><br>
--------------<br>
Found <%=itotal%> orders. Showing page <%=ipagecurrent%> of <%=ipagecount%>
</div>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="20%" class="normal" bgcolor="#000000"><font color="#FFFFFF"><b>Order
ID</b></font></td>
<td width="20%" class="normal" bgcolor="#000000"><font color="#FFFFFF"><b>Date</b></font></td>
<td width="20%" class="normal" bgcolor="#000000"><font color="#FFFFFF"><b>Status</b></font></td>
<td width="20%" class="normal" bgcolor="#000000"><font color="#FFFFFF"><b>Pay Method</b></font></td>
<td width="20%" class="normal" bgcolor="#000000" align="center"><font color="#FFFFFF"><b>Click
to examine</b></font></td>
</tr>
<%
ors.AbsolutePage = iPageCurrent
dim bgcol, ostat, pmeth
bgcol = "#cfcfcf"
Do While iRecordsShown < iPageSize And Not ors.EOF' draw cells
if bgcol = "#cfcfcf" then
bgcol = "#FFFFFF"
else
bgcol = "#cfcfcf"
end if
select case(ors("status"))
case 1
ostat = "Shopping/Dropped"
case 2
ostat = "Saved"
case 3
ostat = "Waiting action"
case 4
ostat = "Awaiting stock"
case 5
ostat = "Awaiting payment"
case 6
ostat = "Card declined"
case 7
ostat = "Cheque bounced"
case 8
ostat = "Order shipped"
case 9
ostat = "Cancelled"
case else
ostat = "Unknown"
end select
'
select case(ors("mop"))
case 0
pmeth = "N/A"
case 1
pmeth = "Card payment"
case 2
pmeth = "Mail order"
case else
pmeth = "Unknown"
end select
%><tr>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>"><b><font color="#FF0000"><%=ors("id")%></font></b></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>"><b><font color="#FF0000"><%=ors("date")%></font></b></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>"><b><font color="#FF0000"><%=ostat%></font></b></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>"><b><font color="#FF0000"><%=pmeth%></font></b></td>
<td width="20%" class="smalltext" bgcolor="<%=bgcol%>" align="center"><b><font color="#FF0000"><a href="showorders1.asp?oid=<%=ors("id")%>&list=1&page=<%=ipagecurrent%>&t=<%=searchtype%>">[EXAMINE]</a></font></b></td>
</tr>
<%iRecordsShown = iRecordsShown + 1
ors.movenext
loop
'close table & draw page navigator%>
</table>
</div>
<hr>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="53" bgcolor="#6699FF">
<tr>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%if ipagecurrent > 1 then%><a href="showorders.asp?page=<%=iPageCurrent - 1%>&t=<%=searchtype%>"><font color="#FFFFFF"><b>[Last
Page]</b></font></a><%end if%>&nbsp;
</td>
<td width="34%" align="center" class="normal" height="16"><form><input type="button" value="Exit to menu" name="B1" onclick="leavepage()"></form></font></td>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%If iPageCurrent < iPageCount then%><a href="showorders.asp?page=<%=iPageCurrent + 1%>&t=<%=searchtype%>"><font color="#FFFFFF"><b>[Next
Page]</b></font></a><%end if%>&nbsp;
</td>
</tr>
<tr>
<td colspan="3" align="center" class="normal" height="15"><font color="#FFFFFF">&nbsp;
<%if ipagecount > 1 then%><b>Jump
to specific page</b><%end if%>&nbsp;</font></td>
</tr>
<tr>
<td colspan="3" align="center" class="smalltext" height="16"><font color="#FFFFFF">
&nbsp;<%if ipagecount > 1 then
dim counter
for counter = 1 to ipagecount
if ipagecurrent <> counter then%>&nbsp;<a href="showorders.asp?page=<%=counter%>&t=<%=searchtype%>">[<%=counter%>]</a>&nbsp;<%end if
next%></b><%end if%>&nbsp;</font></td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td width="100%" bgcolor="#000000">
<p class="smalltext"><font color="#FFFFFF">Shopkeeper version 3.10 (c) 2001 Rik
Johnson</font></td>
</tr>
</table>
</center>
</div>

</body>

</html>
<%ors.Close
oCon.Close
set ors = nothing
set ocon= nothing
response.end%>