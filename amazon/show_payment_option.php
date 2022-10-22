<?php
    include "includes/navbar.php";
    include "includes/dbconn.php";
    $user_id=$_SESSION['user_id'];
    $order_id=$_GET['order_id'];
    $query="SELECT * FROM orders WHERE order_id LIKE '$order_id'";
    $result=mysqli_query($conn,$query);
    $result=mysqli_fetch_assoc($result);
    $total=$result['amount'];
?>

<div class="container">
    <div class="row mt-5">
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12 mt-3">
                    <h4>Select Payment Mode</h4>
                </div>
                <div class="col-md-12 mt-3">
                    <form action="complete_order.php" method='POST'>
                    <div class="card">
                        <div class="card-body">
                            <input type="radio" name="x" value="credit card">Credit Card
                        </div>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-body">
                            <input type="radio" name="x" value="debit card">Debit Card
                        </div>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-body">
                            <input type="radio" name="x" value="upi">UPI
                        </div>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-body">
                            <input type="radio" name="x" value="net banking">Net Banking
                        </div>
                    </div>
                    <br>
                    <input type="hidden" name="order_id" value=<?php echo $order_id ?>>
                    <input type="submit" class="btn btn-lg btn-warning" value="Pay Now" id="palce_order">
                    </form>
                </div> 
            </div>
        </div>
        <div class="col-md-4 mt-5">
            <h4>Order Details</h4>
            <h5>Total Amount (Including Tax )</h5>
            <h3>RS <span><?php echo $total ?></span></h3>
        </div>
    </div>
</div>