<?php 

$conn= new mysqli('localhost','root','','tracking_db')or die("Could not connect to mysql".mysqli_error($con));
?>
<?php
$db_host = 'localhost';
$db_user = "root";
$db_pass = "";
$db_name = "tracking_db";
$con = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if ($con) {
    //echo 'connected';
}
?>