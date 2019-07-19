<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file="admin.asp"-->
<!--#include file="inccart.asp"-->
<!--#include file="inccarriage.asp"-->
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
'
function summary(thestring,length)
if len(thestring) > length then thestring = left(thestring,length)
summary = grandma(thestring)
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
'
function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
end function
'
dim r_page, r_item, r_sc, r_ss, fail, u_country
r_page = makeitanumber(trim(request("page")))
r_item = makeitanumber(trim(request("item")))
r_sc = makeitanumber(trim(request("sc")))
r_ss = trim(request("ss"))
u_country = makeitanumber(trim(request("country")))

'
' this script has to do 2 things. 
' 1 check the item is still available
' 2 if so add the item BUT check the item is NOT already in the cart. If it is, just add 1 to qty
'
dim ors, ocon, sql
Set ors = Server.CreateObject ("ADODB.recordset")
Set ocon = Server.CreateObject("ADODB.Connection")
ocon.Open constring
sql = "SELECT * FROM goods WHERE id=" & r_item & ";"
ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
if not ors.EOF then
        if ors("status") = 1 then
                if ors("qty") < 1 then
                if ors("oos") = 1 then fail = "Item currently unavailable<br>"
                end if
        end if
else
fail = "Error:45additem: Item currently unavailable<br>"
end if
ors.close
' get mailing countries in case price to change
' first check if it's in the users profile if not assume UK
'----------------------------------------------
if len(fail) < 1 then
        sql = "SELECT * FROM customers WHERE id=" & user_id & ";"
        ors.Open sql, ocon, adOpenStatic,  adLockReadOnly, adCmdText
        if not ors.EOF then
                u_country = makeitanumber(ors("country"))
        end if
ors.close
        if u_country < 1 then u_country = 252
        ' if the item is ok add or update cart
        sql = "SELECT * FROM orderitems WHERE [order]=" & cart_id & " AND [item] =" & r_item & ";"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
        if not ors.EOF then
                ors("qty") = ors("qty") + 1
                ors.Update
        else
                ors.addnew
                ors("qty") = 1
                ors("order") = cart_id
                ors("item") = r_item
                ors.update
        end if
        ors.close
end if
' now blowout if a fail occurred
%><!--#include file="incbody.asp"--><%
if len(fail) > 1 then
        ors.Close
        ocon.Close
        set ors=nothing
        set ocon=nothing%>
        <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
        <td width="100%" bgcolor="#FF0000" class="normal"><b><font color="#FFFFFF">Drat!</font></b></td>
        </tr>
        <tr>
        <td width="100%" class="normal">An error occurred. The message is:<br>
        <br>
        <i><%=fail%></i><br>
        <br>
        Please contact us by <a href="mailto:<%=b_email%>">[email]</a> if you think this
        is wrong<br>
        <br>
        Use back on your browser to return to the last page.</td>
        </tr>
        <tr>
        <td width="100%" bgcolor="#000000">&nbsp;</td>
        </tr>
        </table>
        </center>
        </div>
        <!--#include file="inccards.asp"-->
        <!--#include file="incfooter.asp"-->
        <%Response.End
