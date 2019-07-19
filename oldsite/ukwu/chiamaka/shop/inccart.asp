<!-- METADATA TYPE="typelib" 
  FILE="C:\Program Files\Common Files\System\ado\msado15.dll" -->
<!--#include file="incdb.asp"-->
<%' cartasp
function makeitanumber(passed)
if not isnumeric(passed) then passed = 0
passed = clng(passed)
makeitanumber = passed
end function

function unique()
dim temp, count
temp = now
temp = temp & timer
for count = 1 to len(temp)
if isnumeric(mid(temp,count,1)) then unique = unique & mid(temp,count,1)
next
end function

dim cart_id, user_id, tempkey, saved_flag, updated_flag, special_flag
dim last_visit, temp_var, last_special
'
saved_flag = false
special_flag = false
updated_flag = false
'
temp_var = now
last_visit = Request.Cookies("ols")("lv")
last_special = makeitanumber(Request.Cookies("ols")("ls"))
if not isdate(last_visit) then last_visit = temp_var
last_visit = cdate(last_visit)
Response.Cookies("ols")("lv") = temp_var
Response.Cookies("ols").expires = date + 365
temp_var = makeitanumber(Request.Cookies("ols")("saved"))
if temp_var > 0 then saved_flag = true
'
tempkey = unique()
tempkey = cstr(tempkey)

dim cartrs, cartcon, cartsql
Set cartrs = Server.CreateObject ("ADODB.recordset")
Set cartcon = Server.CreateObject("ADODB.Connection")
cartcon.Open constring
' get our list of categories for local use
If NOT isarray(Application("productcats")) then
        dim app_cats
        cartsql = "SELECT * FROM cats;"
        cartrs.Open cartsql, constring, adOpenKeySet, adLockReadOnly, adCmdText
        if not cartrs.BOF then cartrs.MoveFirst
        app_cats = cartrs.GetRows
        cartrs.Close
        Application.Lock
        Application("productcats") = app_cats
        Application.UnLock
end if
'
' get our list of countries for local use
If NOT isarray(Application("countries")) then
        dim app_countries
        cartsql = "SELECT * FROM countries ORDER BY name ASC;"
        cartrs.Open cartsql, constring, adOpenKeySet, adLockReadOnly, adCmdText
        if not cartrs.BOF then cartrs.MoveFirst
        app_countries = cartrs.GetRows
        cartrs.Close
        Application.Lock
        Application("countries") = app_countries
        Application.UnLock
end if
'
' get our list of specials for local use
If NOT isarray(Application("specials")) AND session("chksp") <> "1" then
        session("chksp") = "1"
        dim app_spec
        cartsql = "SELECT * FROM goods WHERE (special = true) AND qty > 0 OR status = 2 AND status = 1;"
        cartrs.Open cartsql, constring, adOpenKeySet, adLockReadOnly, adCmdText
        if cartrs.RecordCount > 0 then
        if not cartrs.BOF then cartrs.MoveFirst
        app_spec = cartrs.GetRows
        Application.Lock
        Application("specials") = app_spec
        Application.UnLock
        end if
        cartrs.Close
