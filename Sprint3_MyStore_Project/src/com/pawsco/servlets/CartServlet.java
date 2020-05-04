package com.pawsco.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pawsco.business.Cart;
import com.pawsco.business.Product;
import com.pawsco.cart.LineItem;

public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	ServletContext sc = getServletContext();
		
		String action = request.getParameter("action");
		if(action == null) {
			action = "cart";
		}
		
		String url = "/products.jsp";
		if(action.equals("shop")) {
			url = "/products.jsp";
		}
		else if(action.equals("cart")) {
			Integer productId = Integer.parseInt(request.getParameter("productid"));
			System.out.println(productId);
			String quantityString = request.getParameter("quantity");
			System.out.println(request.getParameter("quantity"));
			HttpSession session = request.getSession();
			ArrayList<LineItem> items = (ArrayList<LineItem>) session.getAttribute("cart");
			Cart cart = new Cart(items);
			System.out.println(cart);
			 int quantity;
			
	          try {
	              quantity = Integer.parseInt(quantityString);
	              System.out.println(quantity);
	              if (quantity < 0) {
	                  quantity = 1;
	              }
	          } catch (NumberFormatException nfe) {
	              quantity = 1;
	          }
	          
	          HashMap<Integer, Product> map = (HashMap<Integer, Product>)request.getServletContext().getAttribute("products");
              Product p = map.get(productId);

              
              LineItem lineItem = new LineItem(p, quantity);
            
              System.out.println(lineItem);
              if(quantity > 0) {
            	
            	  cart.addItem(lineItem);
              }else if(quantity == 0) {
            	  cart.removeItem(lineItem);
              }
              
              session.setAttribute("cart", cart.getItems());
              url ="/myCart.jsp";
		}else if(action.equals("checkout")) {
			url="/checkout.jsp";
		}
		sc.getRequestDispatcher(url).forward(request, response);
		}
	@Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
	}

}
