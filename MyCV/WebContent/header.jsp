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
<%-- 
<div align="center">
	You can Logout by
	<a href="<%=userService.createLogoutURL("/LoginServlet")%>"> click here </a>
</div>
 --%>

<div>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Welcome <%=user.getNickname() %>!</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#section1">Section 1</a></li>
					<li><a href="#section2">Section 2</a></li>
					<li><a href="<%=userService.createLogoutURL("/LoginServlet")%>">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
</div>