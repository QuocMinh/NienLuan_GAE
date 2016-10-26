package com.dev.myproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.utils.SystemProperty;
import com.google.appengine.api.utils.SystemProperty.Environment.Value;

/**
 * Servlet implementation class DBServlet
 */
public class DBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String username = "cqm";
	private String password = "quocminh1995";
	private String dbName = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getRequestURI();
		response.setContentType("text/plain");
		connectDB(response.getWriter());
		response.sendRedirect("login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void connectDB(PrintWriter pw) {
		String url = null;
		
		if(SystemProperty.environment.value() == Value.Production) {
			try {
				Class.forName("com.mysql.jdbc.GoogleDriver");
				url = "jdbc:google:mysql://<ID>:m-learn-gae:asia-east1:learninggae";
			} catch (ClassNotFoundException e) {
				System.out.println("Khong nhan duoc Driver JDBC");
				e.printStackTrace();
			}
		} else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				url = "jdbc:mysql://localhost:3306/" + dbName;
			} catch (ClassNotFoundException e) {
				System.out.println("Khong nhan duoc Driver JDBC");
				e.printStackTrace();
			}
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, username, password);
			pw.print("Ket noi thanh cong");
		} catch (SQLException e) {
			pw.print("Loi khi ket noi");
			e.printStackTrace();
		}
	}

}
