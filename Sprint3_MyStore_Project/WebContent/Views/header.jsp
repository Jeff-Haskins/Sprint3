<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Nav bar for search bar, my account button, and shopping cart button -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3071A9;"id="navcolor">
    
        <a class="navbar-brand" href="${pageContext.request.contextPath}/Views/home.jsp">
        <img class="navbar-image"src="../images/logo3.png" alt="PawsCo"></a>
        
        <!-- Search Bar Form -->
        <form class=" form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/Views/products.jsp">
            <input class="form-control mr-sm-2" type="search"
                placeholder="Search" aria-label="Search" id="searchProductInput">
            <button class="btn btn-danger" type="submit"
                id="searchButton">Search</button>
        </form>
        <!--        MyAccount button that will redirect to the My Account page -->
        <div class="btn-group">
            <button type="button"
                class="MyAccountBtn btn btn-primary dropdown-toggle"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My
                Account</button>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="${pageContext.request.contextPath}/Views/myAccount.jsp">Profile</a>
                <a class="dropdown-item" href="#">Orders</a> <a
                    class="dropdown-item" href="#">Wishlist</a> <a
                    class="dropdown-item" href="#">Logout</a>
            </div>
        </div>
        
        <!-- MyCart button to see what is in your cart -->
        <a id="cart" href="${pageContext.request.contextPath}/Views/myCart.jsp">
            <input type="image" src="../images/cart.png" alt="Submit" width="24" height="24">
        </a>
 <!-- Nav tag for second level selections for categories and home button -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3071A9;">
            <div class="homeNav collapse navbar-collapse"
                id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                <!-- MyCart button to see what is in your cart -->
                <li id="cart" class="btn btn-outline-primary waves-effect"
                        style="width: 80px; height: 40px; margin: 5px; padding: 0px 1px">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Views/myCart.jsp">Cart</a>
                    </li>
                    <li id="home" class="btn btn-outline-primary waves-effect"
                        style="width: 80px; height: 40px; margin: 5px; padding: 0px 1px"><a
                        class="nav-link" href="${pageContext.request.contextPath}/Views/home.jsp">Home <span class="sr-only">(current)</span>
                    </a></li>
                    <!-- Products button that will redirect to the products page -->
                    <li id="product" class="btn btn-outline-primary waves-effect"
                        style="width: 80px; height: 40px; margin: 5px; padding: 0px 1px">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Views/products.jsp">Products</a>
                    </li>
                    
                </ul>
            </div>
        </nav>
        
        <!--        MyAccount button that will redirect to the My Account page -->
        <div class="btn-group">
            <button type="button"
                class="MyAccountBtn btn btn-danger dropdown-toggle"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My
                Account</button>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="../Views/myAccount.html">Profile</a>
                <a class="dropdown-item" href="#">Orders</a> <a
                    class="dropdown-item" href="#">Wishlist</a> <a
                    class="dropdown-item" href="#">Logout</a>
            </div>
            <!-- MyCart button to see what is in your cart -->
            <a id="cart" class="nav-link btn btn-danger" href="myCart.html">Cart</a>
        </div>
    </nav>