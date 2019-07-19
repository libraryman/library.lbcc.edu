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

function wasuploaded(filename)
Set Upload = Server.CreateObject("Persits.Upload.1")
dim path, dir, item
wasuploaded = false
path = Server.MapPath("../prodpix/")
Set Dir = Upload.Directory( path & "\*.*", 1) 
For Each item in Dir
if filename = item.FileName then wasuploaded = true
next
end function

function deletefile(filename)
Set Upload = Server.CreateObject("Persits.Upload.1")
dim path, dir, item
deletefile = false
path = Server.MapPath("../prodpix/")
Set Dir = Upload.Directory( path & "\*.*", 1) 
For Each item in Dir
if filename = item.FileName then 
        if len(filename) > 3 then
                if lcase(filename) <> "default.gif" then
                        Upload.DeleteFile path & "\" & filename
                        deletefile = true
                end if
        end  if
end if
next
end function

function formattext(ttf, cols)
dim scan, trip, count, returntext, temp, compare
count = 1
scan = len(ttf)
if scan > 0 then
' first take out any breaks
do while count < scan+1
if mid(ttf,count,4) = "<br>" or mid(ttf,count,4) = "<BR>" then
returntext = returntext & " "
count = count + 4
else
returntext = returntext & mid(ttf,count,1)
count = count + 1
end if
loop
if isnull(cols) or cols = 0 or cols = "" then cols = 40
if isnumeric(cols) then cols = cint(cols)
count = 1
compare = (cols-8)
scan = len(returntext)
do until count = scan+1 'number of line of texts
if mid(returntext,count,1) = " " and count > compare then
temp = temp & "<BR>"
compare = compare + cols
else
temp = temp & mid(returntext,count,1)
end if
count = count + 1
loop
end if
formattext = temp
end function
'
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
'

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


Function EncodeString(str)
dim yxy, byteme
yxy = 1
do while yxy <= len(str)
select case mid(str,yxy,1)
case chr(39)
byteme = byteme & chr(171)
case chr(44)
byteme = byteme & chr(218)
case chr(13)
byteme = byteme & chr(162)
case chr(34)
byteme = byteme & chr(177)
case else
byteme = byteme & mid(str,yxy,1)
end select
yxy = yxy + 1
loop
EncodeString = byteme
end function

function unique()
dim tst
tst = now
tst = cstr(tst)
unique = tst
end function

function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
end function

function legalfilename(name)
' photo file names must not have more than 1 full stop, spaces or other illegal characters
Dim counter, counted
if len(name) > 4 then '.gif/.jpg
        for counter = 1 to len(name)
                select case mid(name,counter,1)
                case chr(39), chr(44), chr(32), ".", chr(13), chr(34)
                counted = counted + 1
                end select
        next
        if counted > 1 then 
        legalfilename = false
        else
        legalfilename = true
        end if
else
legalfilename = false
end if
end function

%>
<!--#include file = "chklog.asp"-->
<!--#include file = "incdb.asp"-->
<%' collect and verify form using asp upload
dim ors, ocon
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
Set ors = Server.CreateObject ("ADODB.Recordset")
dim upload, cat, newcat, heading, description, price, weight, picname, pictype
dim qty, ifnotin, success, savepath, warning, bounce(10,1), ishigh, iswide, speoff
warning = false
dim tempcounter
for tempcounter = 0 to 10
        if tempcounter <> 8 then 
        bounce(tempcounter,1) = "#ffffff"
        else
        bounce(tempcounter,1) = "#cfcfcf"
        end if
next
savepath = Server.MapPath("../prodpix/")
Set Upload = Server.CreateObject("Persits.Upload.1")
Upload.OverwriteFiles = False
Upload.Save (savepath)

'------------WAS SELECTED IN FORM-------------------
dim thispic
Set thispic = Upload.Files("pic") 
If thispic Is Nothing Then 
        picname = "default.gif"
        pictype = "GIF"
        iswide = 200
        ishigh = 150
Else 
        picname = upload.Files("pic").extractfilename
        pictype = upload.Files("pic").ImageType
        iswide = upload.Files("pic").ImageWidth
        ishigh = upload.Files("pic").ImageHeight
End If 
'___________________________________________________

'---------------------------------------------------
'dim item, file
'Response.Write "DEBUG<BR>"
'For Each File in Upload.Files  
'Response.Write File.Name & " " & File.Path & " (" & File.Size &")<BR>"
'Next
'For Each Item in Upload.Form  
'Response.Write Item.Name & " " & Item.Value &"<BR>"
'Next
'---------------------------------------------------


Set cat = Upload.Form("cat")
        cat = makeitanumber(cat)
