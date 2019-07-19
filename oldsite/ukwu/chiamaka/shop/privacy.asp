<!--#include file="admin.asp"-->
<!--#include file="inccart.asp"-->
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
end function%>
<!--#include file="incbody.asp"-->
<div align="center">
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
<tr>
<td width="100%">
<div class="normal">
<b><u>Security &amp; Privacy</u></b><br>
At <%=b_name%> we are committed to protecting your security and privacy. We know that
when you shop online, you want to know that your name, address, credit card
details and any other information you give us is kept safe and secure, and we endeavor
to do that. Our&nbsp; commitment to customer service means we'll secure, as far
as possible, you data so that only you can access it. your account or view your
financial details. We use the information we collect about you to process orders
only. With your permission we may have occasion to send you mail and email
detailing store offers and promotions. Details on how to unsubscribe are always
included. Also with your permission, we may pass your data to carefully selected
organisations for marketing purposes.&nbsp;
<p><u><b>Data we collect</b></u><br>
When you order, we need to know your name, e-mail address, delivery address,
credit or debit card number and the card's expiry date. This allows us to
process and fulfill your orders and to notify you of the status of your order.
We also ask for your telephone number which enables us to contact you urgently
if there is a problem with your order. For some international deliveries this
number may be given to our couriers.&nbsp;<br>
<br>
<u><b>Protection</b></u><br>
When you pass credit or debit card details to us we use a secure server. The
secure server software (SSL) encrypts all information you input before it is
sent to us. Furthermore, as required by the UK Data Protection Legislation, we
follow strict security procedures in the storage and disclosure of information
which you have given us, to prevent unauthorised access. Our security procedures
mean that we may occasionally request proof of identity before we are able to
disclose sensitive information to you.&nbsp;<br>
<br><u><b>Cookies</b></u><br>
Cookies are small pieces of information that are stored by your browser on your
computer's hard drive. Our cookies do not contain any personally identifying
information, but they do enable us to provide features such the ability to store
items in your Shopping Basket. Most Web browsers automatically accept cookies,
but you can usually change your browser to prevent that. Even without a cookie,
you can still use most of the features in our store, including placing items in
your Shopping Basket and purchasing them.<br>
<br>
<u><b>Other data uses</b></u><br>
We may provide aggregate statistics about our customers, sales, traffic patterns
and related site information to reputable third-party vendors, but these
statistics will not include personally identifying information. On occasions we
employ other companies and individuals to perform functions on our behalf.
Examples include fulfilling orders, delivering packages, sending postal mail and
e-mails, removing repetitive information from customer lists, analysing data,
providing marketing assistance, processing credit card payments and providing
customer services. Such companies and individuals will have access to personal
information needed to perform these functions, but may not use it for any other
purposes and are required to process the data in accordance with the UK's Data
Protection legislation.&nbsp;<br>
<br>
<b><u>Consent</b></u><br>
By using our Web site, you consent to the collection and use of this information
by us. If we decide to change our privacy policy, we will post those changes on
this page so that you are always aware of the information we collect, how we use
it and under what circumstances we disclose it.</p>
<p><u><b>Terms &amp; Conditions</u></b><br>
All items (unless otherwise stated) are new and fully guaranteed. All orders are
shipped/delivered at cost in suitable packaging. Products are covered by the
manufactuers warranty. Faulty or damaged goods are inspected/repaired/replaced
by the manufacturer at their discretion. UK delivery is normally within 5 days
but please allow up to 28 days for delivery. Your credit card will only be
debited when orders are ready for dispatch. You will only be charged for items
that are being shipped and carriage/delivery. Out of stock items will be
advised. Cheques require 10 days to clear before an order can be dispatched. All
photographs and descriptions are for illustrative purposes only.<br>
<br><u><b>Methods of payment</u></b><br>
Any of our accepted methods of payment can be used with our shopping cart. We
accept Visa, Mastercard, Delta and Switch only.<br>
We also accept cash (sent registered post at your own risk) in UK Pounds,<br>
Moneygrams (to Thomas Cook, The Malls, Basingstoke, Hampshire, England. see <a href="http://www.moneygram.com">www.moneygram.com</a>
for full details) and payment directly into our Midland Account Sort Code:
10-80-01 Account Number 123456789 Account Name 'INSERT payments'.&nbsp;<br>
UK Cheques are also acceptable but require clearance prior to an order being dispatched.<br>
<font color="#ff0000"><b><u>We DO NOT accept:</b></u> Non UK cheques/Currency/Money orders.</font><br>
&nbsp;
</div>
</td>
</tr>
</table>
</div>
<!--#include file="inccards.asp"-->
<!--#include file="incfooter.asp"-->