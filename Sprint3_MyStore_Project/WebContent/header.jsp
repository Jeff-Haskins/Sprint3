<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!-- Nav bar for search bar, my account button, and shopping cart button -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3071A9;"id="navcolor">
    
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home.jsp">
        <img class="navbar-image"src="${pageContext.request.contextPath}/images/logo3.png" alt="PawsCo"></a>
        
        <!-- Search Bar Form -->
        <form id="searchBar"class=" form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/products.jsp">
            <input id="searchBar" class="form-control mr-sm-2" type="search"
                placeholder="Search" aria-label="Search" id="searchProductInput">
            <button id="searchButton" class="btn btn-danger" type="submit"
                id="searchButton">Search</button>
        </form>

 <!-- Nav tag for second level selections for categories and home button -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3071A9;">
            <div class="homeNav collapse navbar-collapse"
                id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
              
                    <li id="home" class="btn btn-danger"
                        ><a
                        class="nav-link" href="${pageContext.request.contextPath}/home.jsp">Home <span class="sr-only">(current)</span>
                    </a></li>
                    <!-- Products button that will redirect to the products page -->
                    <li id="product" class="btn btn-danger"
                        >
                        <a class="nav-link" href="${pageContext.request.contextPath}/products.jsp">Products</a>
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
                <a class="dropdown-item" href="../myAccount.html">Profile</a>
                <a class="dropdown-item" href="#">Orders</a> <a
                    class="dropdown-item" href="#">Wishlist</a> <a
                    class="dropdown-item" href="#">Logout</a>
            </div>
            <!-- MyCart button to see what is in your cart -->
            <a id="cart" class="nav-link btn btn-danger" href="${pageContext.request.contextPath}/myCart.jsp">Cart</a>
            
        </div>
    </nav>