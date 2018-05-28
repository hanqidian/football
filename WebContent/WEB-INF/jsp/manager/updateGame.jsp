<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateGame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<div align="center"><font size="15px">比赛数据更新</font></div>
	<hr width="1000px" align="center"/>
	<form action="game/updateGame.do" method="post">
		<input type="hidden" name="gameId" value="${game.gameId}"/>
		<table border="0" align="center">
			<tr height="40px">
				<td width="200px" align="right">主队:</td>
				<td width="400px">${game.homeTeam}</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">客队:</td>
				<td width="400px">${game.guestTeam}</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">比赛时间:</td>
				<td width="400px">${game.gameTime}</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">比赛状态:</td>
				<td width="400px">${game.gameState}</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">联赛:</td>
				<td width="400px">${game.gameType}</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">主队进球:</td>
				<td width="400px">
					<input type="text" name="goal" value="${game.goal}"/>
				</td>
			</tr>
			<tr height="40px">
				<td width="200px" align="right">客队进球:</td>
				<td width="400px">
					<input type="text" name="fumble" value="${game.fumble}"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="确认更新"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
