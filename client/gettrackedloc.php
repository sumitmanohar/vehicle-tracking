<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vehiclet";

$conn = new mysqli($servername, $username, $password,$dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$uid = $_GET["uid"];



$sql = "";
$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
    // output data of each row
    session_start();
    while($row = $result->fetch_assoc()) 
    {
    	$_SESSION["suid"] = $row["userid"];
    	$_SESSION["suname"] = $row["username"]; 
        echo $row["userid"].":".$row["username"].":";
	}
	$sql1 = "insert into tbl_login_track values(null,".$_SESSION["suid"].",NOW(),null,1)";
	//echo $sql1;
	$result1 = $conn->query($sql1);
	$lastid = $conn->insert_id;
	$_SESSION["suserlog"] = $lastid;
	echo $lastid;
} else 
{
    echo "fail";
}
$conn->close();

?>