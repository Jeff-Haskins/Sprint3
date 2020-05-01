package com.pawsco.servlets;

import com.pawsco.business.User;
import com.pawsco.data.UserIO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class SignInServlet extends HttpServlet{

	public SignInServlet() {
		super();
		//TODO Auto-generated constructor stub
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * String firstName = request.getParameter("register.jsp"); String lastName =
		 * request.getParameter("lastName"); String email =
		 * request.getParameter("email"); if(firstName.isEmpty() || lastName.isEmpty()
		 * || email.isEmpty()) { RequestDispatcher req =
		 * request.getRequestDispatcher("register.jsp"); req.include(request, response);
		 * }else { RequestDispatcher req = request.getRequestDispatcher("home.jsp"); }
		 */
		
		String url = "/signin.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "Sign In";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("Sign In")) {
            url = "/home.jsp";    // the "login" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // create the User object
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);

            // store the User object in the session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/signin.jsp";
            }
            else
            {
                // write the User object to a file
                UserDB.insert(user);

                // forward to the view
                url = "/home.jsp";
            }        
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
	}
	
	
	 @Override
	    protected void doGet(HttpServletRequest request,
	                         HttpServletResponse response)
	                         throws ServletException, IOException
	    {
	        this.doPost(request, response);
	    }
}
