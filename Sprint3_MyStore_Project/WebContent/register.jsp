<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="Style/home.css" rel="stylesheet" type="text/css" />
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
			<form style="display: inline-block; text-align: left" action="register" method="post">
				<table>
					<tr>
						<td><label for="email">Email Address</label></td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td><label for="firstName">First Name</label></td>
						<td><input type="text" name="firstName"></td>
					</tr>
					<tr>
						<td><label for="lastName">Last Name</label></td>
						<td><input type="text" name="lastName"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center">
							<a href="home.jsp" >
								<input type="submit" value="Register">
							</a>
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