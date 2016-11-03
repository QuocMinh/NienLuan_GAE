<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CV page</title>
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
<body class="bg-1">
	<jsp:include page="header.jsp"/>	
	<!-- CONTENT -->
    <div class="container">
        <!-- BODY -->
        <div class="row page-shadow body">
            <!-- LEFT -->
            <div class="col-md-5 left left-shadow">
                <!-- IMAGE PROFILE -->
                <div class="container-fluid text-center">
                    <img class="img-circle" src="../image/cv-minh.jpg">
                    <h2>CHÂU QUỐC MINH</h2>
                    <h3 style="padding: 0; margin: 0 0 20px 0">Lập trình viên</h3>
                </div> <!-- END IMAGE PROFILE -->

                <!-- BASIC INFO -->
                <div class="container-fluid">
                    <div class="title-left" align="center"><h3> THÔNG TIN CƠ BẢN </h3></div>
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td><span class="glyphicon glyphicon-calendar"></span></td>
                                <td>28/10/1995</td>
                            </tr>
                            <tr>
                                <td><span class="glyphicon glyphicon-user"></span></td>
                                <td>Nam</td>
                            </tr>
                            <tr>
                                <td><span class="glyphicon glyphicon-phone"></span></td>
                                <td>0123 94 96 986</td>
                            </tr>
                            <tr>
                                <td><span class="glyphicon glyphicon-envelope"></span></td>
                                <td>cqminh1995@gmail.com</td>
                            </tr>
                            <tr>
                                <td><span class="glyphicon glyphicon-screenshot"></span></td>
                                <td>218/40 Trần Hưng Đạo, Ninh Kiều, Cần Thơ</td>
                            </tr>
                            <tr>
                                <td><span class="glyphicon glyphicon-globe"></span></td>
                                <td>https://www.facebook.com/quocminh.chau</td>
                            </tr>
                        </table>
                    </div>
                </div> <!-- END BASIC INFO -->

                <!-- CAREER GOALS -->
                <div class="container-fluid">
                    <div class="title-left" align="center"><h3>MỤC TIÊU</h3></div>
                    <div class="container-fluid goals">
                        <h3 align="center">2013 - 2018</h3>
                        <p>Được trải nghiệm những môi trường làm việc chuyên nghiệp trong lĩnh vực phát triển phần mềm. Không ngừng học hỏi, phát triển năng lực bản thân để nâng cao chuyên môn và hoàn thành tốt các nhiệm vụ công việc. Trở thành 1 Coder giỏi sau 1 năm tốt nghiệp Đại học.</p>
                        <hr>
                        <h3 align="center">2018 - 2023</h3>
                        <p>Được làm trong công ty yêu thích với mức lương không quá thấp và ổn định, tiếp tục trao dồi kiến thức cũng như học hỏi những công nghệ mới để phát triển năng lực của bản thân tạo nền tảng vững chắc cho định hướng của tương lai.</p>
                        <hr>
                        <h3 align="center">2023 - 2028</h3>
                        <p>Tự phát triển 1 dự án lớn và lập công ty để quản lý dự án đó.</p>
                    </div>
                </div> <!-- END CAREER GOALS -->

                <!-- SKILL -->
                <div class="container-fluid">
                    <div class="title-left" align="center"><h3>KỸ NĂNG</h3></div>
                    <div class="container-fluid">
                        <h3>Photoshop</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:80%"></div>
                        </div>
                        <h3>HTML & CSS</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%"></div>
                        </div>
                        <h3>Javascript & Jquery</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:40%"></div>
                        </div>
                        <h3>JSP & Servlet</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%"></div>
                        </div>
                        <h3>Spring MVC & Hibernate</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%"></div>
                        </div>
                        <h3>Microsoft Offices</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:90%"></div>
                        </div>
                    </div>
                </div> <!-- END SKILL -->
            </div> <!-- END LEFT -->

            <!-- RIGHT -->
            <div class="col-md-7 right">
                <!-- ACADEMIC LEVEL -->
                <div class="container-fluid">
                    <h2><span class="glyphicon glyphicon-education"></span> <b>HỌC VẤN</b></h2>
                    <hr>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Thời gian</th>
                                    <th>Chi tiếc</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>09/2013 đến nay</td>
                                    <td>
                                        <b>Trường Đại học Cần Thơ</b> <br>
                                        <i><small>Truyền thông và mạng máy tính</small></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>08/2011 - 06/2013</td>
                                    <td>
                                        <b>Trường THPT Bạc Liêu</b> <br>
                                        <i><small>Trung học phổ thông</small></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>08/2007 - 06/2013</td>
                                    <td>
                                        <b>Trường THCS Trần Văn Ơn</b> <br>
                                        <i><small>Trung học cơ sở</small></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>08/2002 - 06/2007</td>
                                    <td>
                                        <b>Trường Tiểu học Long Thạnh C</b> <br>
                                        <i><small>Tiểu học</small></i>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> <!-- END ACADEMIC LEVEL -->

                <!-- ACHIEVEMENTS -->
                <div class="container-fluid">
                    <h2><span class="glyphicon glyphicon-fire"></span> <b>THÀNH TÍCH</b></h2>
                    <hr>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-primary">
                            <div class="panel-heading text-center">
                                <h3 class="panel-title">
                                    <a href="#hoctap" data-toggle="collapse" data-parent="#accordion">HỌC TẬP</a>
                                </h3>
                            </div>
                            <div id="hoctap" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Năm học</th>
                                                    <th>Thành tích</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2013 - 2014</td>
                                                    <td>
                                                        <b>Học kỳ 1: </b>ĐTB: 2.79 - ĐRL: 78<br>
                                                        <b>Học kỳ 2: </b>ĐTB: 2.18 - ĐRL: 77<br>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2014 - 2015</td>
                                                    <td>
                                                        <b>Học kỳ 1: </b>ĐTB: 2.74 - ĐRL: 86<br>
                                                        <b>Học kỳ 2: </b>ĐTB: 2.24 - ĐRL: 89<br>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2015 - 2016</td>
                                                    <td>
                                                        <b>Học kỳ 1: </b>ĐTB: 2.82 - ĐRL: 96<br>
                                                        <b>Học kỳ 2: </b>ĐTB: 2.25 - ĐRL: 90<br>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2016 - 2017</td>
                                                    <td>
                                                        <i><small>Đang cập nhật...</small></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-primary">
                            <div class="panel-heading text-center">
                                <h3 class="panel-title">
                                    <a href="#phongtrao" data-toggle="collapse" data-parent="#accordion">PHONG TRÀO</a>
                                </h3>
                            </div>
                            <div id="phongtrao" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <ul>
                                        <li>Giấy khen của Đoàn trường ĐH Cần Thơ đạt thành tích tốt trong chiến dịch thanh niên tình nguyện hè năm 2014.</li>
                                        <li>Giấy khen của Hội sinh viên trường ĐH Cần Thơ và Giấy khen của UBND Tỉnh Bạc Liêu có nhiều  thành tích xuất sắc trong công tác Hội và phong trào sinh viên năm học 2014 - 2015.</li>
                                        <li>Giấy khen của Hội sinh viên Thành Phố Cần Thơ cho Cán bộ Hội có thành tích xuất sắc trong công tác Hội và phong trào sinh viên năm học 2015 - 2016.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- END ACHIEVEMENTS -->

                <!-- EXPERIENCEs -->
                <div class="container-fluid">
                    <h2><span class="glyphicon glyphicon-leaf"></span> <b>KINH NGHIỆM</b></h2>
                    <hr>
                    <ul>
                        <li>Thành thạo tin học căn bản.</li>
                        <li>Tự làm các đồ án các môn học trong chương trình học.</li>
                        <li>Có kiến thức về Android. Tự làm 1 project game trên Android thể loại đua xe có tên "Fast-Race" và một số ứng dụng khác.</li>
                        <li>Thiết kế các ấn phẩm như: Banner, Background, Cardvisit, ...</li>
                        <li>Chỉnh sửa ảnh và thiết kế Layout Web căn bản với sự hỗ trợ của: Photoshop, Corel, HTML, CSS, ...</li>
                        <li>Chủ động có trách nhiệm với công việc, nhiệm vụ được phân công, có khả năng làm việc độc lập tốt hoặc làm theo nhóm, có sức khỏe tốt sẵn sàng làm việc với áp lực cao.</li>
                        <li>Trong thời gian học tại trường: Làm Liên Chi hội trưởng LCHSV Bạc Liêu tại trường ĐH Cần Thơ, làm thêm một số công việc như phục vụ nhà hàng, quán ăn, quán cafe, ...</li>
                        <li>Có khả năng làm việc tốt với SrpingMVC và Hibernate Framework.</li>
                        <li>Chứng chỉ FPT Global Software (Fresher) do FPT Software cấp.</li>
                    </ul>
                </div> <!-- END EXPERIENCEs -->

                <!-- HOPPIES -->
                <div class="container-fluid">
                    <h2><span class="glyphicon glyphicon-equalizer"></span> <b>SỞ THÍCH</b></h2>
                    <hr>
                    <div class="container-fluid">
                        <table width="100%" class="hoppies">
                            <tr align="center">
                                <td><img src="../image/m-code.png" class="img img-responsive"></td>
                                <td><img src="../image/m-soccer.png" class="img img-responsive"></td>
                                <td><img src="../image/m-trochoi.png" class="img img-responsive"></td>
                                <td><img src="../image/m-music.png" class="img img-responsive"></td>
                            </tr>
                            <tr align="center">
                                <td>Coding</td>
                                <td>Bóng đá</td>
                                <td>Chơi game</td>
                                <td>Nghe nhạc</td>
                            </tr>
                        </table>
                    </div>
                </div><!-- END HOPPIES -->
            </div> <!-- END RIGHT -->
        </div> <!-- END BODY -->

        <!-- FOOTER -->
        <div align="center">
            <i><small>Latest update: 29/08/2016 - Design by: Chau Quoc Minh</small></i>
        </div> <!-- END FOOTER -->
    </div> <!-- END CONTENT -->
</body>
</html>