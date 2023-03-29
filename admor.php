<?php
include_once("db_connect.php");



// Get expense categories from database
$sql = "SELECT city FROM city";
$result = $conn->query($sql);

$categories = array();

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $categories[] = $row["city"];
  }
}

// Add new fields when "Add more" button is clicked
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $counter = $_POST["counter"];
  $id = "dynamic-fields-" . $counter;

  $newFields = '<div id="' . $id . '"><div class="form-group py-2"><label for="city">Expense category</label><select class="form-select" id="city" name="category' . $counter . '"><option value="">Select category</option>';

  foreach ($categories as $category) {
    $newFields .= '<option value="' . $category . '">' . $category . '</option>';
  }

  $newFields .= '</select></div><div class="form-group py-2"><label for="sum">Sum</label><input type="text" class="form-control" id="sum" name="sum' . $counter . '" placeholder="Enter sum"></div><button type="button" class="btn btn-danger" onclick="removeFields(\'' . $id . '\')">Remove</button></div>';

  echo $newFields;
  exit();
}

$conn->close();
?>

<script>
    var counter=1;
function addMore() {
  // Increment the counter
  counter++;

  // Make AJAX call to fetch expense categories from database
  $.ajax({
    type: "POST",
    url: "get_categories.php",
    data: {counter: counter},
    success: function(newFields) {
      // Add the new fields to the dynamic-fields div
      $('#dynamic-fields').append(newFields);
    }
  });
}
<script>