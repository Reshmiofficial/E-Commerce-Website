<?php 
  session_start();
  $conn=mysqli_connect("localhost","root","","amazon");
  if(empty($_SESSION)){
    $logged_in=0;
  }
  else{
    $logged_in=1;
  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Amazon</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.js" integrity="sha512-CX7sDOp7UTAq+i1FYIlf9Uo27x4os+kGeoT7rgwvY+4dmjqV0IuE/Bl5hVsjnQPQiTOhAX1O2r2j5bjsFBvv/A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.3/css/all.min.css" integrity="sha512-f2MWjotY+JCWDlE0+QAshlykvZUtIm35A6RHwfYZPdxKgLJpL8B+VVxjpHJwZDsZaWdyHVhlIHoblFYGkmrbhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body>
    <script type="text/javascript">
      $(document).ready(function(){
        $('#register-popup').click(function(){
          $('#login').modal('hide')
          $('#register').modal('show')
        })
        $('#forget_password').click(function(){
          $('#login').modal('hide')
          $('#forget').modal('show');
        })
        $('#update_password').click(function(){
          
          $('#own_forget').modal('show');
        })
        $('#forget_button').click(function(){
          var email=$('#user_email_forget').val()
          var dob=$('#dob_forget').val()
          
          //alert(dob)
          $.ajax({
            url:'password_validation.php',
            method:'POST',
            data:{'email':email,'dob':dob},
            success:function(data){
              if(data.trim()==='-1'){
                $('#success_error_message').html("<p style='color:red'>User does not exist</p>")
              }
              if(data.trim()==='1'){
                //alert("Success !");
                $('#forget').modal('hide');
                $('#change_password').modal('show');
                $('#user_email_forget').val(email);
              }
              if(data.trim()==='0'){
                $('#success_error_message').html("<p style='color:red'>Some information did not match</p>")
              }
            }
          })
        })


        $('#forget_button1').click(function(){
          var email=$('#user_email_forget2').val()
          var dob=$('#dob_forget2').val()
          //alert(email)
          //alert(dob)
          $.ajax({
            url:'password_validation.php',
            method:'POST',
            data:{'email':email,'dob':dob},
            success:function(data){
              if(data.trim()==='-1'){
                $('#success_error_message').html("<p style='color:red'>User does not exist</p>")
              }
              if(data.trim()==='1'){
                //alert("Success !");
                $('#own_forget').modal('hide');
                $('#change_password').modal('show');
                $('#user_email_forget').val(email);
              }
              if(data.trim()==='0'){
                $('#success_error_message2').html("<p style='color:red'>Some information did not match</p>")
              }
            }
          })
        })
      })
    </script>
	<div class="bg-amazon" style="padding-top:10px;">
        
        <div class="row" >
          <a href="index.php" style="text-decoration:none"><div class="col-md-3"><h2 class="text-white ml-5 mr-5" style="margin-top:-5px;display:inline-block;padding-bottom:5px;">Amazon</h2></div></a>
          <div class="col-md-7">
            <form action="search_page.php" method="GET">
            <input type="text" class="form-control ml-5" style="width:82%; display:inline;" placeholder="Search Products" name="search_key">
            <input type="submit"class="btn btn-warning" style="margin-top:-5px" value="Search">
            </form>
          
        </div>
          <div class="col-md-2">

          <?php
          if($logged_in==1){
            echo '
            <div class="dropdown" style="display:inline">
            <i class="fas fa-2x fa-user text-white mr-5 ml-5 type="button" data-toggle="dropdown" aria-expanded="false"></i>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">'.$_SESSION['name'].'</a></li>
            <li><a class="dropdown-item" href="profile.php">Edit Profile</a></li>
            <li><a class="dropdown-item" href="orders.php">My Orders</a></li>
            <li><a class="dropdown-item" href="user_wishlist.php">My Wishlist</a></li>
            <li><a class="dropdown-item" href="logout.php">Log Out</a></li>
            </ul>
            </div>
            ';

            echo '<a href="user_cart.php"><i class="fas fa-2x fa-shopping-cart text-white"></i></a>';
            // echo "<h3 class='text-white'>Hi ". $_SESSION['name']."</h3>";
            // echo '<a class="btn btn-warning" href="logout.php">Log Out</a>';
          }
          else{
            echo '<button class="btn btn-warning ml-5" data-toggle="modal" data-target="#login" style="float:right">LogIn</button>';
          }
        ?>

          </div>
        </div>
        </div>
        