end if
' now clear cart of any 'dont show' or out of stock items
sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & ");"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
dim todo
do while not ors.EOF
todo = false
if ors("goods.qty") < 1 and ors("oos") = 1 then todo = true
if ors("status") <> 1 then todo = true
if todo = true then
ors("wipe") = true
ors.Update
end if
ors.MoveNext
loop
ors.Close
sql = "SELECT * FROM orderitems WHERE wipe=true;"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
do while not ors.EOF
ors.Delete
ors.MoveNext
loop
ors.Close
' or do a view cart
dim t_qty, rtotal, rweight, bgc
sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & " AND goods.status = 1 AND (goods.qty > 0 OR goods.oos <> 1));"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
        %>
        <div class="normal"><b>Product added. Here is your current order.&nbsp;</b><br>
        To remove an item click 'remove'<br>
        To change the quantity just enter a new number and press 'update'<br>
        To view approximate postal charges select your country and click 'change'<br>
        Items that are out of stock or not currently available are removed.</div>
        <hr><div align="center" class="smalltext">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <tr>
        <td width="6%" class="smalltext">Qty</td>
        <td width="39%" class="smalltext">Item</td>
        <td width="15%" class="smalltext">Price each £</td>
        <td width="13%" class="smalltext">Sub total £</td>
        <td width="12%" align="center" class="smalltext">Remove</td>
        <td width="15%" align="center" class="smalltext">Update</td>
        </tr>
        </table>
        </center>
        </div>
        <%do while not ors.EOF
        if bgc = "#c0c0c0" then
        bgc = "#ffffff"
        else
        bgc = "#c0c0c0"
        end if%>
        
        <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <form method="POST" action="viewcart.asp" id=form1 name=form1>
        <tr>
        <td width="6%" bgcolor="<%=bgc%>">
        <p align="center" class="smalltext"><input type="text" name="newqty" size="3" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1" value="<%=ors("orderitems.qty")%>"></td>
        <td width="39%" class="smalltext" bgcolor="<%=bgc%>"><%=decodestring(summary(ors("heading"),25))%></td>
        <td width="15%" class="smalltext" bgcolor="<%=bgc%>">£<%=fixcurrency(ors("price"))%></td>
        <td width="13%" class="smalltext" bgcolor="<%=bgc%>">£<%=fixcurrency(ors("orderitems.qty") * ors("price"))%></td>
        <%rtotal = rtotal + ors("orderitems.qty") * ors("price")
        rweight = rweight + (ors("orderitems.qty") * ors("weight"))%>
        <td width="12%" align="center" class="smalltext" bgcolor="<%=bgc%>"><input type="submit" value="Remove" name="B1" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
        <td width="15%" align="center" class="smalltext" bgcolor="<%=bgc%>"><input type="submit" value="Update" name="B2" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></td>
        </tr>
        <input type="hidden" name="user" value="<%=user_id%>">
        <input type="hidden" name="cart" value="<%=cart_id%>">
        <input type="hidden" name="page" value="<%=r_page%>">
        <input type="hidden" name="item" value="<%=ors("item")%>">
        <input type="hidden" name="sc" value="<%=r_sc%>">
        <input type="hidden" name="ss" value="<%=r_ss%>">
        <input type="hidden" name="u_country" value="<%=u_country%>">
        </form>
        </table>
        </center>
        </div>
        <% ors.MoveNext
        loop
        ors.close
        %><hr>
        <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <tr>
        <td width="6%">&nbsp;</td>
        <td width="39%">&nbsp;</td>
        <td width="12%" align="right" class="smalltext">£ sub total</td>
        <td width="15%" align="right" class="smalltext">£<%=rtotal%></td>
        </tr>
        <tr>
        <td width="6%">&nbsp;</td>
        </center>
        <td width="39%" colspan="2" class="smalltext">
        <form method="POST" action="viewcart.asp">
        <div class="smalltext" align="right"><font color="#000080">Shipping charges to: </font><select size="1" name="u_country" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1">
        <% dim b_counter, l_c, the_zone
        l_c = application("countries")
        If NOT isarray(l_c) then
                dim app_countries2
                sql = "SELECT * FROM countries ORDER BY name ASC;"
                ors.Open sql, constring, adOpenKeySet, adLockReadOnly, adCmdText
                if not ors.BOF then ors.MoveFirst
                app_countries2 = ors.GetRows
                ors.Close
                Application.Lock
                Application("countries") = app_countries2
                Application.UnLock
        end if
        l_c = application("countries")
        for b_counter = 0 to ubound(l_c,2)
        %>
        <option <%if u_country = l_c(0,b_counter) then
        the_zone = l_c(1,b_counter)
        %>selected <%
        end if%>value="<%=l_c(0,b_counter)%>"><%=l_c(2,b_counter)%></option>
        <%next
        if the_zone < 1 then the_zone = 12%>
        </select>&nbsp;&nbsp;&nbsp;<input type="submit" value="Change" name="B3" style="font-family: Verdana; font-size: 8pt; letter-spacing: -1"></div>
        <input type="hidden" name="user" value="<%=user_id%>">
        <input type="hidden" name="cart" value="<%=cart_id%>">
        <input type="hidden" name="page" value="<%=r_page%>">
        <input type="hidden" name="sc" value="<%=r_sc%>">
        <input type="hidden" name="ss" value="<%=r_ss%>">
        </form>
        </td>
        <center>
        <td width="15%" align="right" class="smalltext"><font color="#000080">
        £<%if (carriage(rweight,the_zone)) = 0 then
        response.write "TBC"
        else
        Response.Write fixcurrency(carriage(rweight,the_zone))
        rtotal = rtotal + carriage(rweight,the_zone)
        end if%></font></td>
        </tr>
        <tr>
        <td width="6%">&nbsp;</td>
        </center>
        <td width="39%" colspan="2">
        <p align="right" class="smalltext"><b><font color="#FF0000">Total value</font></b></td>
        <center>
        <td width="15%" align="right" class="smalltext"><font color="#FF0000"><b>£<%=fixcurrency(rtotal)%></b></font></td>
        </tr>
        </table>
        </center>
        </div>
        <p class="smalltext"><font color="#FF0000"><b>To carry on shopping click <%
        if r_page > 0 then%>
                <a href="search.asp?page=<%=r_page%>&user=<%=user_id%>&cart=<%=cart_id%>&ss=<%=server.URLEncode(r_ss)%>&sc=<%=r_sc%>">[here]</a>
        <%else%>
                <a href="index.asp?user=<%=user_id%>&cart=<%=cart_id%>">[here]</a>
        <%end if%>
        or proceed to <a href="checkout.asp?cart=<%=cart_id%>&user=<%=user_id%>&u_country=<%=u_country%>">[checkout]</a><br>
        You can also <a href="saveorder.asp?cart=<%=cart_id%>&user=<%=user_id%>">[save]</a>
        your order and come back to it later.</b></font></p>
        <!--#include file="inccards.asp"-->
        <!--#include file="incfooter.asp"-->
<%else
        %><div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
        <td width="100%" bgcolor="#FF0000"><b><font color="#FFFFFF">Cart empty</font></b></td>
        </tr>
        <tr>
        <td width="100%" class="smalltext">Your cart is empty! (No items in your order)<br>
        <br>
        <br>
        click&nbsp;<%
        if r_page > 0 then%>
                <a href="search.asp?page=<%=r_page%>&user=<%=user_id%>&cart=<%=cart_id%>&ss=<%=server.URLEncode(r_ss)%>&sc=<%=r_sc%>">[here]</a>
        <%else%>
                <a href="index.asp?user=<%=user_id%>&cart=<%=cart_id%>">[here]</a>
        <%end if%>&nbsp;to continue...</td>
        </tr>
        <tr>
        <td width="100%" bgcolor="#000000">&nbsp;</td>
        </tr>
        </table>
        </center>
        </div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"--><%
end if
ocon.Close
set ors=nothing
set ocon=nothing%>


