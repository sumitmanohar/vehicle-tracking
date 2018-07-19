<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "update tbl_login_track set  logoutdt=NOW() , haslogout=0 where login_track_id=".$_GET["trackid"];
$result = $conn->query($sql);
$conn->close();
session_start();
session_unset(); 
session_destroy(); 
?>