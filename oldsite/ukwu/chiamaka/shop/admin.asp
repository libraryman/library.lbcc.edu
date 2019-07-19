<%option explicit
on error resume next
dim user_name, pass_word, b_address, b_email, b_name, b_phone, b_fax, b_ccemail
dim hours(7), mappostcode, b_cname, securedurl
b_ccemail = true
hours(0) = "Closed" ' sunday
hours(1) = "10am - 6pm" ' mon
hours(2) = "10am - 6pm" ' tue
hours(3) = "10am - 6pm" ' wed
hours(4) = "10am - 6pm" ' thu
hours(5) = "9am - 12pm" ' fri
hours(6) = "10am - 4pm" ' sat
hours(7) = "<b>CALL</b>" ' bankholidays
user_name = "demo"
pass_word = "demo"
b_address = "123, Anystreet<br>Anytown<br>Anywhere<br>123 567"
b_phone = "+44 (0) 1234 567890"
b_fax = "+44 (0) 1234 567890"
b_email = "support@dot-common-sense.co.uk"
b_name = "Mr Mischief"
mappostcode = "rg224ju"
b_cname = "Peter Pansy"
securedurl = "https://vault1.secured-url.com/enigma1/paygate/paygate.asp"
%>