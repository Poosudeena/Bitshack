<?php include('db_connect.php');?>
<?php

if (!empty($_POST["id"])) {
    $id = $_POST['id'];
    $query = "select * from academicdep where country_id=$id";
    $result = mysqli_query($con, $query);
    if ($result->num_rows > 0) {
        echo '<option value="">Select Department</option>';
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<option value="' . $row['id'] . '">' . $row['academicdep'] . '</option>';
        }
    }

} 

   elseif (!empty($_POST["id"])) {
    $id = $_POST['id'];
    $query1 = "select * from state where academicdepid=$id";
    $result1 = mysqli_query($con, $query1);
    if ($result1->num_rows > 0) {
        echo '<option value="">Select Request</option>';
        while ($row = mysqli_fetch_assoc($result1)) {
            echo '<option value="' . $row['id'] . '">' . $row['state'] . '</option>';
        }
    }
}
   elseif (!empty($_POST['sid'])) {
    $id = $_POST['sid'];
    $query2 = "select * from city where state_id=$id";
    $result2 = mysqli_query($con, $query2);
    if ($result2->num_rows > 0) {
        echo '<option value="">Select Catagory</option>';
        while ($row = mysqli_fetch_assoc($result2)) {
            echo '<option value="' . $row['id'] . '">' . $row['city'] . '</option>';
        }
    }
}
?>