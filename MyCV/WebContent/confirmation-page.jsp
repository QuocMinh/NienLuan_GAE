<%@page import="com.google.appengine.api.users.User"%>
<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@page import="com.google.appengine.api.users.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirm request</title>
<link rel="icon" type="image/png" href="../image/Admin-User.png"/>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="../css/login.css">
<!-- Bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- FONT -->
<link href="https://fonts.googleapis.com/css?family=Andika" rel="stylesheet">
</script>
</head>
<body class="bg-1">
	<%
		String userEmail = request.getParameter("userEmail");
	%>
	<div class="container text-center">
        <div class="row">
            <div class="center-block">
                <div class="col-md-6 col-md-offset-3 main page-shadow">
                	<h1>Chào Minh!</h1>
                	<h2>Người dùng <%=userEmail%> muốn trở thành QTV.</h2>
                    <a href="/confirm-request?userEmail=<%=userEmail%>&result=yes" class="btn btn-info btn-lg" role="button">
                    	Xác nhận
                    </a>
                    <a href="/confirm-request?userEmail=<%=userEmail%>&result=no" class="btn btn-warning btn-lg" role="button">
                    	Hủy bỏ
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>