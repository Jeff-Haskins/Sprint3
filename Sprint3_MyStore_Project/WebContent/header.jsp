<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div style="background-color: #3071A9; text-align: center">
		<div style="width: 80%; display: inline-table">
			<div style="display: table-row">
				<div style="display: table-cell">
					<div style="display: inline">
						<a href="home.jsp" style="display: inline-block">
							<img src="images/logo3.png" style="padding: 10px">
						</a>
						<div class="dropdown" style="display: inline-block">
							<a class="navbtn dropbtn" href="products.jsp">Products</a>
							<div class="dropdown-content">
								<a href="products.jsp?filter=Food">Food</a>
								<a href="products.jsp?filter=Toys">Toys</a>
								<a href="products.jsp?filter=Furniture">Furniture</a>
								<a href="products.jsp?filter=Grooming">Grooming</a>
								<a href="products.jsp?filter=Apparel">Apparel</a>
							</div>
						</div>
					</div>
				</div>
				<div style="display: table-cell; text-align: center; width: 40%">
					<input type="text" style="
						padding: 7px;
						margin-bottom: 7px; 
						border-radius: 5px;
						width: 70%;
						min-width: 200px">
					<a class="navbtn" href=""><i class="fas fa-search"></i> Search</a>
				</div>
				<div style="display: table-cell">
					<a class="navbtn" href="register.jsp"><i class="fas fa-user"></i> Sign In/Register</a>
					<a class="navbtn" href="myCart.jsp">
						<i class="fas fa-shopping-cart"></i> Cart
					</a>
				</div>
			</div>
		</div>
	</div>