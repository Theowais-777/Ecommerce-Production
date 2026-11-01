
	<?php

include("../db.php");

if(isset($_POST['btn_save']))
{
$order_id=$_POST['order_id'];
$user_id=$_POST['user_id'];
$product_id=$_POST['product_id'];
$qty=$_POST['qty'];
$trnx_id=$_POST['trnx_id'];
$p_status=$_POST['p_status'];


mysqli_query($con,"insert into orders(order_id, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) values 
('$order_id','$user_id','$product_id','$qty','$trnx_id','$p_status')") 
			or die ("Query 1 is in correct........");
header("location: orders.php"); 
mysqli_close($con);
}
?>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Panel</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/css/bootstrap.min.css" rel="stylesheet">
<link href="style/css/k.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">  
#btn_save{font-size:18px;border-radius:45px;width:150px;height:70px;}
#btn_save:hover{font-size:18px;color:blue;background-color:Black;border-radius:45px 0px 45 opx;width:200px;height:70px;transition:linear 2s;}
 </style>
</head>
<body>
<?php include("include/header.php"); ?>

<div class="container-fluid">
<?php include("include/side_bar.php"); ?>

  <div class="col-sm-9 " align="center">	
  <div class="panel-heading" style="background-color:rgb(136, 35, 63);">
	<h1>Add User  </h1></div><br>
	
<form  action="ship.php" name="form" method="post">
<div class="col-sm-6">
    <input name="order_id" class="input-lg" type="text"  id="order_id" style="font-size:18px; width:330px" placeholder="order number" autofocus required><br><br>
</div>
<div class="col-sm-6">
<input name="user_id" class="input-lg" type="text"  id="user_id" style="font-size:18px; width:330px" placeholder="Enter user id" autofocus required><br><br>
    </div>
    <div class="col-sm-6">
    <input name="product_id" class="input-lg" type="text"  id="product_id" style="font-size:18px; width:330px" placeholder="enter product id" autofocus required><br><br>
    </div>
    <div class="col-sm-6">
<input name="qty" class="input-lg" type="text"  id="qty" style="font-size:18px; width:330px"  placeholder=" quantity number" required><br><br>
    </div>
     <div class="col-sm-6">
    <input name="trnx_id" class="input-lg" type="text"  id="trnx_id" style="font-size:18px; width:330px" placeholder="trans id" autofocus required><br><br>
    </div>
     <div class="col-sm-6">
    <input name="p_status" class="input-lg" type="text"  id="p_status" style="font-size:18px; width:330px" placeholder="Status" autofocus required><br><br>
    </div>
     
<div class="col-sm-7" style="margin:20px;margin-left:90px;">
    <button type="submit" class="btn btn-success btn-block center" name="btn_save" id="btn_save" >Submit</button></div>
</form>
</div></div>
<?php include("include/js.php"); ?>
</body>
</html>
	
	
	
	
	