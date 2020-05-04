
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div id="searchBar" style="display: table-cell; text-align: center; width: 40%">
					<input id="searchProductInput" type="text" style="
						padding: 7px;
						margin-bottom: 7px; 
						border-radius: 5px;
						width: 70%;
						min-width: 200px">
					<a class="navbtn" href="products.jsp" id="searchButton"><i class="fas fa-search" ></i> Search</a>
				</div>
				<div style="display: table-cell">
					<c:choose>
						<c:when test="${sessionScope.user != null}">
							<c:url var="btnURL" value="myAccount.jsp"/>
							<c:set var="btnLabel" value="Hello, ${sessionScope.user.firstName}!"/>
						</c:when>
						<c:otherwise>
							<c:url var="btnURL" value="signin.jsp"/>
							<c:set var="btnLabel" value="Sign In/Register"/>
						</c:otherwise>
					</c:choose>
					<a class="navbtn" href="${btnURL}">
						<i class="fas fa-user"></i> ${btnLabel}
					</a>
					<a class="navbtn" href="myCart.jsp">
						<i class="fas fa-shopping-cart"></i> Cart
						<c:if test="${sessionScope.cart != null}">
							<c:out value=" (${sessionScope.cart.size()})"/>
						</c:if>
					</a>
					<br>
					<c:if test="${sessionScope.user != null}">
						<a class="logout" href="logout">Sign Out</a>
					</c:if>
				</div>
			</div>
		</div>

	</div>