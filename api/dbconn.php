<?php
error_reporting(E_ALL);

$host = "localhost"; //www.address.com
$user = "root"; //username
$pass = ""; //pw
$db = "jquery_chat"; //database name

//make database connection
$mysqli = new mysqli("localhost", "root", "", "jquery_chat");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

?>