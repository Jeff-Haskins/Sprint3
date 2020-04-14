$(document).ready(function() {
	
	var wishlist = JSON.parse(sessionStorage.getItem("wishlist"));
	var wishlistDiv = $("#wishlistDiv");
	
	if (wishlist == null || wishlist.length == 0) {
		wishlistDiv.html(`<br><h4 style="text-align: center">Your wishlist is empty.</h4><br>`);
	} else {
		var wishlistTable = 
			`<table class="table">
				<thead>
					<tr>
						<th></th>
						<th>Product</th>
						<th>Qty</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>`;
		
		var index = 0;
		wishlist.forEach(product => {
			wishlistTable = wishlistTable.concat(
					`<tr>
						<td><img src="${product.img}" class="img-cart" width="auto" height="100"></td>
						<td style="max-width:200px"><strong>${product.name}</strong></td>
						<td>
						<form class="form-inline">
							<button class="btn btn-primary btnEdit"
								style="background-color: #45c04f; border: none; 
								padding-left: 10px; padding-right: 10px;
								margin-right: 10px">
								<i class="fas fa-cart-plus"></i>
								</button>
							<button class="btn btn-primary btnDelete"
								style="background-color: #cc3318; border: none"
								value="${index++}">
								<i class="fas fa-trash-alt"></i>
								</button>
						</form>
						</td>
						<td>$${product.price}</td>
					</tr>`);
		});
		
		wishlistTable = wishlistTable.concat(`</tbody></table>`);

		wishlistDiv.html(wishlistTable);
	}
	
	$(".btnDelete").click(function() {
		var i = $(this).val();
		wishlist.splice(i, 1);
		sessionStorage.setItem("wishlist", JSON.stringify(wishlist));
		location.reload();
	});
	
	$("#test").click(function() {
		wishlist = [];
		var testItem = {
				name: "Test Product",
				price: "9.95",
				img: null
		};
		var testItem2 = {
				name: "Test Product",
				price: "9.95",
				img: null
		};
		wishlist.push(testItem);
		wishlist.push(testItem2);
		sessionStorage.setItem("wishlist", JSON.stringify(wishlist));
		location.reload();
	});
});