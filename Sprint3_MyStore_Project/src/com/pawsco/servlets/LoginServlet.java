package com.pawsco.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pawsco.business.User;
import com.pawsco.data.UserDB;
import com.pawsco.data.UserIO;
import com.pawsco.util.CookieUtil;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
			throws IOException, ServletException {
    	
		 // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "home";  // default action
        }

     // perform action and set URL to appropriate page
        String url = "/home.jsp";
        if (action.equals("home")) {
            url = "/home.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        } else if (action.equals("viewCookies")) {
            url = "/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }
        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);	
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
				throws ServletException, IOException {
		
		String action = request.getParameter("action");

		// perform action and set URL to appropriate page
		String url = "/home.jsp";
		if (action.equals("loginUser")) {
			try {
				url = loginUser(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// forward to the view
		
		response.sendRedirect("home.jsp");
//		getServletContext()
//			.getRequestDispatcher(url)
//			.forward(request, response);
	}
	private String checkUser(HttpServletRequest request,
            HttpServletResponse response) {

        //String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();        
        // get the User object
        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = 
                CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/register.jsp";
            } 
            // if cookie exists, create User object and go to home page
            else {
            	ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/home.jsp";
                
            }
        } 
        // if User object exists, go to home page
        else {
            url = "/signin.jsp";
        }
        return url;
    }

	private String loginUser(HttpServletRequest request,
            HttpServletResponse response) throws SQLException {

		String url = null;
        // get the user data
       String email = request.getParameter("email");
       String firstName = request.getParameter("firstName");
       String lastName = request.getParameter("lastName");
       String password = request.getParameter("password");
       
    
    		
        String message;
		//check that email address doesn't already exist
        if (UserDB.userExists(email, password)) {
        	// store the data in a User object
            User user = UserDB.selectUser(email);
          
           
            // store the User object as a session attribute
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            String remember = request.getParameter("remember");
            if (remember != null && remember.equals("yes")) {
            	// add a cookie that stores the user's email to browser
                Cookie c = new Cookie("userEmail", email);
                c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
                c.setPath("/");    
                // allow entire app to access it
                response.addCookie(c);
            }
            
            message = "logging in...";
            request.setAttribute("message", message);
            url = "/home.jsp";
        } else {
  
            message = "Email does not exist";
            request.setAttribute("message", message);
            url = "/register.jsp";
        }
        return url;
   }
	private String deleteCookies(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();     
		Cookie[] cookies = request.getCookies();
		User user = (User) session.getAttribute("user");
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(0); // delete the cookie
			cookie.setPath("/");
			response.addCookie(cookie);
			
			
		}
		
		String url = "/delete_cookies.jsp";
		return url;
	}
}
	

