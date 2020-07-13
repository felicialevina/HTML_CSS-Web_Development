#!/usr/bin/python
print "Content-type: text/html\n\n"
import cgi

form = cgi.FieldStorage()

name = form.getfirst("name")
address = form.getfirst("address")
city = form.getfirst("city")
province = form.getfirst("province")
phone = form.getfirst("phone")

val = phone.split("-")

print "<html>"
print "<head>"
print "<title> Lab 6 Python </title>"

print "<script src = 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>"
print "<script>"
print "$(document).ready(function(){"
print "$('div').animate({left: '475px'}, 5000)"
print "});"
print "</script>"

print "</head>"

print "<body style='background: url(https://pbs.twimg.com/media/DkMXUmAXsAAAON1.jpg); background-repeat: repeat-y; background-size: 100% auto;'>"

print "<h1 style='text-align:center;margin: 0px;'> Your Profile in Python </h1>"
print "<h4 style='text-align:center; margin: 5px;'> Felicia Levina </h4>"
print "<br><br><br><br><br><br><br><br><br><br>"



print "<p style='text-align: center; font-size:50px;'> Name: <br>" + name.title() +  "</p>"

print "</p><br><br><br><br><br><br><br>" 

print "<p style='text-align: center; font-size:50px;'> Address: <br>" + address.title() + ", " + city.capitalize() + ", " + province.capitalize() + "</p>"

print "</p><br><br><br><br><br><br><br>" 

print "<div style='width: 400px; position: absolute;'><p style='font-size:50px;'>"
print "Phone number: <br>" + "(" + val[0] + ")" + " " + val[1] + "-" + val[2] + "</p></div>"


print "</body>"
print "</html>"
