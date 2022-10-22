<?php
    include "includes/dbconn.php";
    session_start();
?>
<?php 
    $user_input=$_POST['user_input'];
    //echo $user_input;
    $query="SELECT * FROM coupon WHERE coupon_name LIKE '$user_input'";
    $result=mysqli_query($conn,$query);
    $num_rows=mysqli_num_rows($result);
    if($num_rows==0){
        echo "invalid";
    }else{
        $result=mysqli_fetch_assoc($result);
        if($result['coupon_status']=="Active"){
            echo $result['coupon_value'];
        }else{
            echo "expired";
        }
    }
?>