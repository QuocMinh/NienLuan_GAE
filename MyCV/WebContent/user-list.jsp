<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.dev.myproject.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dev.myproject.LoginServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User list</title>
<link rel="icon" type="image/png" href="../image/Admin-User.png"/>
<!-- css -->
<link rel="stylesheet" type="text/css" href="../css/cv.css">
<!-- Bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- FONT -->
<link href="https://fonts.googleapis.com/css?family=Andika" rel="stylesheet">
</head>
<body>
	<%
		ArrayList<User> userList = LoginServlet.db.getAllUser();
	%>
	<!-- CONTENT -->
	<div class="container">
		<div class="container-fluid">
			<div align="center"><h2>DANH SÁCH USER ĐÃ ĐĂNG NHẬP</h2></div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>EMAIL</th>
							<th>TÊN ĐẦY ĐỦ</th>
							<th>NGÀY SINH</th>
							<th>GIỚI TÍNH</th>
							<th>LẦN ĐĂNG NHẬP CUỐI CÙNG</th>
							<th>VAI TRÒ</th>
						</tr>
					</thead>
					<tbody>
						<%
							int i = 0;
							for(User user : userList) {
						%>
							<tr>
								<td><%=++i%></td>
								<td><%=user.getEmail()%></td>
								<td><%=user.getFullname()%></td>
								<td><%=user.getDob()%></td>
								<td><%=user.getSex()%></td>
								<td><%=user.getLastLogin()%></td>
							
						<%
								if(user.getRole() == 1) {
						%>
									<td>Admin</td>
								</tr>
						<%
								} else {
						%>
									<td>Guest</td>
								</tr>
						<%
								}
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>