<?php
    session_start();
    
    include "includes/dbconn.php";
    //receive html data
    $email=$_POST['user_email'];
    $password=$_POST['user_password'];
    //search query
    $query="SELECT * FROM user WHERE email LIKE '$email' AND password LIKE '$password'";
    $result=mysqli_query($conn,$query); //runs the query

    $num_row=mysqli_num_rows($result);//number of rows of that data

    $result=mysqli_fetch_assoc($result); //returns an associative array of the results

    //print_r($result);

    //print_r($num_row);
    //compare
    if($num_row==1){
        $_SESSION['name']=$result['name'];
        $_SESSION['user_id']=$result['user_id'];
        $_SESSION['email']=$result['email'];
        header('Location:index.php');
        // echo "Welcome<br>";
        // echo $_SESSION['name'];
    }
    else{
        echo "Incorrect email/password";
    }
?>