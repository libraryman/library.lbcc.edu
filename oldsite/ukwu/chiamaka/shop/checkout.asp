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
dim r_page, r_item, r_sc, r_ss, fail, u_country, new_q, action
r_page = makeitanumber(trim(request("page")))
r_item = makeitanumber(trim(request("item")))
r_sc = makeitanumber(trim(request("sc")))
r_ss = trim(request("ss"))
u_country = makeitanumber(trim(request("u_country")))
new_q = makeitanumber(request("newqty"))
action = trim(request("B1"))
if len(action) < 1 then action = trim(request("B2"))
if len(action) < 1 then action = trim(request("B3"))
if len(action) < 1 then action = "None"
if action = "Update" and new_q < 1 then action = "Remove"
'
dim ors, ocon, sql
Set ors = Server.CreateObject ("ADODB.recordset")
Set ocon = Server.CreateObject("ADODB.Connection")
ocon.Open constring
' we need to get the actual mailing country
        sql = "SELECT * FROM customers WHERE id=" & user_id & ";"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
        if not ors.EOF then
                if u_country <> makeitanumber(ors("country")) then 
                        if u_country < 1 then u_country = 252
                        ors("country") = u_country
                        ors.Update
                end if
        end if
        ors.close
if u_country < 1 then u_country = 252   
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
' now deal with any actions
if len(action) > 1 and action <> "None" and action <> "Change" then
        sql = "SELECT * FROM orderitems WHERE [order] = " & cart_id & " AND item = " & r_item & ";"
        ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
        if not ors.EOF then
                if action = "Update" then
                        if new_q > 100 then new_q = 100
                        ors("qty") = new_q
                        ors.Update
                else
                        if action = "Remove" then ors.Delete
                end if
        end if
ors.Close
end if
%><!--#include file="incbody.asp"--><%
dim t_qty, rtotal, rweight, bgc, whattodo
' or do a view cart
'sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & ");"
sql = "SELECT * FROM orderitems INNER JOIN goods ON goods.id = orderitems.item WHERE (orderitems.order = " & cart_id & ");"
ors.Open sql, ocon, adOpenStatic,  adLockOptimistic, adCmdText
if not ors.EOF then
        %>
        <div class="normal"><b>At the checkout</b></div>
<div class="smalltext">You are now at our check-out. We have made this stage as easy as possible whilst
giving as much flexibility as we can. Please check your order and make any
changes. When you are happy press continue.<br>&nbsp;
</div>
        <hr>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <tr><td>
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
        <%do while not ors.EOF
        if bgc = "#c0c0c0" then
        bgc = "#ffffff"
        else
        bgc = "#c0c0c0"
        end if%>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <form method="POST" action="checkout.asp" id=form1 name=form1>
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
        <%
        ors.MoveNext
        loop
        ors.close
        %><hr>
        <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#c0c0c0">
        <tr>
        <td width="6%">&nbsp;</td>
        <td width="39%">&nbsp;</td>
        <td width="12%" align="right" class="smalltext" align="right"><b>£ sub total</b></td>
        <td width="15%" align="right" class="smalltext">£<%=rtotal%></td>
        </tr>
        <tr>
        <td width="6%">&nbsp;</td>
        </center>
        <td width="39%" colspan="2" class="smalltext">
        <form method="POST" action="checkout.asp">
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
        <div align="right" class="smalltext" align="right"><b><font color="#FF0000">Total value</font></b></div></td>
        <center>
        <td width="15%" align="right" class="smalltext"><font color="#FF0000"><b>£<%=fixcurrency(rtotal)%></b></font></td>
        </tr>
        </table>
        </center>
        </div>
        </td></tr></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<form method="POST" action="tunnel0.asp">
<div align="right"><input type="submit" value="Continue" name="B1"></div>
<input type="hidden" name="cart" value="<%=cart_id%>">
<input type="hidden" name="user" value="<%=user_id%>">
<input type="hidden" name="amount" value="<%=rtotal%>">
</form>
</td>
</tr>
</table>
        <p class="smalltext" align="center"><font color="#FF0000"><b>To exit and carry on shopping click <%
        if r_page > 0 then%>
                <a href="search.asp?page=<%=r_page%>&user=<%=user_id%>&cart=<%=cart_id%>&ss=<%=server.URLEncode(r_ss)%>&sc=<%=r_sc%>">[here]</a>
        <%else%>
                <a href="index.asp?user=<%=user_id%>&cart=<%=cart_id%>">[here]</a>
        <%end if%>&nbsp;
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


