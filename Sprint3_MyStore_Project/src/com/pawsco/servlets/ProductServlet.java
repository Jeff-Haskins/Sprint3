package com.pawsco.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawsco.business.Product;
import com.pawsco.data.ConnectionPool;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ConnectionPool pool = ConnectionPool.getInstance();
            Connection connection = pool.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM AllProducts";    
            ResultSet results = statement.executeQuery(query);
            
            HashMap<String, Product> products = new HashMap<>();
            
            while (results.next()) {
            	String name = results.getString("Name");
            	String description = results.getString("Description");
            	Double price = results.getDouble("Price");
            	String imgFile = results.getString("ImageFilename");
            	
            	Product p = new Product(name, description, price, imgFile);
            	products.put(name, p);
            	
            	request.getServletContext().setAttribute("products", products);
            }
            
		} catch (SQLException e) {
            this.log(e.toString());
        }
		
	}

}
