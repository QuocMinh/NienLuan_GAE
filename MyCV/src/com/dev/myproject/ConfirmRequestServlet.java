package com.dev.myproject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfirmRequestServlet
 */
public class ConfirmRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmail = request.getParameter("userEmail");
		String result = request.getParameter("result");
		String message = "";
		
		if("yes".equals(result)) {
			// Dat lai Role cho user
			LoginServlet.db.updateRole(userEmail, 1);
			
			message = "Chúc mừng! Yêu cầu QTV của bạn đã được chấp nhận.";
		} else {
			message = "Rất tiếc! Yêu cầu QTV của bạn đã không được chấp nhận.";
		}
		
		// Gui email thong bao ket qua cho user
		EmailSender emailSender = new EmailSender();
		emailSender.replyEmailRequest(userEmail, message);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
