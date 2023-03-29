<?php include('db_connect.php');?>
<!DOCTYPE html>
<html>
<head>
	<title>Button</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f1f1f1;
		}
		h1 {
			text-align: center;
			color: #333;
		}
		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 50px;
		}
		button {
			padding: 10px 20px;
			margin-bottom: 10px;
			border: none;
			border-radius: 4px;
			background-color: #4CAF50;
			color: #fff;
			font-size: 16px;
			cursor: pointer;
		}
		button:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<h1>Choose type Dept</h1>
	<form method="post" action="drop.php">
		<button type="submit" name="button1">Academics</button>
	</form>
	<form method="post" action="">
		<button type="submit" name="button2">Non-Academics</button></form>
		<form method="post" action="">
		<button type="submit" name="button3">Event Organizing</button></form>
	</form>
<!-- database -->
<?php 


if(isset($_POST['button1'])) {
    $dept = 'Academics';
} elseif(isset($_POST['button2'])) {
    $dept = 'Non-Academics';
} elseif(isset($_POST['button3'])) {
    $dept = 'Event Organizing';
}
error_reporting(0);
$sql = "INSERT INTO departments VALUES ('$dept')";
if(mysqli_query($conn, $sql)) {
    
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>

	
</form>
</body>
</html>