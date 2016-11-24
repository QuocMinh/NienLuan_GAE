package com.dev.myproject;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

/**
 * Servlet implementation class AuthenticationServlet
 */
public class AuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticationServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String role = request.getParameter("role");
		String path = request.getRequestURI();
		
		if(path.startsWith("/favicnon.ico")) {
			return; // ignore the request for favicon.ico
		}
		
		UserService userService = UserServiceFactory.getUserService();
		
		if(request.getUserPrincipal() != null) { // Kiem tra User co dang nhap hay khong?
			// Lay email cua User hien tai
			String currentEmail = userService.getCurrentUser().getEmail();
			
			if("guest".equals(role)) { // Neu user la Khach
				// Khoi tao User de luu tru vao CSDL
				User user = new User(currentEmail, new Date().toString(), 0);
				// Them User vao CSDL
				LoginServlet.db.insertIntoUser(user);
				
			} else { // Neu User la Quan tri vien
				if("guest".equals(LoginServlet.db.getUserRole(currentEmail))) {
					// Chuyen sang trang error
					response.sendRedirect("/error");
					
					return;
				}
			}
			
			// Luu tru Email va Role vao session
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", currentEmail);
			if("guest".equals(role)) {
				session.setAttribute("role", 0);
			} else {
				session.setAttribute("role", 1);
			}
			
			
			// Chuyen sang trang CV
			response.sendRedirect("/chauquocminh-curriculum-vitae");
			
			return;
		} else { // Neu User chua dang nhap
			// Chuyen sang trang Login cua Google
			response.sendRedirect(userService.createLoginURL("/authentication?role=" + role));
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	}

}
