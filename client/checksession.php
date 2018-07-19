<?php
session_start();
if(isset($_SESSION["suid"]))
{
	echo $_SESSION["suid"].":".$_SESSION["suname"].":".$_SESSION["suserlog"];
}
else
{
	echo "no";
}
?>