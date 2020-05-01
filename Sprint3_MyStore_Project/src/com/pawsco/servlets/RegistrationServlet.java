package com.pawsco.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pawsco.business.User;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * String email = request.getParameter("email"); String firstName =
		 * request.getParameter("firstName"); String lastName =
		 * request.getParameter("lastName"); User user = new User(email, firstName,
		 * lastName);
		 * 
		 * HttpSession session = request.getSession(); session.setAttribute("user",
		 * user);
		 * 
		 * request.getRequestDispatcher("signin.html").forward(request, response);
		 */
		
		String url = "/register.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "Register";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("Register")) {
            url = "/signin.jsp";    // the "join" page
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
                url = "/home.jsp";
            }
            else
            {
                // write the User object to a file
                UserDB.insert(user);

                // forward to the view
                url = "/signin.jsp";
            }        
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
	}

}
