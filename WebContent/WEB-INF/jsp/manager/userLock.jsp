<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>锁死页面</title>
    
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
		function ss(count){
			var i = window.confirm("确定锁死？");
			if(i){
				document.getElementById("myFormLock"+count).submit();
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
  	<input type="button" value="解锁表" onclick="toDeblock()"/>
  	<a href="user/getAll.do">返回用户管理首页</a>
    <table border="1" align="center" width="800px">
    	<tr height="30px" align="center">
    		<td>ID</td>
    		<td>用户名</td>
    		<td>密码</td>
    		<td>操作</td>
    		<td>警告次数</td>
    	</tr>
    	
    	<c:if test="${empty userList}">
   			<tr height="30px">
   				<td colspan="5">没有相应的内容</td>
   			</tr>
   		</c:if>
   		
   		<%int count=1; %>
   		
   		<c:if test="${!empty userList}">
   			<c:forEach items="${userList}" var="u">
   				<tr height="30px">
   					<td>${u.userId}</td>
   					<td>${u.userName}</td>
   					<td>${u.password}</td>
   					<td align="center">
   						<form action="user/lock.do" method="post" id="myFormLock<%=count%>">
   							<input type="hidden" name="userId" value="${u.userId}"/>
   						</form>
   						<form action="user/delete.do" method="post" id="myFormDelete<%=count%>">
   							<input type="hidden" name="userId" value="${u.userId}"/>
   						</form>
   						<a href="javascript:void(0)" onclick="ss('<%=count%>')">锁死</a>
   						<a href="javascript:void(0)" onclick="sc('<%=count%>')">删除</a>
   					</td>
   					<%count++;%>
   					<td>${u.warnCount}</td>
   				</tr>
   			</c:forEach>
   		</c:if>
    	
    </table>
  </body>
</html>
