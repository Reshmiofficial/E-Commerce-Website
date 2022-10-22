<?php
    include "includes/dbconn.php";
    session_start();
?>
<?php
    $product_id=$_POST['product_id'];
    //echo $product_id;
    $user_id=$_SESSION['user_id'];
    $query="INSERT INTO wishlist (id,user_id,product_id) VALUES (NULL,$user_id,$product_id)";
    if(mysqli_query($conn,$query)){
        echo "success";
    }else{
        echo "Failed";
    }
?>