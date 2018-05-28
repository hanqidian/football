<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>比赛管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript">
		function toAdd(){
			window.location.href = "game/toAdd.do";
		}
		function gx(count){
			document.getElementById("myFormUpdate"+count).submit();
		}
		function sc(count){
			var i = window.confirm("确定删除?");
			if(i){
				document.getElementById("myFormDelete"+count).submit();
			}
		}
		function zb(count){
			document.getElementById("myFormLive"+count).submit();
		}
	</script>

  </head>
  
  <body>
   	${userName}
   	<input type="button" value="添加赛事" onclick="toAdd()"/>
   	<table border="1" width="1000px" align="center">
   		<tr height="40px" align="center">
   			<td width="50px">联赛</td>
   			<td width="200px">时间</td>
   			<td width="150px">主队</td>
   			<td width="150px">客队</td>
   			<td width="75px">主队进球</td>
   			<td width="75px">客队进球</td>
   			<td width="100px">赛况</td>
   			<td width="200px">操作</td>
   		</tr>
   		<%int count = 1; %>
   		<c:if test="${!empty gameList}">
   			<c:forEach items="${gameList}" var="g">
   				<tr height="30px" align="center">
   					<td>${g.gameType}</td>
   					<td>${g.gameTime}</td>
   					<td>${g.homeTeam}</td>
   					<td>${g.guestTeam}</td>
   					<td>${g.goal}</td>
   					<td>${g.fumble}</td>
   					<td>${g.gameState}</td>
   					<td>
   						<form action="game/toUpdate.do" id="myFormUpdate<%=count%>" method="post">
   							<input type="hidden" name="gameId" value="${g.gameId}"/>
   						</form>
   						<form action="game/delete.do" id="myFormDelete<%=count%>" method="post">
   							<input type="hidden" name="gameId" value="${g.gameId}"/>
   						</form>
   						<form action="game/toLive.do" id="myFormLive<%=count%>" method="post">
   							<input type="hidden" name="gameId" value="${g.gameId}"/>
   						</form>
   						<a href="javascript:void(0)" onclick="gx('<%=count%>')">更新</a>
   						<a href="javascript:void(0)" onclick="sc('<%=count%>')">删除</a>
   						<a href="javascript:void(0)" onclick="zb('<%=count%>')">直播</a>
   					</td>
   				</tr>
   				<%count++; %>
   			</c:forEach>
   		</c:if>
   	</table>
  </body>
</html>
