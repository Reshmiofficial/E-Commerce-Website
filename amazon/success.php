<?php 
    include "includes/dbconn.php";
    include "includes/navbar.php";
    $user_id=$_SESSION['user_id'];
    $order_id=$_GET['order_id'];
    $query="SELECT * FROM orders WHERE order_id LIKE '$order_id'";
    $result=mysqli_query($conn,$query);
    $result=mysqli_fetch_assoc($result);
    $total=$result['amount'];

?>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="https://thumbs.dreamstime.com/b/mobile-shopping-app-modern-online-technology-internet-customer-service-icon-order-placed-processing-processed-metaphors-vector-184200609.jpg" style="width:100%;height:auto;" alt="">
        </div>
        <div class="col-md-6 mt-5">
            <h1>Order Placed Successfully</h1>
            <a href="orders.php" class="btn btn-lg btn-warning">View Orders</a>
        </div>
    </div>
</div>