Set newcat = upload.form("newcat")
Set heading = Upload.Form("heading")
Set description = upload.form("desc")
Set price = Upload.Form("price")
Set weight = upload.form("weight")
Set qty = upload.form("qty")
Set ifnotin = upload.form("oos")
Set speoff = upload.form("so")
bounce(1,0) = cat
        if len(newcat) < 1 then 
        bounce(2,0) = "Enter New Cat"
        else
        bounce(2,0) = newcat
        end if
        
        if len(heading) < 1 then
        bounce(3,0) = "Enter heading"
        else
        bounce(3,0) = heading
        end if
        
        bounce(4,0) = description
        
        if len(price) < 2 then
        bounce(5,0) = "£Enter Price"
        else
        bounce(5,0) = price
        end if
        
        if len(weight) < 2 then
        bounce(6,0) = "Enter Weight G"
        else
        bounce(6,0) = weight
        end if
        
        bounce(7,0) = qty
        bounce(8,0) = ifnotin

        if not isnumeric(bounce(8,0)) then bounce(8,0) = 0
        
bounce(8,0) = cint(bounce(8,0))

        if speoff = "ON" then 
        bounce(9,0) = true
        else
        bounce(9,0) = false
        end if
'

'
' form verification
Dim fail
if cat = 0 and len(newcat) < 1 then 
fail = fail & "Select product category or add new category<BR>"
bounce(1,1) = "#ff0000"
bounce(2,1) = "#ff0000"
end if
'
if cat = 0 and newcat = "Enter New Cat" then 
fail = fail & "Select product category or add new category<BR>"
bounce(1,1) = "#ff0000"
bounce(2,1) = "#ff0000"
end if
'
if cat = 0 and len(newcat) > 20 then 
fail = fail & "New product category must not exceed 20 characters<BR>"
bounce(2,1) = "#ff0000"
end if
if len(heading) < 1 or len(heading) > 30 then 
fail = fail & "Heading missing or too long (1-30 Char)<br>"
bounce(3,1) = "#ff0000"
end if
'
if heading = "Enter heading" then
fail = fail & "Heading missing or too long (1-30 Char)<br>"
bounce(3,1) = "#ff0000"
end if

if len(description) < 1 or len(description) > 254 then 
fail = fail & "Product description must be between 1 & 254 characters<br>"
bounce(4,1) = "#ff0000"
end if
        if len(price) > 1 then
                dim temp, temp2
                for temp = 1 to len(price)
                if isnumeric(mid(price,temp,1)) or mid(price,temp,1) = "." then temp2 = temp2 & mid(price,temp,1)
                next
                price = temp2
                        if isnumeric(price) then
                        price = ccur(price)
                        else
                        fail = fail & "Price error! £" & price & "<BR>"
                        bounce(5,1) = "#ff0000"
                        end if
        end if
        if not isnumeric(price) then 
        fail = fail & "Price error! £" & price & "<BR>"
        bounce(5,1) = "#ff0000"
        end if
        if not isnumeric(price) then 
        fail = fail & "Price error! £" & price & "<BR>"
        bounce(5,1) = "#ff0000"
        end if
        '
        if isnumeric(price) then 
                if price < .01 then
                fail = fail & "Price error! £" & price & "<BR>"
                bounce(5,1) = "#ff0000"
                end if
        end if
        '
        temp = 0
        temp2 = ""
        if len(weight) > 1 then
                for temp = 1 to len(weight)
                if isnumeric(mid(weight,temp,1)) then temp2 = temp2 & mid(weight,temp,1)
                next
                if not isnumeric(temp2) then temp2 = 0
                weight = temp2
        end if
        if isnumeric(weight) then
        weight = clng(weight)
        else
        fail = fail & "Weight error:" & weight & "<BR>"
        bounce(6,1) = "#ff0000"
        end if
'
        if isnumeric(ifnotin) then
        ifnotin = cint(ifnotin)
        else
        fail = fail & "If out of stock error:(system recieved garbled data)<BR>"
        bounce(8,1) = "#ff0000"
        end if
'
'
        if isnumeric(qty) then
        qty = clng(qty)
        else
        fail = fail & "Please Enter number in stock<BR>"
        bounce(7,1) = "#ff0000"
        end if
'
        ' check if pic was uploaded
        if not isnull(picname) or len(picname) > 1 then
                if wasuploaded(picname) then
                success = true
                else
                success = false
                end if
        else
        success = false
        end if
        
        if success = true then
        if iswide <> 200 or ishigh <> 150 then warning = true
        if legalfilename(picname) <> true then fail = fail & "Bad picture filename (may contain spaces or too many full stops) Please rename before uploading<BR>"
        if pictype <> "GIF" and pictype <> "JPG" then fail = fail & "Bad picture format! Photo's must be .gif or .jpg<BR>"
        end if

