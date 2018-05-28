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
    
    <title>新闻管理页面</title>
    
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
			window.location.href = "news/toAdd.do";
		}
		function ck(count){
			document.getElementById("myFormLook"+count).submit();
		}
		function sc(count){
			var i = window.confirm("确定删除？");
			if(i){
				document.getElementById("myFormDelete"+count).submit();
			}
		}
	</script>

  </head>
  	
  <body style="background-color: #ABABAB">
  	<a>${userName}</a><br/><br/>
  	<input type="button" value="添加新闻" onclick="toAdd()"/>
  	<table border="1" align="center" width="1000px">
    	<tr align="center" height="30px">
    		<td width="30%">标题</td>
    		<td width="10%">作者</td>
    		<td width="10%">新闻类型</td>
    		<td width="10%">新闻性质</td>
    		<td width="10%">点击次数</td>
    		<td width="20%">发布日期</td>
    		<td width="10%">操作</td>
    	</tr>
    	
    	<c:if test="${empty newsList}">
    		<tr height="30px">
    			<td colspan="7">暂时没有新闻数据</td>
    		</tr>
    	</c:if>
    	
    	<% int count = 1; %>
    	
    	<c:if test="${!empty newsList}">
    		<c:forEach items="${newsList}" var="n">
    			<tr height="30px">
    				<td>${n.newsTitle}</td>
    				<td>${n.newsWriter}</td>
    				<td>${n.newsType}</td>
    				<td>${n.newsProperty}</td>
    				<td>${n.readCount}</td>
    				<td>${n.newsTime}</td>
    				<td align="center">
    					<form action="news/toLook.do" method="post" id="myFormLook<%=count%>">
    						<input type="hidden" name="newsId" value="${n.newsId}"/>
    					</form>
    					<form action="news/delete.do" method="post" id="myFormDelete<%=count%>">
    						<input type="hidden" name="newsId" value="${n.newsId}"/>
    					</form>
    					<a href="javascript:void(0)" onclick="ck('<%=count%>')">查看</a>
    					<a href="javascript:void(0)" onclick="sc('<%=count%>')">删除</a>
    					<%count++;%>
    				</td>
    			</tr>
    		</c:forEach>
    	</c:if>
    	
    </table> 
  </body>
</html>
