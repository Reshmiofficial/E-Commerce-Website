<?php 
    session_start();
    $product_id=$_GET['product_id'];
    include "includes/dbconn.php";
    $user_id=$_SESSION['user_id'];
    $query="DELETE FROM cart WHERE product_id=$product_id AND user_id=$user_id";
    mysqli_query($conn,$query);
    header('Location:user_cart.php');
?>
