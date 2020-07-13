#!/usr/bin/perl
use CGI':standard';
use strict;
use warnings;
print "Content-type: text/html\n\n";

print "<html>\n";
	print "<head>\n";
		print "<title>Perl Program</title>";
		print "<link rel = 'stylesheet' type = 'text/css' href='http://scs.ryerson.ca/~flevina/style4.css'/>\n";
		print"<link href='https://fonts.googleapis.com/css?family=Spicy+Rice&display=swap' rel='stylesheet'>\n";
	print "</head>\n";

	print "<body>\n";
		print "<p class='main'> This is my first <br> Perl program </p>";
                print "<p class='nameid'> Felicia Levina </p>";  
	print "</body>\n";
print "</html>\n";

