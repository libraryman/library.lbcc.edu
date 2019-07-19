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
%>
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
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
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function clearnewcat(){
window.document.forms[0].newcat.value='';
}
function clearprice(){
window.document.forms[0].price.value='';
}
function clearweight(){
window.document.forms[0].weight.value='';
}
function clearheading(){
window.document.forms[0].heading.value='';
}
function clearqty(){
window.document.forms[0].qty.value='';
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
<p class="smalltext">Shopkeeper Control Panel - Add new product</td>
</tr>
<tr>
<td width="100%">
<p class="normal"><b>Add new product to your on-line store</b><br>
</p>
<form method="POST" ENCTYPE="multipart/form-data" ACTION="addprod1.asp">
<div align="center">
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr>
<td width="50%" class="normal">Product category (use blank box to create new)</td>
<td width="23%"><select size="1" name="cat">
<option selected value="0" tabindex="0">Make new&gt;&gt;&gt;&gt;&gt;</option>
<%dim ors, ocon
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
Set ors = Server.CreateObject ("ADODB.Recordset")
ocon.Open constring
ors.Open "cats", constring, adOpenForwardOnly, adLockReadOnly, adCmdTable
do while not ors.EOF%>
<option value="<%=ors("id")%>"><%=grandma(ors("cat"))%></option>
<%ors.MoveNext
loop
ors.Close
ocon.close
set ors = nothing
set ocon = nothing%>
</select></td>
<td width="27%"><input type="text" name="newcat" size="20"  value="Enter New Cat" onfocus="clearnewcat()"></td>
</tr>
<tr>
<td width="50%" class="normal">Product heading</td>
<td width="50%" colspan="2"><input type="text" name="heading" size="20"  value="Enter heading" onfocus="clearheading()"></td>
</tr>
<tr>
<td width="50%" class="normal">Product description (255 char max)</td>
<td width="50%" colspan="2">
                  <textarea rows="5" name="description" cols="48"></textarea>
                </td>
</tr>
<tr>
<td width="50%" class="normal">Product price</td>
<td width="50%" colspan="2">
                  <input type="text" name="price" size="20"  value="enter price" onfocus="clearprice()">
                </td>
</tr>
<tr>
<td width="50%" class="normal">Product weight IN GRAMS (For shipping)</td>
<td width="50%" colspan="2"><input type="text" name="weight" size="20"  value="Enter Weight G" onfocus="clearweight()"></td>
</tr>
<tr>
<td width="50%" class="normal">Quantity in stock</td>
<td width="50%" colspan="2"><input type="text" name="qty" size="20" value="0" onfocus="clearqty()"></td>
</tr>
<tr>
<td width="50%" class="normal">Special Offer?</td>
<td width="50%" colspan="2"><input type="checkbox" name="so" value="ON"></td>
</tr>
<tr>
<td width="50%" class="normal"><b>When product out of stock do the following:</b></td>
<td width="50%" colspan="2">&nbsp;</td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Don't show the item</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="1" name="oos" checked></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available 2-3 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="2" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available 3-7 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="3" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available in 14 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="4" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as available in 28 days</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="5" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as discontinued</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="6" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#CfCfCf">Show the item as special order only</td>
<td width="50%" colspan="2" bgcolor="#CfCfCf"><input type="radio" value="7" name="oos"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph:</b> Size 200 px wide by 150 px high
</td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><INPUT TYPE=file SIZE=20 NAME="pic"></td>
</tr>
<tr>
<td width="50%" class="normal"><input type="button" value="Exit" name="bx1" onclick="leavepage()"></td>
<td width="50%" colspan="2"><div align="right"><input type="submit" value="Add Product" name="B1"></div></td>
</tr>
</table>
</div>
</form>
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
