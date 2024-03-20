<?php
    error_reporting(0);
    session_start();
    $conn = mysqli_connect("localhost", "u889643487_livininteriors", "i>TcKQUi8+38", "u889643487_livininteriors");
    date_default_timezone_set("Asia/Kolkata");
    if (!$conn) {
        echo "not connected database";
    }
?>