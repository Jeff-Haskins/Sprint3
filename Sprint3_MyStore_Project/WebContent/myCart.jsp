<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="Style/header.css" rel="stylesheet" type="text/css">
<link href="Style/cart.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="../Javascript/cart.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<%@ include file="/header.jsp"%>
	<h1>Your Cart:</h1>

	<table>
		<tr>
			<th>Quantity</th>
			<th style="width:5%">Image</th>
			<th>Price</th>
			<th>Amount</th>
			<th></th>
		</tr>
		<c:forEach var="item" items="${sessionScope.cart}">
			<tr>
				<td>
					<form action="" method="post">
						<input type="hidden" name="productid"
							value="<c:out value='${item.product.id}'/>"> <input
							type=text name="quantity"
							value="<c:out value='${item.qty}'/>" id="quantity">
						<input type="submit" value="Update">
					</form>
				</td>
		  <td><img class="card-img" src="<c:out value='Image/${item.product.imgFile}'/>"> </td>
    <fmt:setLocale value = "en_US"/>
    <td><fmt:formatNumber value ="${item.product.price}" type="currency"/></td>
    <fmt:setLocale value = "en_US"/>
    <td><fmt:formatNumber value ="${item.product.price * item.qty}" type="currency"/></td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.id}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>
	<%@ include file="/footer.jsp"%>

	<script src="../Javascript/home.js"></script>
</body>
</html>
