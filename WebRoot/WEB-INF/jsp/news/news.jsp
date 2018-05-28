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
		<!-- start-smoth-scrolling -->

		<script type="text/javascript">
			function register(){
			window.location.href="user/toRegister.do";
			}
			function login(){
				window.location.href="user/toLogin.do";
			}
			function jb(count){
				document.getElementById("myFormJb"+count).submit();
			}
			function dz(count){
				document.getElementById("myFormDz"+count).submit();
			}
			function gd2(){
				window.location.href = "game/gameList.do";
			}
			function zc(){
				document.getElementById("myFormZc").submit();
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
							<a href="index0.jsp">首页</a>
						</li>
						<li>
							<a href="aboutUs.jsp">关于我们</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="gd2()">比赛</a>
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

		<table border="0" width="1000px" align="center">
	    	<tr height="40px">
	    		<td></td>
	 		</tr>
	 		<tr height="50px">
	 			<td align="center">
	 				<font size="5px">${news.newsTitle}</font>
	 			</td>
	 		</tr>
	 		<tr height="20px">
	 			<td align="center">
	 				<font color="#989DA2">来源:${news.newsWriter} ${news.newsTime}</font>
	 			</td>
	 		</tr>
	 		<tr height="5px">
	 			<td>
	 				<hr width="1000px" size="1"/>
	 			</td>
	 		</tr>
	 		<tr height="500px">
	 			<td width="1000px" align="center">
	 				<img src="/footballPic/${news.pictureId}.jpg" width="1000px" height="500px"/>
	 			</td>
	 		</tr>
	 		<tr height="30px"></tr>
	 		<tr>
	 			<td>
	 				&nbsp;&nbsp;<font size="4px">${news.newsContent}</font>
	 			</td>
	 		</tr>
	    </table><br/><br/>

		<form action="news/addComment.do" method="post">
			<input type="hidden" name="newsId" value="${news.newsId}"/>
			<input type="hidden" name="commentWriter" value="${userName}"/>
			<table border="0" width="1000px" align="center">
				<tr height="30px">
					<td width="700px">
						<textarea rows="5" cols="100" name="commentText"></textarea>
					</td>
					<td width="300px" align="center">
						<input type="submit" value="评论" style="width: 100px;height: 30px"/>
					</td>
				</tr>
				<tr height="20px">
					<td colspan="2"><font color="red">${tishi3}</font></td>
				</tr>
			</table>
		</form>
		
		<table border="0" width="1000px" align="center">
			<tr height="20px">
				<td align="right">
					<form action="news/likeNews.do" method="post" id="myFormZc">
						<input type="hidden" name="newsId" value="${news.newsId}">
					</form>
					<a href="javascript:void(0)" onclick="zc()">支持一下</a>
				</td>
			</tr>
		</table>
		
		<table width="1000px" align="center" border="0">
			<%int count=1; %>
			<c:if test="${!empty commentList}">
				<c:forEach items="${commentList}" var="c">
					<tr height="30px">
						<td width="100px" align="right">${c.commentWriter}:</td>
						<td width="600px">${c.commentText}</td>
						<td width="200px">推荐:${c.readCount}</td>
						<td width="100px">
							<form action="news/jb.do" id="myFormJb<%=count%>">
								<input type="hidden" name="commentWriter" value="${c.commentWriter}"/>
								<input type="hidden" name="newsId" value="${news.newsId}"/>
							</form>
							<form action="news/dz.do" id="myFormDz<%=count%>">
								<input type="hidden" name="commentWriter" value="${c.commentWriter}"/>
								<input type="hidden" name="newsId" value="${news.newsId}"/>
								<input type="hidden" name="commentId" value="${c.commentId}"/>
							</form>
							<a href="javascript:void(0)" onclick="jb('<%=count%>')">举报</a>
							<a href="javascript:void(0)" onclick="dz('<%=count%>')">点赞</a>
						</td>
					</tr>
					<%count++; %>
				</c:forEach>
			</c:if>
			<c:if test="${empty commentList}">
				<tr height="30px">
					<td align="center" colspan="4">
						<font size="5px">暂无评论</font>
					</td>
				</tr>
			</c:if>
		</table>

	</body>
</html>
