
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
</head>
<body>

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
    
</body>
</html>