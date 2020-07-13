<!DOCTYPE html>
<html>
<head>
	<title> Multiplication </title>
        <link rel = "stylesheet" type = "text/css" href="style.css"/>	
</head>

<body class="part1">
	<h1>Multiplication Table</h1>
	<p> Felicia Levina </p>

	<div class="submission">
		<form action="lab5.php" method="post">
		<p># of Row(s) : <input type="text" size = "2" name="row"><br> </p>
		<p># of Column(s) : <input type="text" size="2" name="column"><br> </p>
		<input type="submit">
		</form>
	</div>

	<br> <br>

	<h1>Table Result</h1>


	<div class="result">
<?php
$row= $_POST['row'];
$column= $_POST['column'];


if($row >= 3 && $row <= 12 && $column >=3 && $column <= 12)
{
	echo "<p><b>$row x $column Table</b></p>";
	echo"<table>";	
	for($value = 1; $value <= $row; $value+=1)
	{
		echo "<tr>";
		for($value2 = 1; $value2 <= $column; $value2+=1)
		{
			$result = $value * $value2;
			echo "<th> $result </th>";	
		}
	
		echo "</tr>";
	}	
	echo "<br>";	
	echo "</table>";
}

elseif( $row < 3 || $row > 12 || $column < 3 || $column > 12)
{
	echo "<p> PLEASE INSERT THE CORRECT INPUT </p>";
}

?> 
</div>

	<br>

	<h1> Number of Visit(s) </h1>

	<div class="counter">
		<?php
		session_start();
		if(isset($_SESSION['views']))
		 $_SESSION['views'] = $_SESSION['views']+ 1;
		else
		 $_SESSION['views'] = 1;
		echo "<p><b># of visit = </p>" .$_SESSION['views'];
		?>
	</div>	
	
	<br><br>
</body>
</html>

