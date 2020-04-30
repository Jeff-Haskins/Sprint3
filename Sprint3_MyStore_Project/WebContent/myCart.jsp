<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="../Javascript/cart.js"></script>
</head>
<body>
	
	<%@ include file="/header.jsp"%>


	<div class="container bootstrap snippet" style="padding-bottom: 40px">
		<div class="col-md-9 col-sm-8 content">

			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info panel-shadow">
						<div class="panel-body">
							<div class="table-responsive" id="cartDiv"></div>
						</div>
					</div>
					<a href="${pageContext.request.contextPath}/Views/products.jsp" class="btn btn-success"
						style="background-color: #3071A9; border-color: #3071A9"><i
						class="fas fa-angle-left"></i> Continue Shopping</a> <a href="#"
						class="btn btn-primary float-right" id="btnNext"
						style="background-color: #45c04f; border-color: #45c04f">Checkout
						<i class="fas fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/footer.jsp"%>
	
	<script src="../Javascript/home.js"></script>
</body>
</html>
