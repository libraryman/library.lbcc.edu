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

function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
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
dim ors, ocon, page
Set ocon = Server.CreateObject("ADODB.Connection")' set connection
Set ors = Server.CreateObject ("ADODB.Recordset")
dim upload, cat, newcat, heading, description, price, weight, picname, pictype
dim resetpic, oldpicname, pstat2, lookup
dim qty, ifnotin, success, savepath, warning, bounce(12,1), ishigh, iswide, speoff
warning = false
dim tempcounter
for tempcounter = 0 to 12
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
If NOT thispic Is Nothing Then 
        picname = upload.Files("pic").extractfilename
        pictype = upload.Files("pic").ImageType
        iswide = upload.Files("pic").ImageWidth
        ishigh = upload.Files("pic").ImageHeight
End If 
'___________________________________________________

Set cat = Upload.Form("cat")
        if isnumeric(cat) then cat = clng(cat)
Set newcat = upload.form("newcat")
Set heading = Upload.Form("heading")
Set description = upload.form("desc")
Set price = Upload.Form("price")
Set weight = upload.form("weight")
Set qty = upload.form("qty")
Set ifnotin = upload.form("oos")
Set speoff = upload.form("so")
Set lookup = upload.form("pid")
Set oldpicname = upload.form("oldpic")
Set resetpic = upload.form("prs")
Set page = upload.form("page")
page = makeitanumber(page)
Set pstat2 = upload.form("pdst")
if not isnumeric(pstat2) then pstat2 = 0
pstat2 = clng(pstat2)
dim dispstat, dispqty
Set dispstat = upload.form("fst")
Set dispqty = upload.form("fqty")
if not isnumeric(dispstat) then dispstat = 0
if not isnumeric(dispqty) then dispqty = 0
dispqty = clng(dispqty)
dispstat = clng(dispstat)
'process new figures
if len(oldpicname) < 1 then oldpicname = "default.gif"
if not isnumeric(lookup) then lookup = 0
lookup = clng(lookup)
itemid = lookup
if itemid < 1 then call failure("Unable to located product-218-<br>")
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
'
        if success = true then
        if iswide <> 200 or ishigh <> 150 then warning = true
        if pictype <> "GIF" and pictype <> "JPG" then fail = fail & "Bad picture format! Photo's must be .gif or .jpg<BR>"
        if legalfilename(picname) <> true then fail = fail & "Bad picture filename (may contain spaces or too many full stops)-please rename before uploading<BR>"
        end if
' need to check pic type here
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
function modprod(pid,oldpage){
window.location="modprod1.asp?pid=" +pid +"&page=" +oldpage;
}
function gotoresults(pid){
window.location="listprods.asp?page=" +pid;
}
// end cloak-->
</script>
<!--asp program/application written by Rik Johnson
for support contact rik.johnson@lineone.net-->
</head>
<body topmargin="0" leftmargin="0" link="#000000" vlink="#000000" alink="#000000">
<%'now blowout for if required
if len(fail) > 1 then
if success = true then 
if picname <> oldpicname then deletefile(picname)
end if
%>
<div align="center">
<center>
<table border="0" cellpadding="0" width="100%">
<tr>
<td width="100%" bgcolor="#6699FF">
<p class="smalltext">Shopkeeper Control Panel - Modify product</td>
</tr>
<tr>
<td width="100%">
<div class="normal" align="center"><b><u>Error report:</u></b><br>
Based upon the information submitted it is not possible to update this product for
the following reason(s)<br>
<br>
<%=fail%><br>
<br>
Any errors are shown below highlighted in <font color="#FF0000">RED</font><br>
<hr>
</div>
<form method="POST" ENCTYPE="multipart/form-data" ACTION="modprod2.asp" id=0 name=form1>
<div align="center">
<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr>
<td width="50%" class="normal">This product is currently</td>
<%if dispstat = 1 then%>
<td width="23%" bgcolor="#FF0000">
<div align="center" class="normal"><font color="#FFFFFF"><b>ACTIVE</b></font></div></td>
<%Else%>
<td width="23%" bgcolor="#000000">
<div align="center" class="normal"><font color="#FFFFFF"><b>NOT ACTIVE</b></font></div></td>
<%end if
if dispqty < 1 then%>
<td width="27%" bgcolor="#FFCC66">
<div align="center" class="normal"><font color="#FFFFFF"><b>!OUT OF STOCK!</b></font></div></td>
<%else%>
<td width="27%" bgcolor="#000000">
<div align="center" class="normal"><font color="#FF0000"><b>IN STOCK</b></font></div></td>
<%end if%>
</tr>
<tr>
<td width="50%" class="normal">Set this product to ACTIVE/HIDDEN</td>
<td width="23%" class="smalltext"><b><input type="radio" name="pdst" value="1"<%if pstat2 = 1 then%> checked<%end if%>>active</b></td>
<td width="27%" class="smalltext"><b><input type="radio" name="pdst" value="2"<%if pstat2 <> 1 then%> checked<%end if%>>hidden</b></td>
</tr>
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
<td width="50%" colspan="2" bgcolor="<%=bounce(4,1)%>"><textarea rows="5" name="desc" cols="48"><%=bounce(4,0)%></textarea></td>
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
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Current Photograph:</b><br>
To change this photograph use the browse box below to locate the new file on
your machine.<br>
<br>
To keep the current photograph leave the box blank<br>
<br>
To set the photograph to 'No picture available' place a<br>
tick in the 'reset' box</td>
<td width="50%" colspan="2" bgcolor="#C0C0C0">
<p align="center"><img border="0" src="../prodpix/<%=oldpicname%>" width="200" height="150" alt="<%=heading%>"></td>
</tr>
<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph Reset</b></td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><input type="checkbox" name="prs" value="ON"<%if resetpic = "ON" then%> checked<%end if%>></td>
</tr>

