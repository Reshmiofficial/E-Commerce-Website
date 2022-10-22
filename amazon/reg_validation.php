<?php 

include "includes/dbconn.php";
$name=$_POST['user_name'];
$email=$_POST['user_email'];
$password=$_POST['user_password'];
$dob=$_POST['dob'];
$query3="SELECT * FROM user WHERE email LIKE '$email'";
$result3=mysqli_query($conn,$query3);
$num_rows=mysqli_num_rows($result3);
if($num_rows==0){
    
    $query="INSERT INTO user (user_id,name,email,password,dob) VALUES (NULL,'$name','$email','$password','$dob')";
    if(mysqli_query($conn,$query)){
        $query2="SELECT * FROM user WHERE email Like '$email'";
        $result=mysqli_query($conn,$query2);
        $result=mysqli_fetch_assoc($result);
        $_SESSION['user_id']=$result['user_id'];
        $_SESSION['name']=$result['name'];
        $user_id=$result['user_id'];
        $query1="INSERT INTO pictures (id,user_id,filename) VALUES (NULL,$user_id,'none')";
        mysqli_query($conn,$query1);
        echo 1;
        
    }
    else{
        echo 0;
    }
}
else{
    echo 2;
}

?>