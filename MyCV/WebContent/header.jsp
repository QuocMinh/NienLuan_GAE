<%@page import="com.google.appengine.api.users.UserService"%>
<%@page import="com.google.appengine.api.users.User"%>
<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- MENU -->
<%
	int role = (Integer) session.getAttribute("role");
	String userEmail = (String) session.getAttribute("userEmail");
	UserService userService = UserServiceFactory.getUserService();
%>
<div class="header">
	Xin chào <%=userEmail %>!
	<%
		if(role == 0) {
	%>
			Bạn đang xem với vai trò là Khách 
			<small><i>
				(
				<a href="/send-email?emailType=request-email">Yêu cầu quyền quản trị</a> -
				<a href="/login-page">Quay lại</a> -
				<a href="<%=userService.createLogoutURL("/login-page")%>">Đăng xuất</a>
				)
			</i></small>
	<%
		} else {
	%>
			Bạn đang xem với vai trò là QTV 
			<small><i>
				(
				<a href="/user-list">Xem danh sách User</a> -
				<a href="/login-page">Quay lại</a> -
				<a href="<%=userService.createLogoutURL("/login-page")%>">Đăng xuất</a>
				)
			</i></small>
	<%
		}
	%>
</div>