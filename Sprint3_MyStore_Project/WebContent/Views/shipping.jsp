<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="../Style/shipping.css" rel="stylesheet" type="text/css" />
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

	<div id="shipping1">
		<h3>Shipping & Order Services</h3>
	</div>
	<div class="row-cols-1" id="shipping2">
		<div>
			<h3>Due to high demand, some items have extended delivery dates.</h3>
			<h5>Faster options, such as free pickup, are still available on
				many items.</h5>
		</div>
	</div>

	<div id="orderonline">
	</div>
	
	<div id="ordertoday">
		<h3>Order Today, Get it Today</h3>
	</div>

	<div class="row row-cols-1 row-cols-md-5">
		<div class="col mb-3"></div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/sameday.jpg"
						alt="Card image cap"> <a href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h3 class="card-title">Same Day Delivery</h3>
					<!--Text-->
					<p class="card-text">Get everything you need delivered to your
						door by a Ship to shopper. Try it free for 4 weeks or pay a
						one-time delivery fee.</p>

				</div>

			</div>
			<!-- Card -->
		</div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/order-pickup.png"
						alt="Card image cap" style="width: 70%; margin: 20px;"> <a
						href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Order Pickup</h4>
					<!--Text-->
					<p class="card-text">Order ahead & we'll have it waiting for
						you at the store.</p>

				</div>

			</div>
			<!-- Card -->
		</div>
		<div class="col mb-3">
			<!-- Card -->
			<div class="card">

				<!--Card image-->
				<div class="view overlay">
					<img class="card-img-top" src="../Image/curbsidepickup.png"
						alt="Card image cap" style="margin-top: 100px;"> <a
						href="#!">
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>

				<!--Card content-->
				<div class="card-body">

					<!--Title-->
					<h4 class="card-title">Drive Up</h4>
					<!--Text-->
					<p class="card-text">Order with Drive Up in the PawsCo app &
						we'll bring it right out to your car.</p>

				</div>

			</div>

			<!-- Card -->
		</div>
	</div>

	<div>
		<h3 id="ordertoday2">Order Today, Get it Fast</h3>
	</div>

	<div id="twodayship">
	
	</div>
	
	<%@ include file="/Views/footer.jsp"%>
</body>
</html>