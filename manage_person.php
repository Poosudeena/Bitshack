<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
$qry = $conn->query("SELECT * FROM persons where id= ".$_GET['id']);
foreach($qry->fetch_array() as $k => $val){
	$$k=$val;
}
}
?>
<html>
<head>
	<!-- Other code here -->
	<link rel="stylesheet" href="style.css">
</head></html>
<div class="container-fluid">
	<form action="" id="manage-person">
		<input type="hidden" name="id" value="<?php echo isset($id) ? $id :'' ?>">
		<div class="row form-group">
			<div class="col-md-4">
				<label for="" class="control-label">Name</label>
				<input type="text" class="form-control" name="firstname"  value="<?php echo isset($firstname) ? $firstname :'' ?>" required>
			</div>
			<!-- <div class="col-md-4">
				<label for="" class="control-label">Last Name</label>
				<input type="text" class="form-control" name="lastname"  value="<?php echo isset($lastname) ? $lastname :'' ?>" required>
			</div> -->
			<div class="col-md-4">
				<label for="" class="control-label">HOD</label>
<select name="hod_name">
  <option value="">Select</option>
  <option value="SUNDAR S">SUNDAR S</option>
  <option value="PREMALATHA K">PREMALATHA K</option>
  <option value="PRIYA L">PRIYA L</option>
  <option value="KARTHIGHA R">KARTHIGHA R</option>
  <?php

if(isset($_POST['formSubmit']) )
{
  $hod_name = $_POST['hod_name'];
  $errorMessage = "";
}
?>

</select>
</p>
<div class="col-md-4">
				<label for="" class="control-label">M Team</label>
<select name="m_team">
  <option value="">Select</option>
  <option value="M Team 1">M Team 1</option>
  <option value="M Team 2">M Team 2</option>
  <option value="M Team 3">M Team 3</option>
  <option value="M Team 4">M Team 4</option>
  <option value="M Team 5">M Team 5</option>
  <?php

if(isset($_POST['formSubmit']) )
{
  $hod_name = $_POST['m_team'];
  $errorMessage = "";
}
?>

</select>
				<!-- <input type="text" class="form-control" name="hod_name"  value="<?php echo isset($hod_name) ? $hod_name :'' ?>" required> -->
			</div>
		</div>
		<hr>
			
			<?php include('checkbox.php');?><br>
				<!-- <div class="col-md-4">
					<label for="" class="control-label">Special Lab</label>
					<textarea name="street" id="street" class="form-control" cols="30" rows="2" required="">
						
				</div> -->
					<div class="col-md-4">
						<label for="" class="control-label">AdvancedAmount</label>
						<textarea name="AdvancedAmount" id="AdvancedAmount" class="form-control" cols="30" rows="2" required=""><?php echo isset($AdvancedAmount) ? $AdvancedAmount :'' ?></textarea>
					</div>
				<div class="col-md-4">
					<label for="" class="control-label">Context</label>
					<textarea name="Context" id="Context" class="form-control" cols="30" rows="2" required=""><?php echo isset($Context) ? $Context :'' ?></textarea>
				</div>
				
		<hr>
		<p>UPLOAD APEX<p>
<?php
include('uploads.php');
?>
	 <input type="submit" value="Submit">
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
	$('#manage-person').submit(function(e){
		e.preventDefault()
		// start_load()
		$('#msg').html('')
		$.ajax({
			url:'ajax.php?action=save_person',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp==1){
					alert("Data successfully saved",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
				else if(resp==2){
					$('#msg').html("<div class='alert alert-danger'>Name already exist.</div>")
					end_load()

				}
			}
		})
	})

 

</script>