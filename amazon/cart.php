<?php
    include "includes/dbconn.php";
    session_start();
?>
<?php
    $product_id=$_POST['product_id'];
    //echo $product_id;
    $user_id=$_SESSION['user_id'];
    $query="INSERT INTO cart (id,user_id,product_id,quantity) VALUES (NULL,$user_id,$product_id,1)";
    if(mysqli_query($conn,$query)){
        echo "success";
    }else{
        echo "Failed";
    }
?>