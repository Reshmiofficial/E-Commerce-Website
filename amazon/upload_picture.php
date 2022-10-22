<?php 
    include "includes/dbconn.php";
    session_start();
    $user_id=$_SESSION['user_id'];
    //print_r($_FILES);
    if(isset($_POST['upload'])){
        $filename=$_FILES["uploadfile"]["name"];
        $tempname=$_FILES["uploadfile"]["tmp_name"];
        $folder="./img_list/".$filename;
        $query="UPDATE pictures SET filename='$filename' WHERE user_id=$user_id";
        mysqli_query($conn,$query);
        if (move_uploaded_file($tempname, $folder)) {
            //echo "<h3>  Image uploaded successfully!</h3>";
            header('Location:profile.php');
        }else {
            echo "<h3>  Failed to upload image!</h3>";
            //header('Location:index.php');
        }
    }
?>