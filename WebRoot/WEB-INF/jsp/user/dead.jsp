<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dead.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript">
		function sq(){
			document.getElementById("userNameId").submit();
		}
	</script>

  </head>
  
  <body>
   <a>${userName}</a>:您的帐号已被锁死，请申诉<br><br>
   <a href="javascript:void(0)" onclick="sq()">申请解锁</a>
   <form action="user/wantDeblock.do" method="post" id="userNameId">
   	<input type="hidden" name="userName" value="${userName}"/>
   </form>
  </body>
</html>
