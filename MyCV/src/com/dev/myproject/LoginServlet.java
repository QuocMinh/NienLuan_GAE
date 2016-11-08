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
	
	public static Database db;
	
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String path = request.getRequestURI();
		if(path.startsWith("/favicnon.ico")) {
			return; // ignore the request for favicon.ico
		}
		
		// Ket noi CSDL
		db = new Database(response.getWriter());
		
		// Tao ra bang User neu khong ton tai
		db.createTableUserIfNotExist();
		
		if(request.getUserPrincipal() == null) {
			// Chuyen sang trang Login
			response.sendRedirect("/login-page");
		} else {
			UserService userService = UserServiceFactory.getUserService();
			String currentEmail = userService.getCurrentUser().getEmail();
			
			response.sendRedirect("/authentication?email=" + currentEmail 
					+ "&role=" + db.getUserRole(currentEmail));
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	}

}
