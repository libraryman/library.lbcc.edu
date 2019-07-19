<!--#include file = "chklog.asp"-->
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
<SCRIPT LANGUAGE="JavaScript">
<!-- hide from ob
function logout(){
window.location="index.asp?message=LOGGED+OUT"
}
// end cloak-->
</script>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
          <p class="smalltext">EPS Designs ShopSite Control Panel Menu
        </td>
</tr>
<tr>
<td width="100%">
<p class="normal"><b><u>Please LOG OUT</b></u> when you have finished using this control panel.</p>
<form method="POST" action="menuaction.asp">
<div align="center">
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="5%">&nbsp;</td>
<td width="95%" class="normal"><b><u>Products</u></b></td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B1"></td>
<td width="95%">
<p class="normal">Add a new product to store</td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B2"></td>
<td width="95%">
<p class="normal">Show all products in store (allows you to select and update
specific products)</td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B4"></td>
<td width="95%">
<p class="normal">Show all products marked as special offers</td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B10"></td>
<td width="95%">
<p class="normal">Modify/delete product category names</td>
</tr>

<tr>
<td width="5%">&nbsp;</td>
<td width="95%" class="normal"><b><u>Orders</u></b></td>
</tr>

<tr>
<td width="5%"><input type="submit" value="GO" name="B5"></td>
<td width="95%">
<p class="normal">Show NEW orders (shows orders where status is set at WAITING)</td>
</tr>

<tr>
<td width="5%"><input type="submit" value="GO" name="B11"></td>
<td width="95%">
<p class="normal">Show current orders (shows orders that are not despatched)</td>
</tr>

<tr>
<td width="5%"><input type="submit" value="GO" name="B6"></td>
<td width="95%">
<p class="normal">Show all orders (shows every order in history)</td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B7"></td>
<td width="95%">
<div class="normal">Find this order ID:<input type="text" name="oid" size="20"></div></td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B12"></td>
<td width="95%">
<div class="normal">Clear dropped & orders saved on or before <%=date-31%></div></td>
</tr>
<tr>
<td width="5%">&nbsp;</td>
<td width="95%" class="normal"><b><u>Statistics and system</u></b></td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B8"></td>
<td width="95%">
<div class="normal">Email me a list of customers to: <input type="text" name="email" size="20">
[enter destination email address]</div></td>
</tr>
<tr>
<td width="5%"><input type="submit" value="GO" name="B9"></td>
<td width="95%">
<p class="normal">Show site statistics</td>
</tr>
<tr>
<td width="5%"><input type="button" value="GO" name="bx1" onclick="logout()"></td>
<td width="95%">
<p class="normal">Log out of control panel</td>
</tr>
</table>
</div>
</form>
</td>
</tr>
<tr>
<td width="100%" bgcolor="#000000">
          <p class="smalltext"><font color="#FFFFFF">EPS Designs version 3.10 
            (c) 2001 </font>
        </td>
</tr>
</table>
</center>
</div>

</body>

</html>
