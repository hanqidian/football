<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看新闻</title>
    
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
    </table>
  </body>
</html>
