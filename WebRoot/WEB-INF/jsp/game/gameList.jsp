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

		<title>比赛</title>

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
			function zg(){
				window.location.href = "game/zg.do";
			}
			function xj(){
				window.location.href = "game/xj.do";
			}
			function dj(){
				window.location.href = "game/dj.do";
			}
			function yj(){
				window.location.href = "game/yj.do";
			}
			function fj(){
				window.location.href = "game/fj.do";
			}
			function yc(){
				window.location.href = "game/yc.do";
			}
			function ck(count){
				document.getElementById("myFormLook"+count).submit();
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
							<a href="news.jsp">新闻</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='player/listGoal.do'">数据</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='forum/listForum.do'">话题</a>
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

		<table border="1" width="1000px" align="center">
			<tr height="50px" style="background-color: #1CD5B5">
				<td style="font-size: 22px" colspan="4">
					<a href="javascript:void(0)" onclick="zg()">中超&nbsp;&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" onclick="xj()">西甲&nbsp;&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" onclick="dj()">德甲&nbsp;&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" onclick="yj()">意甲&nbsp;&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" onclick="fj()">法甲&nbsp;&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" onclick="yc()">英超</a>
				</td>
			</tr>
			<%int count = 1; %>
			<c:if test="${!empty gameList}">
				<c:forEach items="${gameList}" var="g">
					<tr height="40px">
						<td width="200px">
							${g.gameType}
						</td>
						<td width="350px">
							<a href="javascript:void(0)" onclick="ck('<%=count%>')">
							${g.homeTeam}&nbsp;&nbsp;
							<font color="red">VS</font>
							&nbsp;&nbsp;${g.guestTeam}
							</a>
							<form action="game/look.do" id="myFormLook<%=count%>" method="post">
								<input type="hidden" name="gameId" value="${g.gameId}">
							</form>
						</td>
						<td width="200px">
							${g.gameState}
						</td>
						<td width="300px">
							${g.gameTime}
						</td>
					</tr>
					<%count++; %>
				</c:forEach>
			</c:if>
			<c:if test="${empty gameList}">
				<tr height="40px">
					<td colspan="4">暂无赛事</td>
				</tr>
			</c:if>
			
		</table>

	</body>
</html>
