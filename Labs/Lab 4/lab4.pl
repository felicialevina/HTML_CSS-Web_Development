#!/usr/bin/perl
use CGI':standard';
use strict;
use warnings;
print "Content-type: text/html\n\n";

my $firstname = param ('first');
my $lastname = param ('last');
my $visitplace = param ('place');
my $reason = param ('reason');
my $purpose = param ('purpose');
my $person = param ('who');

print "<html>\n";
	print "<head>\n";
		print "<title>Perl Program</title>";
		print "<link rel = 'stylesheet' type = 'text/css' href='http://scs.ryerson.ca/~flevina/style4.css'/>\n";
		print"<link href='https://fonts.googleapis.com/css?family=Spicy+Rice&display=swap' rel='stylesheet'>\n";
		print"<link href='https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei&display=swap' rel='stylesheet'>";

	print "</head>\n";

	print "<body>\n";
		print "<p class='main'> Hello, $firstname $lastname </p>";


	if($visitplace eq "bali")
	{
		print "<p class='content'>The place you want to go in the future is Bali, Indonesia <br><br>";			
		print "<img src = 'https://media.timeout.com/images/105240189/image.jpg'>"
	}
	elsif($visitplace eq "bangkok")
	{
		print "<p class='content'>The place you want to go in the future is Bangkok, Thailand <br><br>";
		print "<img src = 'http://www.prasannaholidays.com/wp-content/uploads/2014/06/rsz_bangkok_city.jpg'>"
	}
	elsif($visitplace eq "maldives")
        {
                print "<p class='content'>The place you want to go in the future is Maldives <br><br>";
                print "<img src = 'https://robbreportedit.files.wordpress.com/2019/09/intercontinental-maldives-full-aerial-view-3-bedroom-overwater-residence.jpg?w=1000'>"
	}
        elsif($visitplace eq "shanghai")
        {
                print "<p class='content'>The place you want to go in the future is Shanghai, China <br><br>";
                print "<img src = 'https://www.fodors.com/wp-content/uploads/2019/04/10UndertheRadarShanghai__HERO_shutterstock_351311348.jpg'>"
        }
        elsif($visitplace eq "seoul")
        {
                print "<p class='content'>The place you want to go in the future is Seoul, South Korea <br><br>";
                print "<img src = 'https://www.cheapflights.ca/news/wp-content/uploads/sites/148/2017/10/12-cheap-and-free-things-to-do-in-seoul-south-kore-13.jpg'>"
        }
        elsif($visitplace eq "tokyo")
        {
                print "<p class='content'>The place you want to go in the future is Tokyo, Japan <br><br>";
                print "<img src = 'https://image.insider.com/5d26280921a86107bb51bd92?width=1100&format=jpeg&auto=webp'>"
        }

		print "<p class='content'> The reason you would like to go to this particular place is: <br><br> <u> $reason <br></u></p>";

		print "<p class = 'content'> You would categorize your visit as: <u>$purpose </u> <br></p>";

	print "<p class = 'content'> & </p>";

	if($person eq 'alone')
	{
		print "<p class = 'content'> You would prefer going: <u>$person</u></p>";
	}
	elsif($person eq 'family')
	{
		print "<p class = 'content'> You would love to go with: your <u>$person </u></p>"
	}
	elsif($person eq 'friends')
	{
		print "<p class = 'content'> You would love to go with: your <u>$person </u></p>"
	}
	elsif($person eq 'colleagues')
	{
		print "<p class = 'content'> You have to go with: your <u> $person </u></p>"
	}

	print "</body>\n";
print "</html>\n";

