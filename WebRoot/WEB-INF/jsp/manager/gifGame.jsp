<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布直播图片</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script src="http://www.codefans.net/ajaxjs/jquery-1.6.2.min.js"></script>
	
	<script type="text/javascript">
		function ks(){
			document.getElementById("myFormKs").submit();
		}
		function zc(){
			document.getElementById("myFormZc").submit();
		}
		function xbc(){
			document.getElementById("myFormXbc").submit();
		}
		function js(){
			document.getElementById("myFormJs").submit();
		}
		function zb(){
			document.getElementById("myFormFt").submit();
		}
	</script>

  </head>
  
  <body>
 	<div align="center"><font size="14px">图片发布界面</font></div>
	<hr width="1000px"/>
	<table width="1000px" align="center">
		<tr>
			<td>
				<form action="game/ks.do" method="post" id="myFormKs">
					<input type="hidden" name="gameId" value="${game.gameId}"/>
				</form>
				<a href="javascript:void(0)" onclick="ks()">开始</a>
				<form action="game/zc.do" method="post" id="myFormZc">
					<input type="hidden" name="gameId" value="${game.gameId}"/>
				</form>
				<a href="javascript:void(0)" onclick="zc()">中场</a>
				<form action="game/xbc.do" method="post" id="myFormXbc">
					<input type="hidden" name="gameId" value="${game.gameId}"/>
				</form>
				<a href="javascript:void(0)" onclick="xbc()">下半场</a>
				<form action="game/js.do" method="post" id="myFormJs">
					<input type="hidden" name="gameId" value="${game.gameId}"/>
				</form>
				<a href="javascript:void(0)" onclick="js()">结束</a>
				<form action="game/toLive.do" method="post" id="myFormFt">
					<input type="hidden" name="gameId" value="${game.gameId}"/>
				</form>
				<a href="javascript:void(0)" onclick="zb()">文字直播</a>
			</td>
		</tr>
	</table><br/><br/>
	<form action="game/gifGame.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="gameId" value="${game.gameId}"/>
		<table width="1000px" align="center" border="0">
			<tr height="40px">
				<td width="350px" align="right">
					<font size="5px">主队</font>
				</td>
				<td width="300px" align="center">
					<font size="4px" color="red">${game.gameType}</font>
				</td>
				<td width="350px">
					<font size="5px">客队</font>
				</td>
			</tr>
			<tr height="40px">
				<td width="350px" align="right">
					<font size="5px">${game.homeTeam}</font>
				</td>
				<td width="300px" align="center">
					<font size="4px" color="red">${game.gameState}</font>
				</td>
				<td width="350px">
					<font size="5px">${game.guestTeam}</font>
				</td>
			</tr>
		</table><br/><br/>
		<table border="0" width="1000px" align="center">
			<tr>
				<td width="1000px" align="center">
					<img src="" id="img0" width="400px" height="250px"><br>
						<input type="file" name="gifFile" id="gifFile"/>
						<script>
							$("#gifFile").change(function() {
								var objUrl = getObjectURL(this.files[0]);
								console.log("objUrl = " + objUrl);
								if (objUrl) {
									$("#img0").attr("src", objUrl);
								}
							});
							//建立一個可存取到該file的url
							function getObjectURL(file) {
								var url = null;
								if (window.createObjectURL != undefined) { // basic
									url = window.createObjectURL(file);
								} else if (window.URL != undefined) { // mozilla(firefox)
									url = window.URL.createObjectURL(file);
								} else if (window.webkitURL != undefined) { // webkit or chrome
									url = window.webkitURL.createObjectURL(file);
								}
								return url;
							}
							</script>
				</td>
			</tr>
			<tr height="30px"><td></td></tr>
			<tr height="30px">
				<td align="center">
					<textarea rows="3" cols="50" name="gifText"></textarea>
				</td>
			</tr>
			<tr height="30px"><td></td></tr>
			<tr>
				<td align="center">
					<input type="submit" value="发布" style="width: 200px;height:50px"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
