<?php 
    include "includes/dbconn.php";
    session_start();
    $user_id=$_SESSION['user_id'];
    $address_id=$_GET['address_id'];
    $order_id=$_GET['order_id'];
?>
<?php
    $query="UPDATE orders SET address=$address_id WHERE user_id=$user_id AND order_id='$order_id'";
    if(mysqli_query($conn,$query)){
        header('Location:show_payment_option.php?order_id='.$order_id);
    }else{
        echo "Some error occurred";
    }
?>