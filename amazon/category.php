<?php 

    include "includes/navbar.php";
    include "includes/dbconn.php";
    $category=$_GET['category'];

?>

 <div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3 class="mb-3 mt-3">All Products in <?php echo $category?></h3>
        </div>
        <?php 
        $query="SELECT * FROM products WHERE category LIKE '$category'";
        $result=mysqli_query($conn,$query);
       // $result=mysqli_fetch_assoc($result);
        while($row=mysqli_fetch_assoc($result)){
            $img=substr(explode(',',$row['img'])[0],1);
            echo '
            
            <div class="col-md-3">
            <div class="card h-100">
            <div class="card-body">
            <img src='.$img.' class="card-img-top" style="height:auto;width:180px;">
            <h4>'.$row['name'].'</h4>
            <p>Rs '.$row['price'].'</p>
            
            </div>
            <a href="description.php?product_id='.$row['product_id'].'" class="btn btn-warning btn-lg">View</a>
            </div>
            </div>';
          }
        ?>
    </div>
 </div>