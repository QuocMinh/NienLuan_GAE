<%@page import="com.google.appengine.api.users.UserService"%>
<%@page import="com.google.appengine.api.users.User"%>
<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String thisURL = request.getRequestURI();
	UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
%>
<div>
	You can Logout by <%=thisURL %>
	<a href="<%=userService.createLogoutURL("login.jsp")%>"> click here </a>
</div>
