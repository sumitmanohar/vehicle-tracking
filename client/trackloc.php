<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$la = $_GET["latt"];
$lo = $_GET["long"];
$uid = $_GET["uid"];
$trackerid = $_GET["trackid"];


$sql = "insert into tbl_tracker values(null,".$uid.",'".$lo."','".$la."',NOW(),".$trackerid.")";
$result = $conn->query($sql);
$conn->close();
?>