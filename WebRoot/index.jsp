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

		<title>首页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="Forward Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
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
		<!-- 图片轮播相关 -->
		<link rel="stylesheet" href="css/style1.css">
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
}
</script>
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
		function dj1(count1){
			document.getElementById("myFormLook"+count1).submit();
		}
		function dj2(count2){
			document.getElementById("myFormLooking"+count2).submit();
		}
		function gd1(){
			window.location.href="news/listNews.do";
		}
		function gd2(){
			window.location.href = "game/gameList.do";
		}
		function dj3(count3){
			document.getElementById("myFormLooks"+count3).submit();
		}
		function gk(count4){
			document.getElementById("myFormLookGame"+count4).submit();
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
					<span class="menu"></span>
					<ul class="nav1">
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
						<li>
							<a href="javascript:void(0)" onclick="window.location.href='forum/listForum.do'">话题</a>
						</li>
						
					</ul>
					
				</div>
				<!-- //container -->
			</div>
			<div class="blue">
			</div>
		</div>
		
		
		<table border="0" align="center">
			<tr height="20px"><td width="1200px" colspan="2"></td></tr>
			<tr height="400px">
			 	<!-- 滚屏 -->
				<td width="800px">
					<center>
						<div class="demo">
							<a class="control prev"></a>
							<a class="control next abs"></a><!--自定义按钮，移动端可不写-->
							<div class="slider"><!--主体结构，请用此类名调用插件，此类名可自定义-->
								<ul>
									<%int count1 = 1; %>
									<c:if test="${!empty newsList1}">
										<c:forEach items="${newsList1}" var="n1">
											<li>
												<a href="javascript:void(0)" onclick="dj1('<%=count1%>')">
													<img src="/footballPic/${n1.pictureId}.jpg" alt="${n1.newsTitle}"/>
												</a>
												<form id="myFormLook<%=count1%>" action="news/look.do" method="post">
													<input type="hidden" name="newsId" value="${n1.newsId}"/>
												</form>
											</li>
											<%count1++;%>
										</c:forEach>
									</c:if>
								</ul>
							</div>
						</div>
						<script src="js/YuxiSlider.jQuery.min.js"></script>
						<script>
						$(".slider").YuxiSlider({
							width:800, //容器宽度
							height:400, //容器高度
							control:$('.control'), //绑定控制按钮
							during:2000, //间隔2秒自动滑动
							speed:800, //移动速度0.8秒
							mousewheel:false, //是否开启鼠标滚轮控制
							direkey:true //是否开启左右箭头方向控制
						});
						</script>
					</center>
				</td>
				<td width="400px">
					<table border="0">
						<tr height="50px">
							<td width="150px"><font size="5px"><a href="javascript:void(0)" onclick="gd2()">更多赛事>>></a></font></td>
							<td width="200px"></td>
							<td width="50px"></td>
						</tr>
						<%int count4 = 1; %>
						<c:if test="${!empty gameList}">
							<c:forEach items="${gameList}" var="g">
								<tr height="35px">
									<td>${g.gameTime}</td>
									<td>
										<a href="javascript:void(0)" onclick="gk('<%=count4%>')">
											${g.homeTeam}<font color="red">VS</font>${g.guestTeam}
										</a>
										<form action="game/look.do" id="myFormLookGame<%=count4%>" method="post">
											<input type="hidden" name="gameId" value="${g.gameId}"/>
										</form>
									</td>
									<td>${g.gameState}</td>
								</tr>
								<%count4++; %>
							</c:forEach>
						</c:if>
					</table>
				</td>
			</tr>
			<tr height="30px"></tr>
			<tr height="330px">
				<td colspan="2">
					<table border="0">
						<tr height="330px">
							<td width="700px">
								<table border="0">
									<tr height="30px">
										<td width="500px" style="color:red;font-size: 20px">今日头条</td>
										<td width="200px" style="color: #005EAC">
											<a href="javascript:void(0)" onclick="gd1()">更多新闻>>></a>
										</td>
									</tr>
									<%int count2 = 1;%>
									<tr height="30px">
										<td style="color: blue;font-size: 18px">
											<a href="javascript:void(0)" onclick="dj2('<%=count2%>')">${news.newsTitle}</a>
											<form id="myFormLooking<%=count2%>" action="news/look.do" method="post">
												<input type="hidden" name="newsId" value="${news.newsId}"/>
											</form>
										</td>
										<td>${news.newsTime}</td>
									</tr>
									<c:if test="${!empty newsList2}">
										<c:forEach items="${newsList2}" var="n2">
											<%count2++;%>
											<tr height="30px">
												<td>
													<a href="javascript:void(0)" onclick="dj2('<%=count2%>')">${n2.newsTitle}</a>
													<form id="myFormLooking<%=count2%>" action="news/look.do" method="post">
														<input type="hidden" name="newsId" value="${n2.newsId}"/>
													</form>
												</td>
												<td>${n2.newsTime}</td>
											</tr>	
										</c:forEach>
									</c:if>
								</table>
							</td>
							<td width="500px">
								<table border="0">
									<tr height="30px">
										<td style="color: red;font-size: 20px;" width="400px">昨日今天</td>
										<td width="100px">
											<a href="javascript:void(0)" onclick=""></a>
										</td>
									</tr>
									<%int count3 = 1;%>
									<c:if test="${!empty newsList3}">
										<c:forEach items="${newsList3}" var="n3">
											<tr height="30px">
												<td>
													<a href="javascript:void(0)" onclick="dj3('<%=count3%>')">${n3.newsTitle}</a>
													<form id="myFormLooks<%=count3%>" action="news/look.do" method="post">
														<input type="hidden" name="newsId" value="${n3.newsId}"/>
													</form>
												</td>
												<td>${n3.readCount}</td>
											</tr>
											<%count3++;%>
										</c:forEach>
									</c:if>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<!-- how -->
		<div class="how">
			<!-- container -->
			<div class="container">
				<div class="how-top-grids">
					<div class="col-md-7 how-left">
						
						<div class="clearfix">
						</div>
					</div>
				</div>
				<!-- //container -->
			</div>
		</div>
		<!-- //how -->
		
		
		<!-- footer -->
		<div class="footer">
			<!-- container -->
			
			<!-- //container -->
		</div>
		<!-- //footer -->
		<script type="text/javascript">
			$(document).ready(function() {
				$().UItoTop( {
					easingType : 'easeOutQuart'
				});
			});
		</script>
		<a href="#" id="toTop" style="display: block;"> 
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
		<!-- content-Get-in-touch -->
	</body>
</html>
