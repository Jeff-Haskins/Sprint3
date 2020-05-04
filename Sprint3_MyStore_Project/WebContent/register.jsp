
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mma" uri="/WEB-INF/pawsco.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="Style/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/header.jsp"%>
	
	<div style="text-align: center">
		<br><h3>User Registration</h3><br>
		<div style="width: 80%; display: inline-block; text-align: center">
			<p><mma:ifEmptyMark field=""/> marks required fields</p>	
			<form style="display: inline-block; text-align: left" action="register" method="post">
					<input type="hidden" name="action" value="registerUser">        
				<table>
					
					<tr>      
						<td><label for="email">Email Address</label></td>
						<td><input type="email" name="email" value="${user.email }" required></td>
						<td><mma:ifEmptyMark field="${user.email}"/></td>
					</tr>
					<tr>      
						<td><label for="password">Password</label></td>
						<td><input type="password" name="password" value="${user.password }" required></td>
						<td><mma:ifEmptyMark field="${user.password}"/></td>
					</tr>
					<tr>
						<td><label for="firstName">First Name</label></td>
						<td><input type="text" name="firstName" value="${user.firstName }" required></td>
						<td><mma:ifEmptyMark field="${user.firstName}"/></td>
					</tr>
					<tr>
						<td><label for="lastName">Last Name</label></td>
						<td><input type="text" name="lastName" value="${user.lastName }" required></td>
						<td><mma:ifEmptyMark field="${user.lastName}"/></td>
					</tr>
					<tr>
						
						<td colspan="2" style="text-align: center">
						
    					<input type="submit" value="Register" class="margin_left">
<!-- 							<a href="home.jsp?action=home" > -->
<!-- 								<input type="submit" value="Register"> -->
<!-- 							</a> -->
							
							<p><a href="view_cookies.jsp?action=viewCookies">View all cookies</a></p>
						</td>
					</tr>
				</table>
			</form>
			<br><br>
		</div>
	</div>

	<%@ include file="/footer.jsp"%>
	
	<script src="../Javascript/home.js"></script>
</body>
</html>