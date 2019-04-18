	</div>
	<!-- /container -->

<!-- jQuery library -->
<script src="libs/js/jquery.js"></script>

<!-- our custom JavaScript -->
<script src="libs/js/custom-script.js"></script>

<!-- bootstrap JavaScript -->
<script src="libs/js/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="libs/js/bootstrap/docs-assets/js/holder.js"></script>

<!-- bootstrap image gallery JavaScript -->
<script src="libs/js/Bootstrap-Image-Gallery-3.1.1/js/jquery.blueimp-gallery.min.js"></script>
<script src="libs/js/Bootstrap-Image-Gallery-3.1.1/js/bootstrap-image-gallery.min.js"></script>

<script>
// jQuery codes
$(document).ready(function(){

	// add to cart button listener
	$('.add-to-cart-form').on('submit', function(){

		// get basic information for adding to cart
		var id = $(this).closest('tr').find('.product-id').text();
		var name = $(this).closest('tr').find('.product-name').text();
		var quantity = $(this).closest('tr').find('input').val();

		// redirect to add_to_cart.php, with parameter values to process the request
		window.location.href = "add_to_cart.php?id=" + id + "&name=" + name + "&quantity=" + quantity;
		return false;
	});

	// update quantity button listener
	$('.update-quantity-form').on('submit', function(){

		// get basic information for updating the cart
		var id = $(this).closest('tr').find('.product-id').text();
		var name = $(this).closest('tr').find('.product-name').text();
		var quantity = $(this).closest('tr').find('input').val();

		// redirect to update_quantity.php, with parameter values to process the request
		window.location.href = "update_quantity.php?id=" + id + "&name=" + name + "&quantity=" + quantity;
		return false;
	});

	// catch the submit form, used to tell the user if password is good enough
	$('#register, #change-password').submit(function(){

		var password_strenght=$('#passwordStrength').text();

		if(password_strenght!='Good Password!'){
			alert('Password not strong enough');
			return false;
		}

		return true;
	});

});
</script>

<!-- end HTML page -->
</body>
</html>
