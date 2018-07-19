<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$un = $_GET["uname"];
$pa = $_GET["upass"];
$de = $_GET["udetail"];

$sql = "insert into tbl_user values(null,'". $un ."','". $pa ."','". $de ."')";
$result = $conn->query($sql);
$conn->close();
?>