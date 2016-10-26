<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SpringMVC - Login</title>
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
<!-- JAVASCRIPT -->
<script type="text/javascript">
    var check = 0;
    
	function showLoginForm() {
		check++;
		if (check % 2 != 0) {
			var x = document.getElementById("login-form");
			x.style.display = 'block';
		} else {
			document.getElementById("login-form").style.display = 'none';
		}
	}
</script>
</head>
<body class="bg-1">
	<div class="container text-center">
        <div class="row">
            <div class="center-block">
                <div class="col-md-6 col-md-offset-3 main page-shadow">
                    <h3>Chào mừng bạn đến trang cá nhân của tôi!</h3>
                    <img class="img-circle" src="../image/cv-minh.jpg">
                    <h2>CHÂU QUỐC MINH</h2>
                    <!-- 
                    <h3>Bạn là?</h3>
                    <a href="cv-page.jsp" class="btn btn-success btn-lg btn-block">
                        Tôi là khách ghé thăm
                    </a>
                    <a href="#login-form" class="btn btn-danger btn-lg btn-block" onclick="showLoginForm()">
                        Tôi là quản trị viên
                    </a>
                     -->
                    <!-- LOGIN FRAME -->
                    
                    <div id="login-form">
                        <span class="glyphicon glyphicon-circle-arrow-down login-icon"></span>
                        <div class="login-frame">
                            <h3>Vui lòng đăng nhập</h3>
                            <a href="LoginServlet">Đăng nhập bằng tài khoảng Google</a>
                            <form id="login" action="LoginServlet" method="post">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email@gmail.com"/>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </div>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Input your password">
                                </div>
                                <div align="left" class="checkbox">
                                    <label for="c1"><input type="checkbox" id="c1" name="cc"><i>Nhớ thông tin</i></label>
                                </div>
                                <input type="submit" name="submit" value="Đăng Nhập" class="btn btn-primary btn-block">
                                <a href="#" class="btn-link create"><i>Tạo tài khoản</i></a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>