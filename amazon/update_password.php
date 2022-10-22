<?php 
    include "includes/dbconn.php";
    
    $email=$_POST['email'];
    $password=$_POST['user_password'];
    $query="UPDATE user set password=$password WHERE email='$email'";
    if(mysqli_query($conn,$query)){
        echo 1;
    }
    else{
        echo "Some error occurred";
    }
?>