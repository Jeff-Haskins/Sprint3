<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/Style/product.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/filter.js"></script>
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
<script src="${pageContext.request.contextPath}/Javascript/temp.js"></script>


</head>
<body>
	<%@ include file="/header.jsp"%>
	<div>
		<div id="resetPage">
			<button type="button" class="btn btn-primary">Show All</button>
		</div>
		<div id="price" class=".nav-item dropdown" style="width: 5%">
			<a class="nav-link dropdown-toggle btn btn-success" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Price </a>

			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				<a class="dropdown-item" href="#" id="lessThanFive">Less than $5</a>
				<a class="dropdown-item" href="#" id="tenToTwenty">$10-$20</a> <a
					class="dropdown-item" href="#" id="twentyToFifty">$20-$50</a> <a
					class="dropdown-item" href="#" id="fiftyToOneHundred">$50-$100</a>
			</div>

			<div id="filter" class=".nav-item dropdown" style="width: 130%">
				<a class="nav-link dropdown-toggle btn btn-danger" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Filter </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#" onclick="showAll();">Show All</a>
					<a class="dropdown-item" href="#" onclick="showFood();">Food</a> <a
						class="dropdown-item" href="#" onclick="showToys();">Toys</a> <a
						class="dropdown-item" href="#" onclick="showFurniture();">Beds
						& Furniture</a> <a class="dropdown-item" href="#"
						onclick="showGrooming();">Grooming</a> <a class="dropdown-item"
						href="#" onclick="showApparel();">Apparel</a>
				</div>
			</div>
		</div>

		<div style="text-align: center; margin-left: 10%">
		<div class="row row-cols-1 row-cols-md-3" style="width: 80%; text-align: left">
			<c:forEach var="product" items="${applicationScope.products}">
				<div class="col mb-4 ${product.category}">
					<div class="card h-100 item-card">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top" src="Image/${product.imgFile}"
								alt="Card image cap"
								style="max-width: 300px; max-height: 250px; width: auto; height: auto; display: block; margin-left: auto; margin-right: auto;">
							<a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">
									<c:out value="${product.name}" />
								</h4>
								<h4 class="price">
									<c:out value="$${product.price}" />
								</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent${product.id}">
									<c:out value="${product.description}" />
								</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent${product.id}"
									aria-expanded="false" aria-controls="collapseContent${product.id}">Read
									More</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Javascript/home.js"></script>
	<script src="${pageContext.request.contextPath}/Javascript/product.js"></script>


	<%@ include file="/footer.jsp"%>

</body>
</html>