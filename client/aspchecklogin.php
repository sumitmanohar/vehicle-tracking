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

$sql = "SELECT * FROM adminlogin where username='".$un."' and password='".$pa."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
    
    while($row = $result->fetch_assoc()) 
    {
        echo "pass:".$row["id"].":".$row["username"];
	}
} 
else 
{
    echo "fail:";
}
$conn->close();

?>