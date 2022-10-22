<?php

    include "includes/navbar.php";
    include "includes/dbconn.php";

?>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <h2 class="mt-5">My Wishlist</h2>
        </div>
        <?php
        $user_id=$_SESSION['user_id'];
        $query="SELECT * FROM wishlist w JOIN products p ON w.product_id=p.product_id WHERE w.user_id=$user_id";
        $result=mysqli_query($conn,$query);
        while($row=mysqli_fetch_assoc($result)){
            $img=substr(explode(',',$row['img'])[0],1);
            echo '
            <div class="col-md-4 mt-5" id="wish_card">
            <div class="card">
                <img src='.$img.' alt="" >
                <div class="card_body">
                <h4>'.$row['name'].'</h4>
                <p>Rs '.$row['price'].'</p>
                <a href="description.php?product_id='.$row['product_id'].'" class="btn btn-warning">View</a>
                <a href="remove_wishlist.php?product_id='.$row['product_id'].'." class="btn btn-danger" style="float:right" id="remove">Remove</a>
                </div>
            </div>
        </div>';
        }
         ?>
        
    </div>
</div>