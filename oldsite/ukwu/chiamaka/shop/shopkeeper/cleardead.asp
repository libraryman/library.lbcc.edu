<%option explicit%>
<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<%
on error resume next
%>
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
<%'

dim ors, ors1, ocon, sql, lookup, ttlorders, ttlrubbish
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
Set ors1 = Server.CreateObject ("ADODB.Recordset")
'
        ' now kill dead customers
        dim xit
        sql = "SELECT * FROM customers;"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
        if not ors.EOF then
        do while not ors.EOF
        if isnull(ors("title")) AND isnull(ors("firstname")) AND isnull(ors("lastname")) AND isnull(ors("email")) AND isnull(ors("password")) THEN 
        if ors("started") < date-1 then 
        xit = xit + 1
        ors.Delete
        end if
        end if
        ors.MoveNext
        loop
        end if
        ors.close
        ' done
'
sql = "SELECT * FROM orders WHERE [date] < #" & now() - 31 & "# AND status <> 3;"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof then
        ors.Close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        if xit > 0 then
        call finished("No orders older than " & date - 31 & " in database. Dead customers=" & xit & " Cleared<BR>")
        else
        call finished("No orders older than " & date - 31 & " in database. No Dead customers<BR>")
        end if
        end if
        do while not ors.eof
                lookup = ors("id")
                sql = "SELECT * FROM orderitems WHERE [order] = " & lookup & ";"
                ors1.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
                do while not ors1.EOF
                ors1.delete
                ttlrubbish = ttlrubbish + 1
                ors1.MoveNext
                loop
                ors1.Close
                ors.delete
                ttlorders = ttlorders + 1
                ors.MoveNext
        loop
        ors.Close
        ocon.Close
        set ors = nothing
        set ors1 = nothing
        set ocon = nothing
        call finished("Deleted " & ttlorders & " orders and " & ttlrubbish & " dead cart entries AND " & xit & " Dead customers.<br>")
        
        Response.End

sub finished(fail)%>
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
hr           {  }
hr           { color: #FF0000 }
-->
</style>
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
// end cloak-->
</script>
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Tidy up old orders</td>
</tr>
<tr>
<td width="100%">
</center>
<div class="heading" align="center"><b>Status report:</b></div>
<div class="normal" align="center">&nbsp;
<br><%=fail%>
<br>
<form id=form2 name=form2><input type="button" value="Exit to menu" name="bx1" onclick="leavepage()"></form></div></td>
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
<%Response.end
end sub%>

