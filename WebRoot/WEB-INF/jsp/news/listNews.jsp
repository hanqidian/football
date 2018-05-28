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

		<title>新闻</title>

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
	<script type="text/javascript">
		function register(){
			window.location.href="user/toRegister.do";
		}
		function login(){
			window.location.href="user/toLogin.do";
		}
		function zg(){
			window.location.href="news/listZg.do";
		}
		function xj(){
			window.location.href="news/listXj.do";
		}
		function yj(){
			window.location.href="news/listYj.do";
		}
		function dj(){
			window.location.href="news/listDj.do";
		}
		function fj(){
			window.location.href="news/listFj.do";
		}
		function yc(){
			window.location.href="news/listYc.do";
		}
		function gj(){
			window.location.href="news/listGj.do";
		}
		function ck(count){
			document.getElementById("myFormLook"+count).submit();
		}
	</script>
		<!-- start-smoth-scrolling -->

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
						<a href="index.jsp">天下足球网</a>
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
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="aboutUs.jsp">关于我们</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='game/gameList.do'">比赛</a>
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
	    		<tr height="50px"  style="background-color: #1CD5B5">
	    			<td width="700px" style="font-size: 22px">
	    				<a href="javascript:void(0)" onclick="zg()">中国足球&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="xj()">西甲&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="dj()">德甲&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="yj()">意甲&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="fj()">法甲&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="yc()">英超&nbsp;&nbsp;</a>
	    				<a href="javascript:void(0)" onclick="gj()">国际足球</a>
	    			</td>
	    			<td width="300px"></td>
	    		</tr>
	    	<%int count=1;%>
	    	<c:if test="${!empty newsList}">
		    	<c:forEach items="${newsList}" var="n">
		    		<tr height="40px">
		    			<td>
		    				<a href="javascript:void(0)" onclick="ck('<%=count%>')">${n.newsTitle}</a>
		    				<form id="myFormLook<%=count%>" action="news/look.do" method="post">
		    					<input type="hidden" name="newsId" value="${n.newsId}"/>
		    				</form>
		    			</td>
		    			<td style="color: #989DA2">${n.newsTime}<%count++; %></td>
		    		</tr>
		    	</c:forEach>
	    	</c:if>
	    </table>

	</body>
</html>
