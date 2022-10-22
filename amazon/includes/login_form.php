

<script>
  $(document).ready(function(){
    $('#submit_pass').click(function(){
      var email=$('#user_email_forget').val()
      var password=$('#user_password_forget').val()
      
      $.ajax({
        url:'update_password.php',
        data:{'email':email,'user_password':password},
        method:'POST',
        success:function(data){
          if(data.trim()==='1'){
            $('#success_error_message1').html("<p style='color:green'>Password changed successfully!</p>")
          }
        }
      })
    })
    $('#reg-btn').click(function(){
      var reg_name=$('#reg_name').val()
      var reg_password=$('#reg_password').val()
      var reg_dob=$('#reg_dob').val()
      var reg_email=$('#reg_email').val()
      $.ajax({
        url:'reg_validation.php',
        data:{'user_name':reg_name,'user_email':reg_email,'user_password':reg_password,'dob':reg_dob},
        method:'POST',
        success:function(data){
          if(data.trim()==='1'){
            alert('Registration Successfull !')
          }
          else if(data.trim()==='0'){
            alert('Some error occurred')
          }
          else if(data.trim()==='2'){
            alert('E-mail already exists')
          }
        }
      })
    })
  })
</script>
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">LogIn Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="login_validation.php" method="post">
            <label>Email</label><br>
            <input type="email" name="user_email" class="form-control"><br>
            <label>Password</label><br>
            <input type="password" name="user_password" class="form-control"><br>
            <input type="submit" value="submit" class="btn btn-warning">
        </form>
        <p class="mt-3">Not a member ? <a href="#" id="register-popup" style="text-decoration:none">Sign Up</a></p>
        <a href="#" id="forget_password" style="text-decoration:none">Forget Password ?</a>
      </div>
      
    </div>
  </div>
</div>
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign Up Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
            <label>Name</label><br>
            <input type="text" id="reg_name" class="form-control"><br>
            <label>Email</label><br>
            <input type="email" id="reg_email" class="form-control"><br>
            <label>Date of Birth</label><br>
            <input type="date" class="form-control" id="reg_dob"><br>
            <label>Password</label><br>
            <input type="password" id="reg_password" class="form-control"><br>
            <input  id="reg-btn" value="submit" class="btn btn-warning">
        
      </div>
      
    </div>
  </div>
</div>


<div class="modal fade" id="forget" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Password Reset Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
            <label>Email</label><br>
            <input type="text" id="user_email_forget" class="form-control"><br>
            <label>Date of Birth</label><br>
            <input type="date" class="form-control" id="dob_forget"><br>
            <p id="success_error_message"></p>
            <input type="submit" value="submit" class="btn btn-warning" id="forget_button">
       
      </div>
      
    </div>
  </div>
</div>

<div class="modal fade" id="change_password" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
            <label>Enter New Password</label><br>
            <input type="password" id="user_password_forget" class="form-control"><br>
            
            <p id="success_error_message1"></p>
            <input type="submit" value="submit" class="btn btn-warning" id="submit_pass">
        
      </div>
      
    </div>
  </div>
</div>

<div class="modal fade" id="own_forget" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Password Reset Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
            <label>Email</label><br>
            <input type="text" id="user_email_forget2" class="form-control" value=<?php echo $_SESSION['email'] ;?> disabled><br>
            <label>Date of Birth</label><br>
            <input type="date" class="form-control" id="dob_forget2"><br>
            <p id="success_error_message2"></p>
            <input type="submit" value="submit" class="btn btn-warning" id="forget_button1">
       
      </div>
      
    </div>
  </div>
</div>
