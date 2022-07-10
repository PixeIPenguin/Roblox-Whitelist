<?php
$password = ""; # Database Password
$user = ""; # Database Username
$databaseName = ""; # Database Name
try{
	$database = new PDO('mysql:host=localhost;dbname=' . $databaseName, $user, $password); # Tries to connect to the database using our following variables and a local host
}catch(Exception $e){
	echo "Error connecting to db: " . $e->getMessage(); # Echos a error if there are any
}
?>