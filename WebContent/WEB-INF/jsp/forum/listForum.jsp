<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>话题</title>

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
			function gd1(){
				window.location.href="news/listNews.do";
			}
			function gd2(){
				window.location.href = "game/gameList.do";
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
					<div class="header-middle-logo">
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
							<a href="javascript:void(0)" onclick="gd2()">比赛</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="gd1()">新闻</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='player/listGoal.do'">数据</a>
						</li>
						<div class="clearfix">
						</div>
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
		<!-- //header -->
		<!-- article -->
		<div class="article">
			本功能暂未开发。。。
		</div>
		<!-- //article -->
		<!-- footer -->
		
		<!-- //footer -->
		<script type="text/javascript">
$(document).ready(function() {
	/*
	var defaults = {
		containerID: 'toTop', // fading element id
		containerHoverID: 'toTopHover', // fading element hover id
		scrollSpeed: 1200,
		easingType: 'linear' 
	};
	 */

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
