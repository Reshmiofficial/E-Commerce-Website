<?php
include "includes/dbconn.php";
include "includes/navbar.php";
include "includes/login_form.php";
$user_id = $_SESSION['user_id'];
$query = "SELECT * FROM pictures WHERE user_id=$user_id";
$result = mysqli_query($conn, $query);
$result = mysqli_fetch_assoc($result);
$query1 = "SELECT * FROM user WHERE user_id=$user_id";
$result1 = mysqli_query($conn, $query1);
$result1 = mysqli_fetch_assoc($result1);
$user_name = $result1['name'];
?>
<script>
    $(document).ready(function(){
        
       // alert(new_name)
       var null_value='#####'
        $('#name_change').click(function(){
            
            var new_name=$('#user_name').val()
            $.ajax({
                url:'update_profile.php',
                method:'POST',
                data:{'new_name':new_name,'new_email':null_value,'new_dob':null_value},
                success:function(data){
                    if(data.trim()==='1'){
                        window.location.reload()
                        alert("Name Changed Successfully")
                    }
                    else{
                        alert("Some error occurred")
                    }
                    
                }
                
            })
        })
        $('#email_change').click(function(){
            
            var new_email=$('#user_email').val()
            $.ajax({
                url:'update_profile.php',
                method:'POST',
                data:{'new_name':null_value,'new_email':new_email,'new_dob':null_value},
                success:function(data){
                    if(data.trim()==='1'){
                        
                        window.location.reload()
                        alert("Email Changed Successfully")
                    }
                    else{
                        alert(data)
                    }
                    
                }
            })
        })
        $('#dob_change').click(function(){
            
            var new_dob=$('#user_dob').val()
            $.ajax({
                url:'update_profile.php',
                method:'POST',
                data:{'new_name':null_value,'new_email':null_value,'new_dob':new_dob},
                success:function(data){
                    if(data.trim()==='1'){
                        window.location.reload()
                        alert("Date of Birth Changed Successfully")
                    }
                    else{
                        alert("Some error occurred")
                    }
                    
                }
                
            })
        })
    })
</script>

<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3 mt-5 text-md-center">


            <div class="dropdown" style="display:inline">
                <?php
                if ($result['filename'] == "none") {
                    echo '<i class="fas fa-6x fa-user mb-3" style="font-size:200px;" type="button" data-toggle="dropdown"></i>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <form action="upload_picture.php" method="POST" enctype="multipart/form-data">
                        <h4 class="ml-2">Upload a Profile Picture</h4>
                        <input type="file" name="uploadfile" class="ml-2">
                        <input type="submit" class="btn btn-warning btn-md mt-2 ml-2" value="Upload" name="upload">
                    </form>
                </ul>';
                } else {

                    echo '<img src="img_list/' . $result['filename'] . '" type="button" data-toggle="dropdown" style="height:300px;width:300px;border-radius:100%;">
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <form action="upload_picture.php" method="POST" enctype="multipart/form-data">
                        <h4 class="ml-2">Upload a Profile Picture</h4>
                        <input type="file" name="uploadfile" class="ml-2">
                        <input type="submit" class="btn btn-warning btn-md mt-2 ml-2" value="Upload" name="upload">
                    </form>
                </ul>';
                }
                ?>

            </div>
            <div class="card mt-3">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="orders.php" style="text-decoration:none;">My Orders<a /></li>
                    <li class="list-group-item"><a href="user_wishlist.php" style="text-decoration:none;">My Wishlist<a /></li>
                    <li class="list-group-item"><a href="logout.php" style="text-decoration:none;">Log Out<a /></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 offset-md-3 mt-2 mb-3">
            <div class="row">
                <div class="col-md-1">
                    <lable>Name</lable>
                </div>
                <div class="col-md-9">

                    <input type="text" id="user_name" class="form-control" value="<?php echo $user_name ?>">
                </div>
                <div class="col-md-2">
                    <button class="btn btn-warning btn-md" id="name_change">Change</button>
                </div>
            </div>

        </div>

        <div class="col-md-6 offset-md-3 mt-2 mb-3">
            <div class="row">
                <div class="col-md-1">
                    <lable>EMail</lable>
                </div>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="user_email" value=<?php echo $result1['email'];?>>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-warning btn-md" id="email_change">Change</button>
                </div>
            </div>

        </div>

        <div class="col-md-6 offset-md-3 mt-2 mb-3">
            <div class="row">
                <div class="col-md-3">
                    <lable>Date Of Birth</lable>
                </div>
                <div class="col-md-7">
                    <input type="date" id="user_dob" class="form-control" value=<?php echo $result1['dob'] ?>>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-warning btn-md" id="dob_change">Change</button>
                </div>

            </div>

        </div>



    </div>
    <div class="col-md-6 offset-md-3 mt-2 mb-3">
        <div class="row">
            <div class="col-md-12 mt-2 mb-3">
                <p type="button" id="update_password" style="color:blue">Change Password</p>
            </div>
        </div>
    </div>
</div>