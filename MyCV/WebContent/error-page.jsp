<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERROR</title>
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
	<div class="container text-center">
        <div class="row">
            <div class="center-block">
                <div class="col-md-6 col-md-offset-3 main page-shadow">
                	<h1>ERROR!!</h1>
                	<!-- Hinh anh -->
                	<img class="img-circle" src="../image/cv-minh.jpg">
                	<h2>Bạn không phải là quản trị viên!</h2>
                    <span class="glyphicon glyphicon-circle-arrow-down login-icon"></span>
                    <a href="/authentication?role=guest" class="btn btn-info btn-lg btn-block" role="button">
                    	Tiếp tục xem với vai trò là Khách
                    </a>
                    <a href="/login-page" class="btn btn-warning btn-lg btn-block" role="button">
                    	Trở về
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>