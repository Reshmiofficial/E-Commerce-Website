<?php
    include "includes/dbconn.php";
    session_start();
    $order_id=$_POST['order_id'];
    $payment_method=$_POST['x'];
    $user_id=$_SESSION['user_id'];
    $query="UPDATE orders SET status=1,payment_method='$payment_method' WHERE order_id LIKE '$order_id'";
    if(mysqli_query($conn,$query)){
        $query1="DELETE FROM cart WHERE user_id=$user_id";
        if(mysqli_query($conn,$query1)){
            header('Location:success.php?order_id='.$order_id);
        }else{
            echo "Couldn't clear the cart";
        }
        header('Location:success.php?order_id='.$order_id);
    }else{
        header('Location:show_payment_option.php?order_id='.$order_id);
    }
?>
