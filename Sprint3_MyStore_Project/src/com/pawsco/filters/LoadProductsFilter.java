package com.pawsco.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.pawsco.business.Product;
import com.pawsco.data.ConnectionPool;

public class LoadProductsFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoadProductsFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		if (request.getServletContext().getAttribute("products") == null) {
			try {
				ConnectionPool pool = ConnectionPool.getInstance();
	            Connection connection = pool.getConnection();
	            Statement statement = connection.createStatement();
	            String query = "SELECT * FROM AllProducts";    
	            ResultSet results = statement.executeQuery(query);
	            
	            List<Product> products = new ArrayList<>();
	            
	            while (results.next()) {
	            	int id = results.getInt("ProductID");
	            	String name = results.getString("Name");
	            	String category = results.getString("Category");
	            	String description = results.getString("Description");
	            	Double price = results.getDouble("Price");
	            	String imgFile = results.getString("ImageFilename");
	            	
	            	Product p = new Product(id, name, category, description, price, imgFile);
	            	products.add(p);
	            	
	            	request.getServletContext().setAttribute("products", products.toArray());
	            }
	            
	            results.close();
	            statement.close();
	            connection.close();
	            
	            chain.doFilter(request, response);
			} catch (SQLException e) {
	            
	        }
		} else {
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
