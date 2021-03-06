<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>毕业设计过程管理系统</title>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="./index.css" rel="stylesheet">
	<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
	<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="nav">
	<ul>
		<li><a href="1">加入收藏</a></li>
		<li><a href="2">设为首页</a></li>
		<li><a href="3">联系站长</a></li>
	</ul>
</div>
<div class="header">
	<div class="text">毕业设计过程管理系统</div>
</div>
<div class="bread">
	<div class="text"><a href="${pageContext.request.contextPath}/student/studentLogin.jsp">学生登录</a> | <a href="${pageContext.request.contextPath}/teacher/teacherLogin.jsp">教师登录</a> | <a href="${pageContext.request.contextPath}/admin/adminLogin.jsp">管理员登录</a></div>
</div>
<div class="main">
	<div class="left">
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- 指示符 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- 轮播图片 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./picture01.jpg">
				</div>
				<div class="carousel-item">
					<img src="picture02.jpg">
				</div>
				<div class="carousel-item">
					<img src="./picture03.jpg">
				</div>
			</div>

			<!-- 左右切换按钮 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>
		​
	</div>
	<div class="right">
		<div class="title">网站公告</div>
		<div class="content">
			<p>title1 --- 2020-03-11 10:04:07</p>
			<p>西安邮电大学毕业设计过程管理系统</p>
			<br>
			<p>title1 --- 2020-03-07 10:04:07</p>
			<p>本行将在3月12日举行季度会议</p>
		</div>
	</div>
</div>
<div class="footer">
	<div class="text">西安邮电大学毕业设计过程管理系统</div>
</div>
</body>
</html>