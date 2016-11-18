package com.dev.myproject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmailServlet
 */
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("userEmail");
		String emailType = request.getParameter("emailType");
		String link = "http://m-learn-gae.appspot.com/confirmation-page?userEmail=" + email;
		EmailSender emailSender = new EmailSender();
		
		if("request-email".equals(emailType)) {
			String message = "Chào Minh!<br>"
					+ "Có 1 user đã yêu cầu được cấp quyền QTV trên trang cá nhân của bạn.<br>"
					+ "Hãy click vào liên kết bên dưới để xác nhận hoặc từ chối yêu cầu:<br>"
					+ "<a href='" + link + "'>" + link + "</a>";
			emailSender.sendEmailRequest(email, message);
		}
		
		response.sendRedirect("/chauquocminh-curriculum-vitae?status=send-email");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	}

}
