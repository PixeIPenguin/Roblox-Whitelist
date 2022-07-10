<?php
include_once "db.php"; # Grabs A Database Connection
$userId = $_GET["userId"]; # All The GETS Grab Information From The Website Via Link (Or Posting)
$license = $_GET["license"];

$stmt = $database->prepare("SELECT * FROM users WHERE userID=?"); # Prepares A Statement
$stmt->execute([$userId]);  # Executes A SQL Query
$user = $stmt->fetch();

header('Content-Type: application/json; charset=utf-8');
if ($user["userID"] == $userId) { # Checks User ID Comparasions
    $resarray = array(
    "whitelised" => "true",
    "discordName" => $user["discordName"],
    );
    $json = json_encode($resarray);
    echo $json; # Returns True With The Discord Name
}
else {
    $resarray = array(
        "whitelised" => "false",
    );
$json = json_encode($resarray);
echo $json; # Returns False
}
$database = null;