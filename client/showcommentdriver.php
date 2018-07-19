<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * from tbl_comment where login_track_id=".$_GET["trackid"];
$result = $conn->query($sql);
$dt = array();
    while($row = $result->fetch_assoc()) 
    {
   		$dt[] = $row;
	}
echo json_encode($dt);
$conn->close();
?>