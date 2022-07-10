<?php
include_once "db.php"; # Grabs a database connection
$userId = $_GET["userId"]; # All The GETS Are To Collect Information Sent Via Link
$discordName = $_GET["discordName"];
$discordID = $_GET["discordID"];

$statement = $database->prepare("INSERT INTO users(userID, discordName, discordID) VALUES (?,?,?);"); # Prepares A Statement
$result = $statement->execute([$userId, $discordName, $discordID]); # Executes A Query

header('Content-Type: application/json; charset=utf-8');
if ($result === true) { # Checks The Query Result
    $resarray = array(
        "success" => "true",
    );
    $json = json_encode($resarray);
    echo $json; # Returns True
} else {
    $resarray = array(
        "whitelised" => "false",
    );
    $json = json_encode($resarray);
    echo $json; # Returns False
}
?>