'**********************************************
'       html header
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
<SCRIPT LANGUAGE="JavaScript">
<!-- cloak from ob
function leavepage(){
window.location="menu.asp"
}
function modprod(pid){
window.location="modprod1.asp?pid=" +pid;
}
// end cloak-->
</script>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<%'now blowout for if required
if len(fail) > 1 then
if success = true then deletefile(picname)
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Add new product</td>
</tr>
<tr>
<td width="100%">
<div class="normal" align="center"><b><u>Error report:</u></b><br>
Based upon the information submitted it is not possible to add this product for
the following reason(s)<br>
<br>
<%=fail%><br>
<br>
Any errors are shown below highlighted in <font color="#FF0000">RED</font><br>
<hr>
</div>
<form method="POST" ENCTYPE="multipart/form-data" ACTION="addprod1.asp">
<div align="center">
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(1,1)%>">Product category (use blank box to create new)</td>
<td width="23%" bgcolor="<%=bounce(1,1)%>"><select size="1" name="cat" tabindex="0">
<option value="0">Make new&gt;&gt;&gt;&gt;&gt;</option>
<%
ocon.Open constring
ors.Open "cats", constring, adOpenForwardOnly, adLockReadOnly, adCmdTable
do while not ors.EOF
if bounce(1,0) = ors("id") then %>
<option selected value="<%=ors("id")%>"><%=grandma(ors("cat"))%></option>
<%else%>
<option value="<%=ors("id")%>"><%=grandma(ors("cat"))%></option>
<%END IF
ors.MoveNext
loop
ors.Close
ocon.close
set ors = nothing
set ocon = nothing%>
</select></td>
<td width="27%" bgcolor="<%=bounce(2,1)%>"><input type="text" name="newcat" size="20"  value="<%=bounce(2,0)%>" tabindex="1"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(3,1)%>">Product heading</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(3,1)%>"><input type="text" name="heading" size="20"  value="<%=bounce(3,0)%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(4,1)%>">Product description (255 char max)</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(4,1)%>">
                  <textarea rows="5" name="description" cols="48"><%=bounce(4,0)%></textarea></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(5,1)%>">Product price</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(5,1)%>"><input type="text" name="price" size="20"  value="<%=bounce(5,0)%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(6,1)%>">Product weight IN GRAMS (For shipping)</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(6,1)%>"><input type="text" name="weight" size="20"  value="<%=bounce(6,0)%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(7,1)%>">Quantity in stock</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(7,1)%>"><input type="text" name="qty" size="20" value="<%=bounce(7,0)%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(9,1)%>">Special Offer?</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(9,1)%>"><input type="checkbox" name="so" value="ON"<%if bounce(9,0) = true then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#ffffff"><b>When product out of stock do the following:</b></td>
<td width="50%" colspan="2" bgcolor="#ffffff">&nbsp;</td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Don't show the item</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="1" name="oos"<%if bounce(8,0) = 1 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as available 2-3 days</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="2" name="oos"<%if bounce(8,0) = 2 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as available 3-7 days</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="3" name="oos"<%if bounce(8,0) = 3 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as available in 14 days</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="4" name="oos"<%if bounce(8,0) = 4 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as available in 28 days</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="5" name="oos"<%if bounce(8,0) = 5 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as discontinued</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="6" name="oos"<%if bounce(8,0) = 6 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="<%=bounce(8,1)%>">Show the item as special order only</td>
<td width="50%" colspan="2" bgcolor="<%=bounce(8,1)%>"><input type="radio" value="7" name="oos"<%if bounce(8,0) = 7 then%> checked<%end if%>></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph:</b> Size 200 px wide by 150 px high
<br><font color="#ff0000">for security this box has been cleared.</font></td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><INPUT TYPE=file SIZE=20 NAME="pic"></td>
</tr>
<tr>
<td width="50%" class="normal">&nbsp;</td>
<td width="50%" colspan="2">&nbsp;<br><div align = "right"><input type="submit" value="Add Product" name="B1"></div></td>
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
<%Response.End
end if
' otherwise it was good so add it to the database

Dim catid, itemid, sql
oCon.Open constring
Set ors = Server.CreateObject ("ADODB.Recordset")
'If it's a new cat deal with it first
if cat = 0 then' FIRST CHECK THE CAT IS NOT ALREADY IN THERE!
        sql = "SELECT * FROM cats WHERE cat LIKE '" & encodestring(newcat) & "';"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
                if ors.EOF then'its new ok
                ors.AddNew
                ors("cat") = encodestring(newcat)
                ors.Update
                catid = ors("id")
                else' its already there
                catid = ors("id")
                end if
        ors.Close
