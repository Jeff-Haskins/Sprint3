<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/Style/product.css"
	rel="stylesheet" type="text/css" />
<link href="Style/header.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/filter.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/Javascript/temp.js"></script> --%>


</head>
<body>
	<%@ include file="/header.jsp"%>
	<div>
		<button type="button" class="btn btn-primary" id="resetPage" style="padding: 10px">Show
			All</button>
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
		</div>
		<div id="filter" class=".nav-item dropdown" >
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
	</div>
		<div style="text-align: center; margin-left: 10%">
			<div class="row row-cols-1 row-cols-md-3"
				style="width: 80%; text-align: left">
				<c:forEach var="product" items="${applicationScope.products}">
					<c:if
						test="${param.filter == null || product.value.category == param.filter}">
						<div class="col mb-4 ${product.value.category}">
							<div class="card h-100 item-card">
								<!--Card image-->
								<div class="view overlay">
									<img class="card-img" src="Image/${product.value.imgFile}"
										alt="Card image cap"
										style="max-width: 300px; max-height: 250px; width: auto; height: auto; display: block; margin-left: auto; margin-right: auto; margin-top: 10px">
								</div>
								<!--Card content-->
								<div class="card-body">
									<div class="collapse-content">
										<!--Title-->
										<h4 class="card-title">
											<c:out value="${product.value.name}" />
										</h4>
										<h4 class="price">
											<c:out value="${product.value.price}" />
										</h4>
										<form action="cartAdd" method="post">
											<input type="hidden" name="productid" value="${product.key}">
											<label for="qty">Qty</label> <input type="number"
												id="quantity" name="quantity" min="1" max="10" value="1">
											<input type="submit"
												class="cartBtn btn btn-outline-primary waves-effect"
												value="Add To Cart"><input type="submit"
												id="wishlist"
												class="wishlistBtn btn btn-outline-primary waves-effect"
												value="+Wish List">
										</form>
										<!--Text-->
										<p class="card-text collapse"
											id="collapseContent${product.key}">
											<c:out value="${product.value.description}" />
										</p>
										<a
											class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed read-more"
											data-toggle="collapse" href="#collapseContent${product.key}"
											aria-expanded="false"
											aria-controls="collapseContent${product.key}">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Javascript/home.js"></script>
	<script src="${pageContext.request.contextPath}/Javascript/product.js"></script>


	<%@ include file="/footer.jsp"%>

</body>
</html>