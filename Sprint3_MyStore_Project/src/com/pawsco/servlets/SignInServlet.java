package com.pawsco.servlets;

import javax.servlet.http.HttpServlet;

import com.pawsco.data.UserIO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;


public class SignInServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String url = "/index.html";
		
		//get current action
		String action = request.getParameter("action");
		if(action == null) {
			action = "Join"; //default action
		}
		
		//perform action and set URL to appropriate page
		if(action.equals("join")) {
			url = "/signin.jsp";
		}else if(action.equals("add")){
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			
			//create user object
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setEmail(email);
			
			//store the user object in the session
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			if(firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
				//forward to the view to get missing parameters
				url = "/signin";
			}else {
				//write the User Object to a file
				UserDB.insert(user);
				
				//forward to the view
				url = "/home.jsp";
			}
		}
	}
	
	 @Override
	    protected void doGet(HttpServletRequest request,
	                         HttpServletResponse response)
	                         throws ServletException, IOException
	    {
	        this.doPost(request, response);
	    }
}
