<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT tbl_login_track.login_track_id, tbl_login_track.userid, tbl_login_track.logindt , tbl_user.username from tbl_login_track join tbl_user on tbl_login_track.userid = tbl_user.userid where haslogout = 1";
$result = $conn->query($sql);
$dt = array();
    while($row = $result->fetch_assoc()) 
    {
   		$dt[] = $row;
	}
echo json_encode($dt);
$conn->close();
?>