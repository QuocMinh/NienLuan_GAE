package com.dev.myproject;

public class User {
	
	private String email;
	private String fullname;
	private String dob; // yyyy-mm-dd
	private String sex;
	private String lastLogin; // Ngay gio hien tai
	private int role; // 1: Admin - 0: Normal User

	public User() {
	}

	public User(String email, String fullname, String dob, String sex,
			String lastLogin, int role) {
		super();
		this.email = email;
		this.fullname = fullname;
		this.dob = dob;
		this.sex = sex;
		this.lastLogin = lastLogin;
		this.role = role;
	}

	public User(String email, String lastLogin, int role) {
		super();
		this.email = email;
		this.lastLogin = lastLogin;
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(String lastLogin) {
		this.lastLogin = lastLogin;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
}
