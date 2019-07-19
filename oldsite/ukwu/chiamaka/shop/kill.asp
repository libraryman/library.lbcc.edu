<%userwas = request.cookies("ols")("user")
lastspecial = request.cookies("ols")("ls")
lastvisit = request.cookies("ols")("lv")
svd1 = Request.Cookies("ols")("saved")
su1 = session("user")
sc1 = session("cart")
killed = "NONE"
if request.querystring("k") = "a" then
        response.Cookies("ols")("user") = ""
        response.Cookies("ols")("lv") = ""
        response.Cookies("ols")("ls") = ""
        response.Cookies("ols")("saved") = ""
        response.Cookies("ols").expires = date - 1
        session("cart") = "0"
        session("user") = "0"
        killed = "ALL"
end if
if request.querystring("k") = "u" then
        response.Cookies("ols")("user") = ""
        response.Cookies("ols")("lv") = ""
        response.Cookies("ols")("ls") = ""
        response.Cookies("ols").expires = date - 1
        session("cart") = "0"
        session("user") = "0"
        killed = "USER COOKIES/SESSION"
end if
if request.querystring("k") = "v" then
        response.Cookies("ols")("saved") = ""
        killed = "SAVED COOKIE ONLY"
end if
if request.querystring("k") = "q" then
        response.Cookies("ols")("user") = ""
        response.Cookies("ols")("lv") = ""
        response.Cookies("ols")("ls") = ""
        response.Cookies("ols").expires = date - 1
        killed = "COOKIES ONLY (NOT SAVED)"
end if
if request.querystring("k") = "p" then
        session("cart") = "0"
        session("user") = "0"
        killed = "SESSION ONLY"
end if
su2 = session("user")
sc2 = session("cart")
userwas1 = request.cookies("ols")("user")
lastspecial1 = request.cookies("ols")("ls")
lastvisit1 = request.cookies("ols")("lv")
svd2 = Request.Cookies("ols")("saved")
Response.Write "KILLED:" & killed & "<BR>"
Response.Write "Session User WAS:" & su1 & "<BR>"
Response.Write "Session cart WAS:" & sc1 & "<BR>"
response.write "OLD USER WAS:" & userwas & "<BR>"
response.write "LAST SPECIAL WAS:" & lastspecial & "<BR>"
response.write "LAST VISIT WAS:" & lastvisit & "<BR>"
response.write "Saved order was:" & svd1 & "<BR>"
response.write"------------------------------------------------------<br>"
Response.Write "Session User IS:" & su2 & "<BR>"
Response.Write "Session cart IS:" & sc2 & "<BR>"
response.write "OLD USER IS:" & userwas1 & "<BR>"
response.write "LAST SPECIAL IS:" & lastspecial1 & "<BR>"
response.write "LAST VISIT IS:" & lastvisit1 & "<BR>"
response.write "Saved order IS:" & svd2 & "<BR>"
Response.Write "?k= a (all) u (user ses+cook -not saved) v (saved only) q (cookies only not saved) p (session only)<BR>"
Response.Write "Session started at:" & session("start") & "<BR>"
Response.Write "ACTIVE COUNT=" & Application("customer_count") & "<BR>"
Response.Write "APP ST:" & Application("started") & "<BR>"
Response.Write "APP EN:" & Application("ended") & "<BR>"
Response.Write "COUNTED SESSIONS SINCE APP START:" & Application("counted") & "<BR>"
%>