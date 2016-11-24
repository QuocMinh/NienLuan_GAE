<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
</head>
<body class="bg-1">
	<div class="container text-center">
        <div class="row">
            <div class="center-block">
                <div class="col-md-6 col-md-offset-3 main page-shadow">
                    <h3>Chào mừng bạn đến trang cá nhân của tôi!</h3>
                    <img class="img-circle" src="../image/cv-minh.jpg">
                    <h2>CHÂU QUỐC MINH</h2>
                    <span class="glyphicon glyphicon-circle-arrow-down login-icon"></span>
                    <a href="/authentication?role=guest" class="btn btn-info btn-lg btn-block" role="button">
                    	Xem với tư cách là Khách
                    </a>
                    <a href="/authentication?role=admin" class="btn btn-danger btn-lg btn-block" role="button">
                    	Xem với tư cách là Quản trị viên
                    </a>
                    
                    <!--  
                    LOGIN FRAME
                    
                    <div id="login-form">
                        <span class="glyphicon glyphicon-circle-arrow-down login-icon"></span>
                        <div class="login-frame">
                            <h3>Vui lòng đăng nhập</h3>
                            <a href="AuthenticationServlet">Đăng nhập bằng tài khoản Google</a>
                            <form id="login" action="LoginServlet" method="post">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <input type="email" class="form-control" id="email" 
                                    	name="email" placeholder="Email@gmail.com"/>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </div>
                                    <input type="password" class="form-control" id="password" 
                                    	name="password" placeholder="Input your password">
                                </div>
                                <input type="submit" name="submit" value="Đăng Nhập" 
                                	class="btn btn-primary btn-block">
                                <a href="#" class="btn-link create"><i>Tạo tài khoản</i></a>
                            </form>
                        </div>
                    </div>
                     -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>