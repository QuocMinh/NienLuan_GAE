package com.dev.myproject;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Database db;
	
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// Connect to database
		this.db = new Database(response.getWriter());
		db.createTableVisitorIfNotExist();
		
		// Check user loged in
		String thisURL = request.getRequestURI();
		UserService userService = UserServiceFactory.getUserService();
		
		if(request.getUserPrincipal() != null) {
			User user = userService.getCurrentUser();
			db.insertIntoVisitor(user.getEmail(), user.getNickname(), new Date().toString());
			
			// Send visitor's email to cv-page
			request.setAttribute("visitor", user.getEmail());
			request.getRequestDispatcher("cv-page.jsp").forward(request, response);
			
			// response.sendRedirect("cv-page.jsp");
		} else {
			System.out.println(request.getParameter("login"));
			if("true".equalsIgnoreCase(request.getParameter("login"))) {
				response.sendRedirect(userService.createLoginURL(thisURL));
				return;
			}
			response.sendRedirect("login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		if(checkUser(request)) {
			response.sendRedirect("cv-page.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}
	
	public boolean checkUser(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if("cqminh1995@gmail.com".equals(email))
			if("quocminh1995".equals(password))
				return true;
		
		return false;
	}

}
