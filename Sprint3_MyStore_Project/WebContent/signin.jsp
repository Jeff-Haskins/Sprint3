<%@ taglib prefix="mma" uri="/WEB-INF/pawsco.tld" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="Style/home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/header.jsp"%>
<form action="emailList" method="post">
        <input type="hidden" name="action" value="add">        

        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}">
        <mma:ifEmptyMark field="${user.email}"/><br>

        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}">
        <mma:ifEmptyMark field="${user.firstName}"/><br>

        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}">
        <mma:ifEmptyMark field="${user.lastName}"/><br>        

        <label>&nbsp;</label>
        <input type="submit" value="Sign In" class="margin_left">
    </form>
    <%@ include file="/footer.jsp"%>
    <script src="../Javascript/home.js"></script>
</body>
</html>