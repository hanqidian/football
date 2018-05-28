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

		<title>登录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="Forward Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		
		<script type="text/javascript">
			function checkUserName(){
				var userName = document.getElementById("userNameId").value;
				if(userName == ""){
					document.getElementById("checkUserName").innerHTML = "<font color='red'>请输入用户名！</font>";
				}
			}
			function checkPassword(){
				var password = document.getElementById("passwordId").value;
				if(password == ""){
					document.getElementById("checkPassword").innerHTML = "<font color='red'>请输入密码！</font>";
				}
			}
		</script>
		
	</head>
	<body >
		<img alt="" src="images/1.jpg" style="width: 99%;height: 100%;position: absolute;top: 0px;" >
		<form action="user/login.do" method="post" style="position: absolute;z-index: 100;top:20%;left:30%;background-color: white;">
			<table border="0" width="600px" align="center">
				<tr height=50px>
					<td colspan="2">
						<a href="index.jsp" style="text-decoration: none;"><font color="blue" size="5px">返回首页>>></font></a>
					</td>
				</tr>
				<tr height=50px>
					<td width="30%" align="right">
						<font size="5px" face="楷体">用户名：</font>
					</td>
					<td width="70%">
						<input type="text" name="userName" id="userNameId" onblur="checkUserName()" style="width:350px;height:40px;">
					</td>
				</tr>
				<tr height=20px>
					<td colspan="2" align="center" id="checkUserName">
						
					</td>
				</tr>
				<tr height=50px>
					<td width="30%" align="right">
						<font size="5px" face="楷体">密码：</font>
					</td>
					<td width="70%">
						<input type="password" name="password" id="passwordId" onblur="checkPassword()" style="width:350px;height:40px;">
					</td>
				</tr>
				<tr height=20px>
					<td colspan="2" align="center" id="checkPassword">
						
					</td>
				</tr>
				<tr height=30px>
					<td colspan="2" align="center">
						<font color="red">${tishi }</font>
					</td>
				</tr>	
				<tr height=50px>
					<td colspan="2" align="center">
						<input type="submit" value="登录" style="width: 150px;height:50px">
						<a href="user/toRegister.do" style="text-decoration: none;">无账号，注册</a>
					</td>
				</tr>
				<tr height="30px"><td colspan="2"></td></tr>	
			</table>
		</form>
	</body>
</html>
