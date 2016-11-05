package com.dev.myproject;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.google.appengine.api.utils.SystemProperty;
import com.google.appengine.api.utils.SystemProperty.Environment.Value;

public class Database {
	
	private String username = "cqm";
	private String password = "quocminh1995";
	private String dbName = "learninggae";
	
	private Connection conn;
	private PreparedStatement ps;
	// private ResultSet rs;

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
			this.conn = DriverManager.getConnection(url, username, password);
			System.out.println("Ket noi thanh cong");
			createTableVisitorIfNotExist();
		} catch (SQLException e) {
			System.out.println("Loi khi ket noi");
			e.printStackTrace();
		}
	}
	
	public void createTableVisitorIfNotExist() {
		String sql = "CREATE TABLE IF NOT EXISTS visitor("
				+ "visitorID INT NOT NULL AUTO_INCREMENT,"
				+ "email VARCHAR(100) NOT NULL UNIQUE,"
				+ "nickname VARCHAR(100) NOT NULL,"
				+ "timestamp VARCHAR(30) NOT NULL,"
		        + "PRIMARY KEY (visitorID)"
		        + ")";
		
		try {
			conn.createStatement().executeUpdate(sql);
			
		} catch (SQLException e) {
			System.out.println("Khong the thu hien cau SQL: " + sql);
			e.printStackTrace();
		}
	}
	
	public void insertIntoVisitor(String email, String nickname, String timestamp) {
		String sql = "INSERT INTO visitor(email, nickname, timestamp) "
				+ "VALUE (?,?,?) "
				+ "ON DUPLICATE KEY UPDATE "
				+ "nickname='"+ nickname +"', "
				+ "timestamp='"+ timestamp +"'";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, nickname);
			ps.setString(3, timestamp);
			
			if(ps.executeUpdate() > 0) {
				System.out.println("Insert thanh cong: " + sql);
			}
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
	}

}
