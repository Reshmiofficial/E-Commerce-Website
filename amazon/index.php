
  <?php
  
    include "includes/navbar.php";
    include "includes/login_form.php";
  ?>

    <div class="jumbotron">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" >
    <div class="carousel-item active">
      <img class="d-block w-100" src="http://media.corporate-ir.net/media_files/IROL/17/176060/Oct18/Amazon%20logo.PNG" alt="First slide" style="height: 450px;" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://images.indianexpress.com/2021/09/Amazon_Festival_2021.jpg" alt="Second slide" style="height: 450px;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://pdbimg.choice.com.au/amazon-prime-video-store_2.jpg" alt="Third slide" style="height: 450px;">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h3 class="mb-3">Top Clothing Products</h3>
      </div>
      <?php 

        $query_clothing="SELECT * FROM products WHERE category LIKE 'clothing' LIMIT 8";
        $result_clothing=mysqli_query($conn,$query_clothing);
        while($row=mysqli_fetch_assoc($result_clothing)){
          $img=substr(explode(',',$row['img'])[0],1);
          echo '<div class="col-md-3">
          <div class="card h-100">
          <div class="card-body">
          <img src='.$img.' class="card-img-top" style="height:auto;width:180px">
          <h4>'.$row['name'].'</h4>
          <p>Rs '.$row['price'].'</p>
          </div>
          <a href="description.php?product_id='.$row['product_id'].'" class="btn btn-warning btn-lg">View</a>
          </div>
          </div>';
        }
        
      ?>
    </div>

    <div class="row mt-5 mb-5">
      <div class="col-md-12">
        <h3 class="mb-3">Top Furniture Products</h3>
      </div>
      <?php 
         $query_furniture="SELECT * FROM products WHERE category LIKE 'furniture' LIMIT 8";
         $result_furniture=mysqli_query($conn,$query_furniture);
         while($row=mysqli_fetch_assoc($result_furniture)){
           $img=substr(explode(',',$row['img'])[0],1);
           echo '
           <div class="col-md-3">
           <div class="card h-100">
           <div class="card-body">
           <img src='.$img.' class="card-img-top" style="height:auto;width:180px">
           <h4>'.$row['name'].'</h4>
           <p>Rs '.$row['price'].'</p>
           </div>
           <a href="description.php?product_id='.$row['product_id'].'" class="btn btn-warning btn-lg">View</a>
           </div>
           </div>';
         }

      ?>
    </div>

    <div class="row">
      <div class="col-md-12">
        <h3 class="mb-3">Top Footwear Products</h3>
      </div>
      <?php 
      $query_footwear="SELECT * FROM products WHERE category LIKE 'footwear' LIMIT 8";
        $result_footwear=mysqli_query($conn,$query_footwear);
        while($row=mysqli_fetch_assoc($result_footwear)){
          $img=substr(explode(',',$row['img'])[0],1);
          echo '<div class="col-md-3">
          <div class="card h-100">
          
          <div class="card-body">
          <img src='.$img.' class="card-img-top" style="height:auto;width:180px">
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
</body>
</html>