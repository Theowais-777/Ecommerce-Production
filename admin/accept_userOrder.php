<?php
include("../db.php");
$pId=$_GET['product_id'];
//////fetch pro id  to get action executed/////////
$result=mysqli_query($con,"UPDATE `products` SET `product_status`='active' WHERE product_id='$pId'");
echo "<script> location.href='userorder.php'; </script>";

?>