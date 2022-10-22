<?php 
    include "includes/dbconn.php";
    session_start();
    $user_id=$_SESSION['user_id'];
    $new_name=$_POST['new_name'];
    $new_email=$_POST['new_email'];
    $new_dob=$_POST['new_dob'];
     if($new_name!='#####'){
        $query="UPDATE user SET name='$new_name' WHERE user_id=$user_id";
        if(mysqli_query($conn,$query)){
            $_SESSION['name']=$new_name;
            echo 1;
        }
        else{
            echo 0;
        }
     }
     if($new_email!='#####'){
        $query="UPDATE user SET email='$new_email' WHERE user_id=$user_id";
        if(mysqli_query($conn,$query)){
            $_SESSION['email']=$new_email;
            echo 1;
        }
        else{
            echo $new_email;
        }
     }
     if($new_dob!='#####'){
        $query="UPDATE user SET dob='$new_dob' WHERE user_id=$user_id";
        if(mysqli_query($conn,$query)){
            echo 1;
        }
        else{
            echo 0;
        }
     }
    //echo $new_name;
    // if(isset($_POST['name_change'])){
    //     echo 1;
    // }
    // else{
    //     echo 0;
    // }
?>