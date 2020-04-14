$(document).ready(function() {
	
	var cart = JSON.parse(sessionStorage.getItem("cart"));
	var cartDiv = $("#cartDiv");
	var orderTotal = 0;
	
	function showCart() {
		if (cart == null || cart.length == 0) {
			cartDiv.html(`<h4 style="text-align: center">Your cart is empty.</h4>`);
			// $("#btnNext").hide();
		} else {
			var cartTable = 
				`<table class="table">
					<thead>
						<tr>
							<th></th>
							<th>Product</th>
							<th>Qty</th>
							<th>Price</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>`;
			
			var index = 0;
			
			cart.forEach(product => {
				var itemTotal = (product.price * product.qty).toFixed(2);
				orderTotal += parseFloat(itemTotal);
				
				cartTable = cartTable.concat(
						`<tr>
							<td><img src="${product.img}" class="img-cart" width="auto" height="100"></td>
							<td><strong>${product.name}</strong></td>
							<td>
							<form class="form-inline">
								<input class="form-control" type="text" value="${product.qty}">
								<button class="btn btn-default btnEdit"
									style="border: 1px solid lightgray; padding-left: 10px; padding-right: 10px">
									<i class="fas fa-pencil-alt"></i>
								</button>
								<button class="btn btn-primary btnDelete"
									style="background-color: #cc3318; border: none"
									value="${index++}">
									<i class="fas fa-trash-alt"></i></a>
							</form>
							</td>
							<td>$${product.price}</td>
							<td>$${itemTotal}</td>
						</tr>`);
			});
			
			var tax = (orderTotal * 0.065);
			tax = parseFloat(tax.toFixed(2));
			
			cartTable = cartTable.concat(
							`<tr>
								<td colspan="4" class="text-right">Subtotal</td>
								<td>$${orderTotal.toFixed(2)}</td>
							</tr>
							<tr>
								<td colspan="4" class="text-right">Tax</td>
								<td>$${tax}</td>
							</tr>
							<tr>
								<td colspan="4" class="text-right"><strong>Total</strong></td>
								<td>$${(orderTotal + tax).toFixed(2)}</td>
							</tr>
						</tbody>
					</table>`);
			
			cartDiv.html(cartTable);
		}
	}
		
	showCart();
	
	$(".btnEdit").click(function() {
		var qty = $(this).siblings(":input").val();
		var i = $(this).siblings(".btnDelete").val();
		cart[i].qty = qty;
		sessionStorage.setItem("cart", JSON.stringify(cart));
		location.reload();
	});
		
	$(".btnDelete").click(function() {
		var i = $(this).val();
		cart.splice(i, 1);
		sessionStorage.setItem("cart", JSON.stringify(cart));
		location.reload();
	});
});