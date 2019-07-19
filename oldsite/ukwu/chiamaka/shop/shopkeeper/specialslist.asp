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

function summary(thestring,length)
if len(thestring) > length then thestring = left(thestring,length)
summary = grandma(thestring)
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
Dim iPageSize       
Dim iPageCount      
Dim iPageCurrent    
Dim SQL                         
Dim objPagingConn   
Dim objPagingRS     
Dim iRecordsShown   
Dim page
Dim itotal
Dim bgcol
page = request("page")
if not isnumeric(page) then page = 1
page = cint(page)
iPageCurrent = page
bgcol = "#800000"
'bgcol = "#FF3300"
'
sql = "SELECT * FROM goods INNER JOIN cats ON goods.catid = cats.id WHERE (special = true);"
iPageSize = 25
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
'**********************************************
'                               html header
'**********************************************
%>
<html>
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
hr                       {width:90%; size:1; color: #FF0000; align: center}

-->
</style>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
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
<p class="smalltext">Shopkeeper Control Panel - List products</td>
</tr>
<tr>
<td width="100%">
<p class="normal" align="center"><b>Sorry!<br>
&nbsp;</b><br>
No products in store.<br>
&nbsp;<br>
<a href="menu.asp"><span style="background-color: #C0C0C0"><font color="#000000">[Menu]<br>
</font></span></a>
</p>
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
<%objPagingRS.Close
objPagingConn.Close
set objpagingrs = nothing
set objpagingconn = nothing
Response.End
end if
'show results (set up table)

%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - List Special Offer Products</td>
</tr>
<tr>
<td width="100%">
<p class="normal">Here is a current list of SPECIAL OFFER products in your store.<br>
Items in <font color="#800000"><b>DARK RED</b></font> are IN STOCK<br>
Items in <b><font color="#FF3300">BRIGHT RED</font></b> are OUT OF STOCK<br>
To examine or modify an item click the 'more' button<br>
<br><b>Found <%=itotal%> products. Showing page <%=ipagecurrent%> of <%=ipagecount%>
</b></p>
<div align="center">
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr>
<td width="5%" bgcolor="#000000" class="normal"><font color="#FFFF00"><b>ID</b></font></td>
<td width="25%" bgcolor="#000000" class="normal"><font color="#FFFF00"><b>Category</b></font></td>
<td width="25%" bgcolor="#000000" class="normal"><font color="#FFFF00"><b>Item</b></font></td>
<td width="40%" bgcolor="#000000" class="normal"><font color="#FFFF00"><b>Brief
Desc</b></font></td>
<td width="5%" bgcolor="#000000" class="normal" align="center"><font color="#FFFF00"><b>More</b></font></td>
</tr>
<%
objPagingRS.AbsolutePage = iPageCurrent
Do While iRecordsShown < iPageSize And Not objPagingRS.EOF' draw cells
if objpagingrs("qty") > 0 then
bgcol = "#800000"
else
bgcol = "#FF3300"
end if%>
<tr>
<td width="5%" bgcolor="<%=bgcol%>" class="normal"><font color="#FFFFFF"><%=objpagingrs("goods.id")%></font></td>
<td width="25%" bgcolor="<%=bgcol%>" class="normal"><font color="#FFFFFF"><%=grandma(objpagingrs("cat"))%></font></td>
<td width="25%" bgcolor="<%=bgcol%>" class="normal"><font color="#FFFFFF"><%=summary(objpagingrs("heading"),20)%></font></td>
<td width="40%" bgcolor="<%=bgcol%>" class="normal"><font color="#FFFFFF"><%=summary(objpagingrs("description"),30)%>...</font></td>
<td width="5%" bgcolor="#800000">
<form method="POST" action="viewprod.asp"><div align="right"><input type="submit" value="More" name="B1"></div>
<input type="hidden" name="itemid" value="<%=objpagingrs("goods.id")%>">
</form>
</td></tr>
<%iRecordsShown = iRecordsShown + 1
objpagingrs.movenext
loop
'close table & draw page navigator%>
</table>
</div>
<hr>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="53" bgcolor="#6699FF">
<tr>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%if ipagecurrent > 1 then%><a href="listprods.asp?page=<%=iPageCurrent - 1%>"><font color="#FFFFFF"><b>[Last
Page]</b></font></a><%end if%>&nbsp;
</td>
<td width="34%" align="center" class="normal" height="16"><font color="#FFFFFF"><b><a href="menu.asp">[exit
to menu]</a></b></font></td>
<td width="33%" align="center" class="normal" height="16">&nbsp;
<%If iPageCurrent < iPageCount then%><a href="listprods.asp?page=<%=iPageCurrent + 1%>"><font color="#FFFFFF"><b>[Next
Page]</b></font></a><%end if%>&nbsp;
</td>
</tr>
<tr>
<td colspan="3" align="center" class="normal" height="15"><font color="#FFFFFF">&nbsp;
<%if ipagecount > 1 then%><b>Jump
to specific page</b><%end if%>&nbsp;</font></td>
</tr>
<tr>
<td colspan="3" align="center" class="normal" height="16"><font color="#FFFFFF">
&nbsp;<%if ipagecount > 1 then
dim counter
for counter = 1 to ipagecount
if ipagecurrent <> counter then%>&nbsp;<a href="listprods.asp?page=<%=counter%>">[<%=counter%>]</a>&nbsp;<%end if
next%></b><%end if%>&nbsp;</font></td>
</tr>
</table>
</div>
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
<%objPagingRS.Close
objPagingConn.Close
set objpagingrs = nothing
set objpagingconn = nothing
response.end%>
