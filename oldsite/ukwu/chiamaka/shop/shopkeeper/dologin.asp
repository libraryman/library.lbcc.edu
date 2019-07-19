<%option explicit
on error resume next
%>
<!--#include file="admin.asp"-->
<%
dim username, pw, redirect
redirect = "index.asp?message=" & server.URLEncode("Bad Login!")
' first kill any current login
Response.Cookies("sk")("login") = ""
Response.Cookies("sk").expires = date - 1
session("islogged") = ""
username = ucase(Request.Form("un"))
pw = ucase(Request.Form("pw"))
user_name = ucase(user_name)
pass_word = ucase(pass_word)
if username = user_name AND pw = pass_word then 
redirect = "menu.asp"
Response.Cookies("sk")("login") = "yes"
Response.Cookies("sk").expires = date + 1
session("islogged") = "yes"
end if
Response.Redirect(redirect)
Response.End%>