<tr>
<td width="50%" class="normal" bgcolor="#C0C0C0"><b>Photograph:</b> Size 200 px wide by 150 px high
<br><font color="#ff0000">for security this box has been cleared.</font></td>
<td width="50%" colspan="2" bgcolor="#C0C0C0"><INPUT TYPE=file SIZE=20 NAME="pic"></td>
</tr>
<tr>
<td width="50%" class="normal">&nbsp;</td>
<td width="50%" colspan="2">&nbsp;<br><div align = "right"><input type="submit" value="Modify Product" name="B1"></div></td>
</tr>
</table>
</div>
<input type="hidden" name="oldpic" value="<%=oldpicname%>">
<input type="hidden" name="pid" value="<%=lookup%>">
<input type="hidden" name="fqty" value="<%=dispqty%>">
<input type="hidden" name="fst" value="<%=dispstat%>">
<input type="hidden" name="page" value="<%=page%>">
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
                ' sql server issue
                else' its already there
                catid = ors("id")
                end if
        ors.Close
end if
'now add product
if cat = 0 and catid > 0 then cat = catid
SQL = "SELECT * FROM goods WHERE id = " & lookup & ";"
ors.Open sql, oCon, adOpenStatic,  adLockOptimistic, adCmdText
        if ors.eof or ors.recordcount <> 1 then
        ors.close
        ocon.Close
        set ors = nothing
        set ocon = nothing
        call failure("Database error. Possible garbled data recieved<br>")
        end if
        ' update the product
        ors("catid") = cat
        ors("heading") = encodestring(heading)
        ors("description") = encodestring(description)
        ors("price") = price
        ors("weight") = weight
        ors("qty") = qty
        if speoff = "ON" then
        ors("special") = true
        else
        ors("special") = false
        end if
        ors("oos") = ifnotin
                ' first are we changing the photo?
                if success = true then' a picture was uploaded
                ' is is a different picture to current?
                        if oldpicname <> picname then'yes it is
                                ors("picname") = picname
                                if len(oldpicname) > 1 and oldpicname <> "default.gif" then deletefile(oldpicname)
                        end if  
                else
                ' is it a reset or leave alone
                        if resetpic = "ON" then 
                                ors("picname") = "default.gif"
                                if len(oldpicname) > 1 and oldpicname <> "default.gif" then deletefile(oldpicname)
                        end if
                end if
                
        if bounce(9,0) = true then ors("special") = true        
        ' now update status
        if pstat2 = 1 then 
        ors("status") = 1
        else
        ors("status") = 0
        end if
        ors.Update
' product done! show output
' Now recover product from database just as you would any other product
' Standard variables used:
' Heading, Price, Description, prodstatus, picname
Dim prodstatus
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
<p class="smalltext">Shopkeeper Control Panel - Review product</td>
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
<div class="normal" align="center"><b><u>Product updated:</u></b> Review mode:
Please check the product is correct</div>
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
<form>
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="33%" valign="top" class="smalltext" align="center">To exit to the main menu<br>click 'exit'</td>
<td width="34%" valign="top" class="smalltext" align="center"><%if isnumeric(page) then
if page > 0 then%>
Return to product lists<%
else%>
&nbsp;<%end if
end if%></td>
<td width="33%" valign="top" class="smalltext" align="center">To make changes to
this product&nbsp;<br>
click 'Modify Product'</td>
</tr>
<tr>
<td width="33%">
<div align="center"><input type="button" value="Exit" name="B2" onclick="leavepage()"></div></td>
<td width="34%" valign="top" class="smalltext" align="center"><%if isnumeric(page) then
if page > 0 then%>
<input type="button" value="Return to lists" name="B1" onclick="gotoresults(<%=page%>)"><%
else%>
&nbsp;<%end if
end if%></td>
</center>
<td width="33%">
<div align="center"><input type="button" value="Modify Product" name="B3" onclick="modprod(<%=itemid%>,<%=page%>)"></div></td>
</tr>
</table>
</div>
<input type="hidden" name="pid" value="<%=itemid%>">
<input type="hidden" name="page" value="<%=page%>">
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
<%
ors.close
ocon.Close
set ors = nothing
set ocon = nothing

sub failure(fail)%>
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
<form><input type="button" value="Exit" name="bx1" onclick="leavepage()"></form></div></td>
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