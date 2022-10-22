<?php
    include "includes/dbconn.php";
    include "includes/navbar.php";
    $user_id=$_SESSION['user_id'];
?>
<div class="container">
    <div class="row">
        <div class="col-md-8 mb-3 mt-3 ml-5">
            <h1 class="mb-5">My Orders</h1>
        
        <?php 
            $query="SELECT * FROM orders WHERE user_id=$user_id";
            $result=mysqli_query($conn,$query);
            while($row=mysqli_fetch_assoc($result)){
                
                $total=$row['amount'];
                $current_order_id=$row['order_id'];
                $query_1="SELECT * FROM order_details o JOIN products p on o.product_id=p.product_id WHERE o.order_id LIKE '$current_order_id'";
                $result_1=mysqli_query($conn,$query_1);
                echo '<div class="card mb-5">
                <div class="card-body">
                <h5>Order ID - '.$row['order_id'].'
                <span style="float:right">Date - '.$row['date'].'</span></h5>
                '
                ;
                
                while($row1=mysqli_fetch_assoc($result_1)){
                    $img=substr(explode(',',$row1['img'])[0],1);
                    echo '
                    <div class="col-md-12">
                    <div class="card mb-2">
                        <div class="row">
                            <div class="col-md-2">
                                <img src='.$img.' alt="" style="width:100%;height:auto;">
                            </div>
                            <div class="col-md-7 p-3">
                                <h4><a href="description.php?product_id='.$row1['product_id'].'" style="text-decoration:none">'.$row1['name'].'</a></h4>
                                <h5>₹ <span>'.$row1['price'].'</span></h5>
                            </div>
                            <div col-md-3>
                                <p class="mt-3"><b>Quantity</b>-'.$row1['quantity'].'</p>
                            </div>
                        </div>
                        </div>
                    </div>';
                }
                echo '<h5 class="mt-3">Amount Paid ₹ '.$row['amount'].'</h5></div></div>';
            }
        ?>
    
</div>