end if
'now add product
if cat = 0 and catid > 0 then cat = catid
SQL = "SELECT * FROM goods;"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
ors.AddNew
        ors("catid") = cat
        ors("heading") = encodestring(heading)
        ors("description") = encodestring(description)
        ors("price") = price
        ors("weight") = weight
        ors("added") = date
        ors("qty") = qty
        if speoff = "ON" then
        ors("special") = true
        else
        ors("special") = false
        end if
        ors("oos") = ifnotin
                if success = true then 
                ors("picname") = picname
                else
                ors("picname") = "default.gif"
                end if
        if bounce(9,0) = true then ors("special") = true        
        ors("status") = 0
        ors.Update
        itemid=ors("id")
        ors.Close
' product done! show output
' Now recover product from database just as you would any other product
' Standard variables used:
' Heading, Price, Description, prodstatus, picname
Dim prodstatus
sql = "SELECT * FROM goods WHERE id = " & itemid
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.eof and ors.recordcount = 1 then
' decide on status
if ors("qty") > 1 then prodstatus = "In stock"
if ors("qty") = 1 then prodstatus = "Only 1 remaining in stock"
if ors("qty") < 1 then
        select case ors("oos")
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
end if
heading = decodestring(grandma(ors("heading")))
price = fixcurrency(ors("price"))
description = decodestring(ors("description"))
picname = ors("picname")
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Review new product</td>
</tr>
<tr>
<td width="100%">
<%if warning = true then%>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#FF0000">
<tr>
<td width="100%">
<p class="normal" align="center"><font color="#FFFFFF"><b>Warning!</b><br>
The photograph you uploaded [<%=picname%>] is outside of the size requirements<br>(200 pixels wide
by 150 pixels high). As a result it may look stretched or shrunk.</font></td>
</tr>
</table>
</div>
<%end if%>
<div class="normal" align="center"><b><u>Product added:</u></b> Review mode:
Please check the product is correct before activation</div>
<hr>
<div align="center">
<table border="0" cellpadding="0" width="55%" cellspacing="5">
<caption>Small search listing</caption>
<tr>
<td width="9%">
<p align="center"><img border="0" src="../prodpix/<%=picname%>" width="60" height="45" alt="<%=heading%>"></td>
<td width="91%" valign="top">
<div class="normal"><b><%=heading%></b></div>
<div class="smalltext"><%=description%><br>
£<%=price%> <font color="#FF0000"><%=prodstatus%></font>
</div>
</td>
</tr>
</table>
</div>
<hr>
<div align="center">
<table border="0" cellpadding="0" cellspacing="5" width="75%">
<caption><b>Detail search listing</b></caption>
<tr>
<td width="27%"><img border="0" src="../prodpix/<%=picname%>" width="200" height="150" alt="<%=heading%>"></td>
<td width="73%" valign="top">
<div class="heading"><b><%=heading%></b></div>
<div class="normal"><%=description%><br>
£<%=price%></div>
<div class="smalltext"><font color="#FF0000"><%=prodstatus%></font></div></td>
</tr>
</table>
</div>
<br>
</center>
<hr>
<form method="POST" action="addprod3.asp">
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="33%" valign="top" class="smalltext" align="center">To exit without
making the product LIVE <br>
in your store click 'exit'</td>
<td width="33%" valign="top" class="smalltext" align="center">To make changes to
this product&nbsp;<br>
click 'Modify Product'</td>
<td width="34%" valign="top" class="smalltext" align="center">To make this
product active in your&nbsp;<br>
store click 'Activate Product'</td>
</tr>
<tr>
<td width="33%">
<div align="center"><input type="button" value="Exit" name="B2" onclick="leavepage()"></div></td>
<td width="33%">
<div align="center"><input type="button" value="Modify Product" name="B3" onclick="modprod(<%=itemid%>)"></div></td>
</center>
<td width="34%">
<div align="center"><input type="submit" value="Activate Product" name="B1"></div></td>
</tr>
</table>
</div>
<input type="hidden" name="pid" value="<%=itemid%>">
</form>
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
<%else
' not found
        ors.close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        call failure("A database error occurred - possible garbled data<br>")
end if
        ors.close
        ocon.Close
        set ors = nothing
        set ocon = nothing
sub failure(fail)%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Error Alert</td>
</tr>
<tr>
<td width="100%">
</center>
<div class="heading" align="center"><b>Error!</b></div>
<div class="normal" align="center">
<%=fail%>
<br>
Use 'Back' on your browser to return to the last page or press exit to go to the menu
<form id=form2 name=form2><input type="button" value="Exit" name="bx1" onclick="leavepage()"></form></div></td>
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
<%Response.End
end sub%>