<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancellation & Returns</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="../Style/cancellation&return.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
</head>
<body>

	<%@ include file="/Views/header.jsp"%>
	
	<div id="header">
		<h3>Cancellation & Returns</h3>
		<br>
		<h1>Enjoy <span>free</span> & easy returns</h1><br>
		<p>For a limited time, returns are not accepted in store. Return
			windows will be extended to accommodate this temporary change.</p>
		<br>
		<p>Risk-Free 100% Satisfaction Guarantee: We guarantee your
			satisfaction on every product we sell, and will refund your purchase
			price.</p><br>
		<h4>Your one stop for returns and cancellation</h4><br>
	</div>

	<div class="row row-cols-1 row-cols-md-4">
		<div class="col mb-3"></div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/dogstore.png"
						alt="Card image cap"> <a href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Returns at a PawsCo Store</h4>
					<!--Text-->
					<p class="card-text">Bring your item and return barcode (from
						your packing slip, order details page, or receipt) to Guest
						Service. We can also look up receipts using your original payment
						method. Whatever you choose, a team member will be happy to assist
						with your return.</p>

				</div>

			</div>
			<!-- Card -->
		</div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/return.jpg"
						alt="Card image cap"> <a href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Return by mail</h4>
					<!--Text-->
					<p class="card-text">You'll get free shipping on every return
						at Target. View your order details to print a prepaid return
						mailing label. (You can also keep up to date on the status of your
						return there.) We'll email you when we get your return to let you
						know when to expect your refund.</p>

				</div>

			</div>

			<!-- Card -->
		</div>
	</div>
	<div class="row row-cols-1 row-cols-md-4">
		<div class="col mb-3"></div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/receipt.jpeg"
						alt="Card image cap"> <a href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Print a receipt</h4>
					<!--Text-->
					<p class="card-text">Receipts come in handy when returning
						items you purchased in store. It's easy to print them from your
						order details page. Giving a gift? You can print a gift receipt
						there, too.</p>

				</div>

			</div>
			<!-- Card -->
		</div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/problem.jpeg"
						alt="Card image cap"> <a href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Problems with your order?</h4>
					<!--Text-->
					<p class="card-text">Save time by fixing it online. We can help
						with damaged items, missing parts, and more.</p>

				</div>

			</div>
			<!-- Card -->
		</div>
	</div>

	<%@ include file="/Views/footer.jsp"%>
	
</body>
</html>