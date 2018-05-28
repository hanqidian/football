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

		<title>赛事直播</title>

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
			//定时刷新(3S)
			setTimeout("form1.submit();",3000);
			function register(){
			window.location.href="user/toRegister.do";
			}
			function login(){
				window.location.href="user/toLogin.do";
			}
			function fh(){
				window.location.href = "toIndex.do";
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
					
				</div>
				<!-- //container -->
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
		<form action="game/look.do" id="form1" method="post">
			<input type="hidden" name="gameId" value="${game.gameId}"/>
			<a href="javascript:void(0)" onclick="fh()">回到首页</a>
			<table border="0" width="1000px" align="center">
		    	<tr height="50px"  style="background-color: #1CD5B5">
		    		<td width="400px" style="font-size: 22px" align="right">
		    			${game.homeTeam}
		    		</td>
		    		<td width="200px" align="center">
		    			${game.gameType}
		    		</td>
		    		<td width="400px" style="font-size: 22px">
		    			${game.guestTeam}
		    		</td>
		    	</tr>
		   		<tr height="50px"  style="background-color: #1CD5B5">
		    		<td width="400px" style="font-size: 22px" align="right">
		    			${game.goal}
		    		</td>
		    		<td width="200px" align="center">
		    			${game.gameState}
		    		</td>
		    		<td width="400px" style="font-size: 22px">
		    			${game.fumble}
		    		</td>
		    	</tr>	
		    </table>
		</form>
		<table border="0" align="center" width="1000px">
			<tr>
				<td width="500px" valign="top">
					<table border="0">
						<c:if test="${!empty liveWordList}">
							<c:forEach items="${liveWordList}" var="l">
								<tr height="30px">
									<td>
										${l.liveTime}<font color="red">=>></font>${l.liveWord}
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty liveWordList}">
							<tr height="30px"><td>暂无文字直播</td></tr>
						</c:if>
					</table>
				</td>
				<td width="500px" valign="top">
					<table border="0">
						<c:if test="${!empty gifList}">
							<c:forEach items="${gifList}" var="g">
								<tr>
									<td>
										<img alt="" src="/footballGif/${g.gifId}.gif" width="400px" height="200px">
									</td>
								</tr>
								<tr>
									<td>
										${g.gifTime}<font color="red">=>></font>${g.gifText}
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty gifList}">
							<tr><td>暂无gif图</td></tr>
						</c:if>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
