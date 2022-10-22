<?php 
    include "includes/dbconn.php";
    session_start();
?>
<?php 
    $amount=$_POST['amount'];
    $order_id=uniqid();
    $user_id=$_SESSION['user_id'];
    $date=date('y-m-d');
    $query="INSERT INTO orders (order_id,user_id,amount,date,address,status,payment_method) VALUES ('$order_id',$user_id,$amount,
    '$date',0,'pending','None')";
    if(mysqli_query($conn,$query)){
        $query2="SELECT * FROM cart WHERE user_id=$user_id";
        $result=mysqli_query($conn,$query2);
        while($row=mysqli_fetch_assoc($result)){
            $product_id=$row['product_id'];
            $quantity=$row['quantity'];
            $query3="INSERT INTO order_details(id,order_id,product_id,quantity)VALUES(NULL,
            '$order_id',$product_id,$quantity)";
            mysqli_query($conn,$query3);
        }
        //header('Location:show_address.php');
        echo $order_id;
    }

?>