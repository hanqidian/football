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
    
    <title>用户管理界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function toDeblock(){
			window.location.href = "user/toDeblock.do";
		}
		function toLock(){
			window.location.href = "user/toLock.do";
		}
		function ss(count){
			var i = window.confirm("确定锁死？");
			if(i){
				document.getElementById("myFormLock"+count).submit();
			}
		}
		function js(count){
			var i = window.confirm("确定解锁？");
			if(i){
				document.getElementById("myFormDeblock"+count).submit();
			}
		}
		function sc(count){
			var i = window.confirm("确定删除？");
			if(i){
				document.getElementById("myFormDelete"+count).submit();
			}
		}
	</script>

  </head>
  
  <body>
  <a>${userName}</a>
  	<input type="button" value="解锁表" onclick="toDeblock()"/>
  	<input type="button" value="锁死表" onclick="toLock()"/>
   	<table border="1" align="center" width="1000px">
   		<tr height="30px" align="center">
   			<td width="35%">ID</td>
   			<td width="15%">用户名</td>
   			<td width="10%">密码</td>
   			<td width="10%">状态</td>
   			<td width="20%">操作</td>
   			<td width="10%">警告次数</td>
   		</tr>
   		
   		<c:if test="${empty userList}">
   			<tr height="30px">
   				<td colspan="6">暂时没有用户数据</td>
   			</tr>
   		</c:if>
   		
   		<% int count = 1; %>
   		
   		<c:if test="${!empty userList}">
   			<c:forEach items="${userList}" var="u">
   				<tr height="30px">
   					<td>${u.userId}</td>
   					<td>${u.userName}</td>
   					<td>${u.password}</td>
   					<td>${u.userType}</td>
   					<td align="center">
   						<form action="user/lock.do" method="post" id="myFormLock<%=count%>">
   							<input type="hidden" name="userId" value="${u.userId}"/>
   						</form>
   						<form action="user/deblock.do" method="post" id="myFormDeblock<%=count%>">
   							<input type="hidden" name="userId" value="${u.userId}"/>
   						</form>
   						<form action="user/delete.do" method="post" id="myFormDelete<%=count%>">
   							<input type="hidden" name="userId" value="${u.userId}"/>
   						</form>
   						<a href="javascript:void(0)" onclick="ss('<%=count%>')">锁死</a>
   						<a href="javascript:void(0)" onclick="js('<%=count%>')">解锁</a>
   						<a href="javascript:void(0)" onclick="sc('<%=count%>')">删除</a>
   						<%count++;%>
   					</td>
   					<td>${u.warnCount}</td>
   				</tr>
   			</c:forEach>
   		</c:if>
   		
   	</table>
  </body>
</html>
