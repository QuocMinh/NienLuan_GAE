package com.dev.myproject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String thisURL = request.getRequestURI();
		UserService userService = UserServiceFactory.getUserService();
		
		if(request.getUserPrincipal() != null) {
			response.sendRedirect("cv-page.jsp");
		} else {
			response.sendRedirect(userService.createLoginURL(thisURL));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
