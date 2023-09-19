<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db = "";
	$conn = new mysqli($host, $user, $pass, $db, 3306) or die("not 
	connected");
	if($conn->connect_error){
		echo "Seems like you have not configured the database. Failed To Connect to database:" . $conn->connect_error;
	}
?>