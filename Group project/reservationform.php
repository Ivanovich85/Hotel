<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>



<h1>Hotel Room Reservation Form</h1>

<p>Please choose a location then enter your information below to reserve your hotel room.</p>

<form action="/formsubmission.php" method="POST">
  Location:<br>
  <select name="location">
    <option value="none" selected disabled hidden>Select an option</option> 
    <option value="The Lodge at Torrey Pines in La Jolla, CA">The Lodge at Torrey Pines (La Jolla, CA)</option>
    <option value="The Boxhouse Hotel in Brooklyn, NY">The Boxhouse Hotel (Brooklyn, NY)</option>
    <option value="Chateau on the Lake in Branson, MO">Chateau on the Lake (Branson, MO)</option>
  </select><br><br>
  First name:<br>
  <input type="text" name="firstname" id="firstname"><br><br>
  Last name:<br>
  <input type="text" name="lastname" id="lastname"><br><br>
  Driver's License Number:<br>
  <input type="text" name="dlnum" id="dlnum"><br><br>
  <input type="submit"><br><br>
</form>

<a href="home.html">Return home</a>

<?php
	$link = OpenCon();
	$formsubmit = $link->prepare("INSERT INTO client (firstname, lastname, dlnum) VALUES (?, ?, ?)");
	if (!$formsubmit) {
    }
    else {
        $formsubmit->bind_param("sss", $firstname, $lastname, $dlnum);
        $formsubmit->execute();
    }
?>

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