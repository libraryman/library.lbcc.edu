<%dim redirect
if session("islogged") <> "yes" then
        if request.Cookies("sk")("login") = "yes" then
        redirect = "index.asp?message=" & server.URLEncode("Log in has timed out")
        else
        redirect = "index.asp?message=" & server.URLEncode("User not logged in")
        end if
else
session("islogged") = "yes"
Response.Cookies("sk")("login") = "yes"
Response.Cookies("sk").expires = date + 1
end if
if len(redirect) > 1 then
Response.Redirect(redirect)
Response.End
end if%>