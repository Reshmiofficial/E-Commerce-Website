<?php 
    include "includes/dbconn.php";
    include "includes/navbar.php";
    $text=$_GET['search_key'];
?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="mt-5">Search Results for <?php echo "'$text'" ?></h2>
        </div>
        <?php 
        $query="SELECT * FROM products WHERE name LIKE '%$text%'";
        $result=mysqli_query($conn,$query);
        $counter=0;
        while($row=mysqli_fetch_assoc($result)){
            $img=substr(explode(',',$row['img'])[0],1);
            echo '<div class="col-md-3">
            <div class="card h-100">
            <div class="card-body">
            <img src='.$img.' class="card-img-top" style="height:auto;width:180px;">
            <h4>'.$row['name'].'</h4>
            <p>Rs '.$row['price'].'</p>
            
            </div>
            <a href="description.php?product_id='.$row['product_id'].'" class="btn btn-warning btn-lg">View</a>
            </div>
            </div>';
            $counter++;
        }
        if($counter==0){
            echo '<h4 class="mt-5">No Such Product Found !</h4>';
        }
        
        
        ?>
        
    </div>
</div>