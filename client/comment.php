<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$comment=$_GET["comment"];
$fuel=$_GET["fuel"];
$cost=$_GET["cost"];
$trackid=$_GET["trackid"];

$sql = "insert into tbl_comment values(null,'". $comment ."',".$fuel.",".$cost.",".$trackid.")";
$result = $conn->query($sql);
$conn->close();
?>