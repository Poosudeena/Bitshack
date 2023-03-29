
<?php include('db_connect.php');?>
<label for="options">Financial Requirements</label><br><br>

<form method="post" action="">
    
    <input type="radio" name="option" id="yes" value="yes">
    <label for="yes">Yes</label>
 
    <input type="radio" name="option" id="no" value="no">
    <label for="no">No</label>
    <input type="submit" name="submit" value="Submit">
</form><br>

<?php


// if form submitted
if (isset($_POST['submit'])) {
    // get selected option
    $option = $_POST['option'];

    // insert into database
    $sql = "INSERT INTO options (option) VALUES ('$option')";
    if (mysqli_query($conn, $sql)) {
        echo "Option inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

// close database connection
mysqli_close($conn);
?>