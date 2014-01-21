<?php
error_reporting(E_ALL);
include 'dbconn.php';

//get post vars
$username = $_POST['username'];
$message = $_POST['message'];
$date = time();

//insert the message
if (!$mysqli->query("INSERT INTO messages(username, message, dateAdded) VALUES ('$username', '$message', '$date')")) {
    echo "Multi-INSERT failed: (" . $mysqli->errno . ") " . $mysqli->error;
}
echo $username. ': ' .$message;

?>