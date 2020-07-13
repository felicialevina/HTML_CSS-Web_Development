<!DOCTYPE html>
<html>

<head>
        <title> CPS 530 Lab 8 </title>
        <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
$xml=simplexml_load_file("streaminfo.xml");

$content= $xml->data->item->title;
echo "<h1 style='text-align:center;'>";
echo $content;
echo "</h1>";

echo "<h4 style='text-align:center;'> Felicia Levina </h4>";

echo "<br>";

$artwork = $xml->data->item->track->imageurl;
echo "<img style='padding: 10px; border-style: dotted; border-radius: 10px; width: 350px; height: 350px; display:block; margin-right: auto; margin-left:auto;' src='";
echo $artwork;
echo "'>";

echo "<h2 style='text-align:center;'><u> Song Information </u></h2>";


$title = $xml->data->item->track->title;
echo "<p style='text-align:center;'><b> Song Title: </b>";
echo $title;
echo "</p>";

$artist = $xml->data->item->track->artist;
echo "<p style='text-align:center;'><b> Song Artist: </b>";
echo $artist;
echo "</p>";

$album = $xml->data->item->track->album;
echo "<p style='text-align:center;'><b> Song Album: </b>";
echo $album;
echo "</p>";


$sid = $xml->data->item->track->id;
echo "<p style='text-align:center;'><b> Song ID: </b>";
echo $sid;
echo "</p>";

$date = $xml->data->item->date;
$time = $xml->data->item->time;
echo "<p style='text-align:center;'><b> Date and Time: </b>";
echo $date;
echo ", ";
echo $time;
echo "</p>";


?>
</body>
</html>
