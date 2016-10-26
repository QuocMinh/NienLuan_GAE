package com.dev.myproject;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.appengine.api.utils.SystemProperty;
import com.google.appengine.api.utils.SystemProperty.Environment.Value;

public class Database {
	
	private String username = "cqm";
	private String password = "quocminh1995";
	private String dbName = "";
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public Database() {
	}
	
	public Database(PrintWriter pw) {
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
	
	public void insertIntoUser() {
		String sql = "IINSERT INTO user VALUE (?,?)";
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
	}

}
