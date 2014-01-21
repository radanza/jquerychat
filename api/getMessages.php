<?php

include 'dbconn.php';
//grab all messages from database
if ($result = $mysqli->query("SELECT * FROM messages")) {
    while ($row = $result->fetch_row()) {
        echo $row['1'] .': '. $row['2'] ."\n";
    }
    $result->close();
}

?>