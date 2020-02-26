<!DOCTYPE html>

<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<?php
	$link = OpenCon();
	$sql = "INSERT INTO client (Client_ID, name, numVisits)
	VALUES (dlnum, firstname + ' ' + lastname, 1)";
	$link->query($sql);
	$sql = "SELECT TOP(1) RoomNo IN rooms WHERE avialable='1'";
	$roomnum = mysqli_query($link, $sql);
	$sql = "UPDATE TOP(1) rooms SET avialable='0' WHERE avialable='1'";
	$link->query($sql);
?>


<h3>Reservation Complete</h3>
<p>You will be staying in room <?php echo $roomnum; ?> at <?php echo $_POST["location"]; ?>. We look forward to your stay!
</p><br>


<a href="home.html">Return home</a>

<?php
	CloseCon($link);
?>
</body>
<?php
Function OpenCon(){
	$dbhost = "localhost";
	$dbusername = "root";
	$dbpassword = "";
	$dbname = 'finalproject';
	$conn=new mysqli($dbhost,$dbusername, $dbpassword,$dbname) or die 
	("Connection failed: %s\n". $conn->error);
	return $conn;
}//end of OpenCon() function
Function CloseCon($conn)
{
	$conn->close();
}
?>
</html>