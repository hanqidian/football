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
    
    <title>赛事添加页面</title>
    
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
  	<div align="center"><font size="15px">添加比赛</font></div>
  	<hr align="center" width="1000px"/>
    <form action="game/addGame.do" method="post">
	    <table border="0" align="center">
	    	<tr height="40px">
	    		<td width="200px" align="right">主队:</td>
	    		<td width="400px">
	    			<input type="text" name="homeTeam"/>
	    		</td>
	    	</tr>
	    	<tr height="40px">
	    		<td width="200px" align="right">客队:</td>
	    		<td width="400px">
	    			<input type="text" name="guestTeam"/>
	    		</td>
	    	</tr>
	    	<tr height="40px">
	    		<td width="200px" align="right">开赛时间:</td>
	    		<td width="400px">
	    			<input type="text" name="year" style="width: 50px"/>年
	    			<input type="text" name="month" style="width: 50px"/>月
	    			<input type="text" name="day" style="width: 50px"/>日
	    			<input type="text" name="hour" style="width: 50px"/>时
	    			<input type="text" name="minute" style="width: 50px"/>分
	    		</td>
	    	</tr>
	    	<tr height="40px">	    		
	    		<td align="right">联赛:</td>
	    		<td>
	    			<select name="gameType">
	    				<c:if test="${!empty gameTypeList}">
		    				<c:forEach items="${gameTypeList}" var="g">
		    					<option value="${g.codeKey}">${g.codeValue}</option>
		    				</c:forEach>
	    				</c:if>
	    			</select>
	    		</td>
	    	</tr>
	    	<tr height="40px">
	    		<td></td>
	    		<td>
	    			<input type="submit" value="添加比赛"/>
	    		</td>
	    	</tr>
	    </table>
    </form>
  </body>
</html>
