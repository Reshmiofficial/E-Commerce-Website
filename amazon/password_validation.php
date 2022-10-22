<?php 
    include "includes/dbconn.php";
    $email=$_POST['email'];
    $dob=$_POST['dob'];
    $query="SELECT * FROM user WHERE email LIKE '$email'";
    $result=mysqli_query($conn,$query);
    if(mysqli_num_rows($result)==0){
        echo -1;
    }else{
        $result=mysqli_fetch_assoc($result);
        if($result['dob']==$dob){
            echo 1;
        }
        else{
            echo 0;
        }
    }
    
?>