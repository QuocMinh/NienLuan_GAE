package com.dev.myproject;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {
	
	private final String USER_NAME = "cqm";
	private final String PASSWORD = "quocminh1995";
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public Database() {
	}
	
	public Database(PrintWriter pw) {
		String url = null;
		if(System.getProperty("com.google.appengine.runtime.version").startsWith("Google App Engine/")) {
			url = System.getProperty("cloud-database");
			try {
				Class.forName("com.mysql.jdbc.GoogleDriver");
			} catch (ClassNotFoundException e) {
				System.out.println("Khong nhan duoc Driver JDBC");
				e.printStackTrace();
			}
		} else {
			url = System.getProperty("local-database");
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.out.println("Khong nhan duoc Driver JDBC");
				e.printStackTrace();
			}
		}
		
		try {
			this.conn = DriverManager.getConnection(url, USER_NAME, PASSWORD);
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
	
	public void createTableUserIfNotExist() {
		String sql = "CREATE TABLE IF NOT EXISTS user("
				+ "userID INT NOT NULL AUTO_INCREMENT,"
				+ "email VARCHAR(100) NOT NULL UNIQUE,"
				+ "fullname VARCHAR(100),"
				+ "dob DATE,"
				+ "sex VARCHAR(7),"
				+ "lastLogin VARCHAR(30) NOT NULL, "
				+ "role INT(1) NOT NULL, " // 1: admin - 0: normal user
		        + "PRIMARY KEY (userID)"
		        + ")";
		try {
			conn.createStatement().executeUpdate(sql);
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh " + sql);
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
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
	}
	
	public void insertIntoUser(User user) {
		String sql = "INSERT INTO user(email, fullname, dob, sex, lastLogin, role) "
				+ "VALUE (?,?,?,?,?,?) "
				+ "ON DUPLICATE KEY UPDATE "
				+ "lastLogin='"+ user.getLastLogin() +"'";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getFullname());
			ps.setString(3, user.getDob());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getLastLogin());
			ps.setInt(6, user.getRole());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
	}
	
	public String getUserRole(String email) {
		String sql = "SELECT role FROM user WHERE email = '" + email + "'";
		String role = "guest";
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1) == 1) {
					role = "admin";
				}
			}
			
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
		
		return role;
	}
	
	public boolean checkUserExist(String email) {
		String sql = "SELECT lastLogin FROM user WHERE email = '" + email + "'";
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) return true;
			
		} catch (SQLException e) {
			System.out.println("Khong the thuc hien cau lenh: " + sql);
			e.printStackTrace();
		}
		
		return false;
	}
	
}
