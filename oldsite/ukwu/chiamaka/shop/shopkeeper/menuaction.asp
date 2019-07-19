<%option explicit%>
<!--#include file = "chklog.asp"-->
<%on error resume next
dim action, redirected, item, oid, pid, email
email = Request.Form("email")
oid = Request.Form("oid")
pid = Request.Form("pid")
for each item in Request.Form
if item = "B1" and request(item) = "GO" then redirected = "addprod.asp"
if item = "B2" and request(item) = "GO" then redirected = "listprods.asp"
if item = "B3" and request(item) = "GO" then redirected = "modprod1.asp?pid=" & pid
if item = "B4" and request(item) = "GO" then redirected = "specialslist.asp"
if item = "B5" and request(item) = "GO" then redirected = "showorders.asp?t=1"
if item = "B6" and request(item) = "GO" then redirected = "showorders.asp?t=0"
if item = "B7" and request(item) = "GO" then redirected = "showorders1.asp?oid=" & oid
if item = "B8" and request(item) = "GO" then redirected = "statemail.asp?email=" & server.URLEncode(email)
if item = "B9" and request(item) = "GO" then redirected = "statviewer.asp"
if item = "B10" and request(item) = "GO" then redirected = "cats.asp"
if item = "B11" and request(item) = "GO" then redirected = "showorders.asp?t=2"
if item = "B12" and request(item) = "GO" then redirected = "cleardead.asp"
next
Response.redirect(redirected)
Response.End
%>
