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
    
    <title>俱乐部管理页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript">
		function tj(){
			window.location.href = "club/toAdd.do";
		}
		function listZg(){
			window.location.href = "club/listZg.do";
		}
		function listXj(){
			window.location.href = "club/listXj.do";
		}
		function listDj(){
			window.location.href = "club/listDj.do";
		}
		function listYj(){
			window.location.href = "club/listYj.do";
		}
		function listFj(){
			window.location.href = "club/listFj.do";
		}
		function listYc(){
			window.location.href = "club/listYc.do";
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
	</script>

  </head>
  
  <body>
   	${userName}
   	<input type="button" value="添加俱乐部" onclick="tj()"/><br/><br/>
   	<table border="1" width="1000px" align="center">
   		<tr height="40px">
   			<td style="font-size: 17px;background-color: #1CD5B5;" colspan="10">
   				&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listZg()">中超</a>
   				
   				&nbsp;&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listXj()">西甲</a>
   				
   				&nbsp;&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listDj()">德甲</a>
   				
   				&nbsp;&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listYj()">意甲</a>
   				
   				&nbsp;&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listFj()">法甲</a>
   				
   				&nbsp;&nbsp;&nbsp;
   				<a href="javascript:void(0)" onclick="listYc()">英超</a>
   				
   			</td>
   		</tr>
   		<tr height="30px"><td colspan="10"></td></tr>
   		<tr height="30px" align="center">
   			<td width="50px">排名</td>
   			<td width="150px">球队</td>
   			<td width="100px">场次</td>
   			<td width="100px">胜</td>
   			<td width="100px">平</td>
   			<td width="100px">负</td>
   			<td width="100px">进球</td>
   			<td width="100px">失球</td>
   			<td width="100px">积分</td>
   			<td width="100px">操作</td>
   		</tr>
   		<%int count = 1; %>
   		<c:if test="${!empty clubList}">
   			<c:forEach items="${clubList}" var="c">
   				<tr height="30px" align="center">
   					<td><%=count %></td>
	   				<td>${c.clubName}</td>
	   				<td>${c.gameCount}</td>
	   				<td>${c.clubWin}</td>
	   				<td>${c.clubTie}</td>
	   				<td>${c.clubLose}</td>
	   				<td>${c.clubGoal}</td>
	   				<td>${c.clubFumble}</td>
	   				<td>${c.clubScore}</td>
	   				<td>
	   					<form id="myFormUpdate<%=count%>" action="club/toUpdate.do" method="post">
	   						<input type="hidden" name="clubId" value="${c.clubId}"/>
	   					</form>
	   					<form id="myFormDelete<%=count%>" action="club/delete.do" method="post">
	   						<input type="hidden" name="clubId" value="${c.clubId}"/>
	   					</form>
	   					<a href="javascript:void(0)" onclick="gx('<%=count%>')">更新</a>
	   					<a href="javascript:void(0)" onclick="sc('<%=count%>')">删除</a>
	   				</td>
   				</tr>
   				<%count++; %>
   			</c:forEach>
   		</c:if>
   	</table>
  </body>
</html>
