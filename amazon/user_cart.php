<?php 

include "includes/navbar.php";
include "includes/dbconn.php";

?>

<script>

    $(document).ready(function(){

        $('#checkout').click(function(){
            var amount = Number($('#total-amount').text())+Number($('#tax').text());
            $.ajax({
                url: 'place_order.php',
                method: 'POST',
                data: {'amount': amount},
                success: function(data){
                     window.location.href = "http://localhost/amazon/show_address.php?order_id="+data;
                },
                error: function(error){

                }
            })
         })

        $('#coupon-btn').click(function(){
            var user_input = $('#coupon-code').val();

            $.ajax({
                url: 'apply_coupon.php',
                method: 'POST',
                data: {'user_input':user_input},
                success: function(data){
                    console.log(data)
                    if(data.trim() === 'invalid'){
                        $('#coupon-message').html('<p style="color: red;">Coupon Code invalid</p>')
                    }else if(data.trim() === 'expired'){
                        $('#coupon-message').html('<p style="color: red;">Coupon Code Expired</p>')
                    }else{
                        $('#coupon-message').html('<p style="color: green;">Coupon Code Applied</p>')

                        var total = Number($('#total-amount').text());

                        var discount_value = (Number(data.trim()) / 100) * Number(total)
                        
                        var new_total = total - discount_value

                        $('#total-amount').text(new_total)
                        $('#coupon-discount-value').text(Math.round(discount_value))
                    }

                    $('#coupon-code').val('')
                },
                error: function(error){
                    console.log(error)
                }
            })
        })
    })

    $(document).ready(function(){
        $('.change-quantity').click(function(){
            var quantity = $(this).siblings('span').text()
            var price = $(this).parent().parent().siblings('.col-md-5').children('h4').children('span').text()
            var total = $('#total-amount').text()
            var product_id = $(this).data('id')
            var sign = $(this).text()

            if(sign === '+'){
                $(this).siblings('span').text(Number(quantity) + 1)
                
                $('#total-amount').text(Number(total) + Number(price))
                $('#tax').text(Math.round((Number(total) + Number(price)) * 0.18))
                
            }else{
                if(Number(quantity)<=1){
                    alert("Quantity must be at least 1")
                }else{
                    
                    $(this).siblings('span').text(Number(quantity) - 1)
                    $('#total-amount').text(Number(total) - Number(price))
                    $('#tax').text(Math.round((Number(total) - Number(price)) * 0.18))
                }
                
                
            }
            if(Number(quantity)>=0){
                if(Number(quantity)==0 && sign==='-'){
                    
                }
                else if(Number(quantity==1 && sign==='-')){

                }
                else{
                    $.ajax({
                url: 'update_cart_quantity.php',
                method: 'POST',
                data: {'product_id': product_id,'sign':$(this).text(), 'Apple': 'APPLE'},
                success: function(data){
                    console.log(data)
                },
                error: function(data){
                    console.log(error)
                }
            })}}
                
            })
            
    })


</script>


<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <h2 class="mt-5">My Cart</h2>
        </div>
    </div>
    
    <div class="row">

        <div class="col-md-9">

            <?php 
                
                $user_id = $_SESSION['user_id'];

                $query = "SELECT * FROM cart c JOIN products p ON p.product_id = c.product_id WHERE c.user_id = $user_id";

                $result = mysqli_query($conn, $query);

                $total = 0;
                $counter = 0;

                while($row = mysqli_fetch_assoc($result)){
                    $counter++;

                    $total = $total + ($row['price'] * $row['quantity']);

                    $img = substr(explode(',', $row['img'])[0], 1);

                    echo '
                    
                        
                            <div class="card mb-2">
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src='.$img.' alt="" style="width: 100%; height: auto; padding: 20px;" class="mt-3">
                                    </div>

                                    <div class="col-md-5 p-3">
                                        <h5 class="mt-3"><a href="description.php?product_id='.$row['product_id'].'">'.$row['name'].'</a></h5>
                                        <h4>Rs <span>'.$row['price'].'</span></h4>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="p-5">
                                            <button class="btn btn-warning change-quantity" data-id="'.$row['product_id'].'">-</button>
                                            <span>'.$row['quantity'].'</span>
                                            <button class="btn btn-warning change-quantity" data-id="'.$row['product_id'].'">+</button>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                    <a href="remove_from_cart.php?product_id='.$row['product_id'].'" class="btn btn-sm btn-danger mt-5" >Remove</a>
                                    </div>
                                </div>
                            </div>
                        
                    
                    ';
                }

                if($counter == 0){
                    echo '<h5>No item in the cart</h5>';
                }

            ?>
    
    </div>

    <?php 
    
    if($counter != 0){
        echo '<div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">Final Price</div>
                            <div class="col-md-6">Rs <span id="total-amount">'.$total.'</span></div>
                            <div class="col-md-6">Discount</div>
                            <div class="col-md-6">Rs <span id="coupon-discount-value">0</span></div>
                            <div class="col-md-6">Total Tax</div>
                            <div class="col-md-6">Rs <span id="tax">'.round($total * 0.18).'</span></div>

                            <div class="col-md-12">
                                <p>Apply Dicount</p>
                                <div id="coupon-message"></div>
                                <input type="text" name="" class="form-control" id="coupon-code">
                                <button class="btn btn-sm btn-warning mt-2" id="coupon-btn">Apply</button>
                            </div>

                            <div class="col-md-12">
                                <button id="checkout" class="btn bg-amazon btn-block text-white mt-2">Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';
    }
    
    ?>

    

    </div>

    

        
    </div>
</div>