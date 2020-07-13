#!/usr/local/bin/ruby -w
puts "Content-type: text/html\n\n"
require 'cgi'
cgi = CGI.new


n = cgi['name']
a = cgi['address']
c = cgi['city']
p = cgi['province']
pn = cgi['phone']

val = pn.split("-")


puts"<html>
<head>
	<title> Lab 6 Ruby </title>
	
	<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js></script> 
	
	<script>
	$(document).ready(function(){
		$('b.hide1').fadeIn(7000).removeClass('hide1');
		$('b.hide2').fadeIn(9000).removeClass('hide2');
		$('b.hide3').fadeIn(11000).removeClass('hide3');
	});
	</script>

	<style>
		.hide1
		{display: none;}
		
		.hide2
                {display: none;}

		.hide3
                {display: none;}
	</style>
</head>

<body style='background: url(https://pbs.twimg.com/media/DkMXUmAXsAAAON1.jpg); background-repeat: repeat-y; background-size: 100% auto;'>

        <h1 style='text-align:center;margin: 0px;'> Your Profile in Ruby </h1>
        <h4 style='text-align:center; margin: 5px;'> Felicia Levina </h4>

        <br><br><br><br><br><br><br><br><br><br>
"

puts "<p style='text-align: center; font-size:50px;'>"
puts "Name: <br>" + n.split.map(&:capitalize).join(' ') 

puts "</p><br><br><br><br><br><br><br><br>"

puts "<p style='text-align:center; font-size: 50px;'>"
puts "Address: <br>" + a.split.map(&:capitalize).join(' ') + ", " + c.capitalize + ", " + p.capitalize

puts "</p><br><br><br><br><br><br><br>" 



puts "<p style='text-align: center; font-size:50px;'>"
puts "Phone number: <br>" 

puts "<b style='color:#ff6961' class='hide1'>"
puts "(" + val[0] + ") </b>" 

puts "<b style='color:#779ecb' class='hide2'>"
puts " " + val[1] + "</b>"

puts "<b style='color:#77dd77' class='hide3'>"
puts "-" + val[2] + "</p>"

puts"</body>"
puts"</html>"
