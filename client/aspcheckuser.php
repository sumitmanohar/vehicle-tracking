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


$sql = "SELECT * FROM tbl_user where username='".$un."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
    while($row = $result->fetch_assoc()) 
    {
        echo "pass:";
	}
} 
else 
{
    echo "fail:";
}
$conn->close();

?>