end if
'
user_id = makeitanumber(session("user"))
if user_id < 1 then user_id = makeitanumber(Request.querystring("user"))
if user_id < 1 then user_id = makeitanumber(Request.form("user"))
if user_id < 1 then user_id = makeitanumber(Request.Cookies("ols")("user"))
'
cart_id = makeitanumber(session("cart"))
if cart_id < 1 then cart_id = makeitanumber(Request.querystring("cart"))
if cart_id < 1 then cart_id = makeitanumber(Request.form("cart"))
        if cart_id < 1 then' make cart
        '
        ' first verify user exists
        cartsql = "SELECT * FROM customers WHERE id=" & user_id & ";"
        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
                if not cartrs.EOF and cartrs.RecordCount = 1 then
                'it exists
                cartrs("unique") = tempkey
                user_id = cartrs("id")
                cartrs("started") = now
                cartrs.Update
                else
                cartrs.AddNew
                cartrs("unique") = tempkey
                cartrs("started") = now
                cartrs.Update
                user_id = cartrs("id")
                        if user_id < 1 then' a quirk with some databases namely sql server
                        cartrs.Close
                        cartsql = "SELECT * FROM customers WHERE unique LIKE '" & tempkey & "';"
                        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
                                if not cartrs.RecordCount <> 1 then' got it
                                user_id = cartrs("id")
                                else
                                user_id = 0
                                end if
                        end if
                end if
        cartrs.Close
        ' set user cookie
        Response.Cookies("ols")("user") = user_id
        Response.Cookies("ols").expires = date + 365
        'NOW GENERATE CART ID
        '
        cartsql = "SELECT * FROM orders WHERE id=0"' just to return a very small rs
        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
        cartrs.AddNew
        cartrs("status") = 1
        cartrs("cust") = user_id
        cartrs("unique") = tempkey
        cartrs("date") = now
        cartrs("lastupdated") = now
        cartrs.Update
        cart_id = cartrs("id")
                if cart_id < 1 then' a quirk with some databases namely sql server
                cartrs.Close
                cartsql = "SELECT * FROM orders WHERE unique LIKE '" & tempkey & "';"
                cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
                        if not cartrs.RecordCount <> 1 then' got it
                        cart_id = cartrs("id")
                        else
                        cart_id = 0
                        end if
                end if
        cartrs.Close
        session("cart") = cart_id
        session("user") = user_id
                '
        'update hit counter/stats
        cartsql = "SELECT * FROM hits ORDER BY ts ASC;"
        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
        ' to save hit space this counter wipes out any hits after 500 reached
                if cartrs.RecordCount > 500 then
                dim the_diff, a_counter
                the_diff = cartrs.RecordCount - 500
                if not cartrs.BOF then cartrs.MoveFirst
                for a_counter = 1 to the_diff
                cartrs.Delete
                cartrs.MoveNext
                next
                end if
        cartrs.AddNew
        cartrs("ts") = now
        cartrs("remote") = Request.ServerVariables("REMOTE_ADDR")
        cartrs("referer") = Request.ServerVariables("HTTP_REFERER")
        cartrs("cart_id") = cart_id
        cartrs("cust") = user_id
        cartrs.Update
        cartrs.close
        '***********************************************************
        ' now scan orders and check if any are (1) saved (2) changed
        '***********************************************************
        cartsql = "SELECT * FROM orders WHERE id = " & user_id & ";"
        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
                if not cartrs.EOF then
                do while not cartrs.EOF
                if cartrs("status") = 2 then saved_flag = true
                if cartrs("lastupdated") > last_visit then updated_flag = true
                cartrs.MoveNext
                loop
                end if
        cartrs.Close
        end if
        ' This chunk of code tidies up the database removing any 'dead' customers
        ' it's purpose is just to keep wasted database space to a minimum.
        cartsql = "SELECT * FROM customers;"
        cartrs.Open cartsql, cartcon, adOpenStatic,  adLockOptimistic, adCmdText
        if not cartrs.EOF then
        do while not cartrs.EOF
        if isnull(cartrs("title")) AND isnull(cartrs("firstname")) AND isnull(cartrs("lastname")) AND isnull(cartrs("email")) AND isnull(cartrs("password")) THEN 
        if cartrs("started") < date-1 then cartrs.Delete
        end if
        cartrs.MoveNext
        loop
        end if
        cartrs.close
        
cartcon.close
set cartrs = nothing
set cartcon = nothing
        ' now get a special offer to show
        Dim so_pic, so_heading, so_price, so_desc, so_itemid, so_array
                if isarray(Application("specials")) then
                so_array = Application("specials")
                temp_var = 0
                dim matchit, xpass
                matchit = last_special
                for xpass = 1 to 3
                for temp_var = 0 to ubound(so_array,2)
                        if so_array(0,temp_var) > last_special and last_special = matchit then
                        so_itemid = so_array(0,temp_var)
                        so_heading = so_array(2,temp_var)
                        so_desc = so_array(3,temp_var)
                        so_price = so_array(4,temp_var)
                        so_pic = so_array(8,temp_var)
                        last_special = makeitanumber(so_itemid)
                        end if
                next
                        if last_special = matchit then
                        last_special = 0
                        matchit = 0
                        end if
                next
                else
                last_special = 0
                end if
        Response.Cookies("ols")("ls") = last_special
        Response.Cookies("ols").expires = date + 365
%>
