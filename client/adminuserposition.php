<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$trackid = $_GET["trackid"];

$sql = "select longi, latti, datet from tbl_tracker where trackid = (SELECT max(trackid) FROM tbl_tracker where loginid=".$trackid.")";
$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
    while($row = $result->fetch_assoc()) 
    {
        echo $row["longi"]."|".$row["latti"]."|".$row["datet"];
	}
}
$conn->close();

?>