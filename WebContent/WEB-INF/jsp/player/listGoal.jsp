<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>数据</title>

		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="Forward Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all">
		<!-- js -->
		<script src="js/jquery.min.js">
</script>
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- js -->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js">
</script>
		<script type="text/javascript" src="js/easing.js">
</script>
		<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate( {
			scrollTop : $(this.hash).offset().top
		}, 1000);
	});
});
</script>
		<!-- start-smoth-scrolling -->

		<script type="text/javascript">
			function register(){
			window.location.href="user/toRegister.do";
			}
			function login(){
				window.location.href="user/toLogin.do";
			}
		</script>

	</head>

	<body>

		<!-- header -->
		<div class="header">
			<div class="header-top">
				<!-- container -->
				<div class="container">
					<div class="header-top-left">
						
					</div>
					<div class="header-top-right">
						<a>${userName}</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a style="color:white">欢迎访问，请先</a>
						<a href="javascript:void(0)" onclick="register()">注册</a>
						<a style="color:white">或</a>
						<a href="javascript:void(0)" onclick="login()">登录</a>
					</div>
					<div class="clearfix">
					</div>
				</div>
				<!-- //container -->
			</div>
			<div class="header-middle">
				<!-- container -->
				<div class="container">
					<div class="header-middle-logo" style="height: 79px;overflow: hidden;">
						<a href="index.jsp">天下足球网</a>
					</div>
					<div class="header-middle-right">
						
					</div>
					<div class="clearfix">
					</div>
				</div>
				<!-- //container -->
			</div>
			<div class="top-nav">
				<!-- container -->
				<div class="container">
					<span class="menu">MENU</span>
					<ul class="nav1">
						<li>
							<a href="#">首页</a>
						</li>
						<li>
							<a href="aboutUs.jsp">关于我们</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href = 'game/gameList.do'">比赛</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href = 'news/listNews.do'">新闻</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='forum/listForum.do'">话题</a>
						</li>
					</ul>
					<!-- script-for-menu -->
					<script>
$("span.menu").click(function() {
	$("ul.nav1").slideToggle(300, function() {
		// Animation complete.
		});
});
</script>
					<!-- /script-for-menu -->
				</div>
				<!-- //container -->
			</div>
			<div class="blue">
			</div>
		</div>
		<table border="1" align="center" width="1000px">
			<tr height="50px">
				<td style="font-size: 17px;background-color: #1CD5B5;" colspan="9">
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listGoal.do'">中超</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listXj.do'">西甲</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listDj.do'">德甲</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listYj.do'">意甲</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listFj.do'">法甲</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="window.location.href = 'player/listYc.do'">英超</a>
				</td>
			</tr>
			<tr height="40px" align="center">
				<td width="100px">排名</td>
				<td width="200px">球队</td>
				<td width="100px">积分</td>
				<td width="100px">胜</td>
				<td width="100px">平</td>
				<td width="100px">负</td>
				<td width="100px">进球</td>
				<td width="100px">失球</td>
				<td width="100px">场次</td>
			</tr>
			<c:if test="${empty list}">
				<tr height="30px" align="center">
					<td colspan="9">
						暂时没有球队数据!
					</td>
				</tr>
			</c:if>
			<%int count = 1; %>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="l">
					<tr height="30px" align="center">
						<td><%=count%></td>
						<td>${l.clubName}</td>
						<td>${l.clubScore}</td>
						<td>${l.clubWin}</td>
						<td>${l.clubTie}</td>
						<td>${l.clubLose}</td>
						<td>${l.clubGoal}</td>
						<td>${l.clubFumble}</td>
						<td>${l.gameCount}</td>
					</tr>
					<%count++; %>
				</c:forEach>
			</c:if>
		</table>
		<script type="text/javascript">
$(document).ready(function() {
	$().UItoTop( {
		easingType : 'easeOutQuart'
	});
});
</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span>
		</a>
		<!-- content-Get-in-touch -->

	</body>
</html>
