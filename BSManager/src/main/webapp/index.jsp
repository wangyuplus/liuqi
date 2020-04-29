<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页|计算机学院毕业设计过程管理系统</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- <link type="text/css" rel="stylesheet" href="../dist/css/bootstrap.css">
<script type="text/javascript" src="../dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../dist/js/jquery.min.js"></script> -->
</head>
<body bgcolor="#bcd09b">
<!-- 此页面为学生登陆界面 -->
	<div class="container">
		<!-- Static navbar -->
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">计算机学院毕业设计过程管理系统</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">主页</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="${pageContext.request.contextPath}/student/studentLogin.jsp">学生登录</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/teacherLogin.jsp">教师登录</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/admin/adminLogin.jsp">管理员登录</a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid --> </nav>
	</div>
	<!-- /container -->
	<div class="container">
		<img src="images/home.jpg" class="img-rounded">
	</div>
	<div class="container">
		<!-- Static navbar -->
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<p style="text-align: center"><a class="navbar-brand" href="#" >版权所有：西安邮电大学计算机学院  刘琦 2020</a></p>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid --> </nav>
	</div>
	<%-- <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
					<li class="active"></li>
			</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="${pageContext.request.contextPath}/teacher/teacherLogin.jsp">教师登陆</a>
					</li>
				</ul>
			</div>
	<div class="container" align="right">
			<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="${pageContext.request.contextPath}/teacher/teacherLogin.jsp">教师登陆</a>
					</li>
			</ul>
			<button type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
			</button>
		</a>
	</div> --%>
	<!-- <div class="container buttomCover" align="center" >
	<h2 text-align:center;color:#15428B; margin:0px; padding:0px;line-height:10px; font-weight:normal;">版权所有：西安邮电大学计算机学院  刘琦 2020</h2>
	</div> -->
</body>
</html>