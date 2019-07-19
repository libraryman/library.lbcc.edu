<%on error resume next
' first kill any current login
Response.Cookies("sk")("login") = ""
Response.Cookies("sk").expires = date - 1
session("islogged") = ""
dim message
message = request.querystring("message")
if len(message) < 1 then message = "User logged out"%>
<html>
<head>
<title>Shopkeeper</title>
<style>
<!--
.smalltext   { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
.normal      { font-family: Verdana; font-size: 10pt; letter-spacing: 0 }
textarea     { font-family: Verdana; font-size: 8pt }
input        { font-family: Verdana; font-size: 8pt }
select       { font-family: Verdana; font-size: 8pt; letter-spacing: -1 }
a                        {text-decoration:none} 
a:hover          {text-decoration:underline;}
-->
</style>

<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
        <p class="smalltext">EPS Shopkeeper Control Panel
      </td>
</tr>
<tr>
<td width="100%">
<p class="normal">Welcome to shopkeeper. This control panel allows you to
maintain and control your online store as well as access and update your orders.<br>
<u><b>Security Note</b>:</u><br>
Please LOG OUT when you have finished to avoid any other users of your machine
being able to access this area.</p>
<form method="POST" action="dologin.asp">
<div align="center">
<table border="0" cellpadding="0" width="31%">
<tr>
<td width="5%"></td>
<td width="95%">
<p class="smalltext" align="center">Status:<%=message%></td>
</tr>
<tr>
<td width="5%"></td>
<td width="95%">
<p class="normal">USER NAME <input type="text" name="un" size="20" style="font-family: Verdana; font-size: 8pt">
</td>
</tr>
<tr>
<td width="5%"></td>
<td width="95%">
<p class="normal">PASSWORD <input type="password" name="pw" size="20" style="font-family: Verdana; font-size: 8pt">
</td>
</tr>
<tr>
<td width="5%"></td>
</center>
<td width="95%">
<div align="right"><input type="submit" value="LOG IN" name="B1"></div></td>
</tr>
</table>
</div>
</form>
</td>
</tr>
<center>
<tr>
<td width="100%" bgcolor="#000000">
        <p class="smalltext"><font color="#FFFFFF">EPS Designs version 3.10 (c) 
          2001 </font>
      </td>
</tr>
</table>
</center>
</div>

</body>

</html>
