<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>添加新闻页面</title>

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
			function checkNewsTitle(){
				var newsTitle = document.getElementById("newsTitleId").value;
				if(newsTitle == ""){
					document.getElementById("checkNewsTitle").innerHTML = "<font color='red'>请输入标题!</font>";
				}else if(newsTitle.length>30){
					document.getElementById("checkNewsTitle").innerHTML = "<font color='red'>标题过长!</font>";
				}else{
					document.getElementById("checkNewsTitle").innerHTML = "<font color='green'>标题格式正确</font>";
				}
			}
			
			function checkNewsContent(){
				var newsContent = document.getElementById("newsContentId").value;
				if(newsContent == ""){
					document.getElementById("checkNewsContent").innerHTML = "<font color='red'>请输入正文内容!</font>";
				}else if(newsContent.length>1000){
					document.getElementById("checkNewsContent").innerHTML = "<font color='red'>正文内容过长!</font>";
				}else{
					document.getElementById("checkNewsContent").innerHTML = "<font color='green'>正文内容格式正确</font>";
				}
			}
			
			function checkNewsWriter(){
				var newsWriter = document.getElementById("newsWriterId").value;
				if(newsWriter == ""){
					document.getElementById("checkNewsWriter").innerHTML = "<font color='red'>请输入作者名字!</font>";
				}else if(newsWriter.length>20){
					document.getElementById("checkNewsWriter").innerHTML = "<font color='red'>作者名字过长!</font>";
				}else{
					document.getElementById("checkNewsWriter").innerHTML = "<font color='green'>作者名字格式正确</font>";
				}
			}
		</script>

	</head>

	<body>
		<form action="news/add.do" name="addNews" enctype="multipart/form-data" method="post">
			<table border="0" width="500px" align="center">
				<tr>
					<td colspan="2" align="center" style="font-size: 20px">
						******添加新闻******<br/><br/>
					</td>
				</tr>
				<tr>
					<td width="10%">配图:</td>
					<td width="90%">
						<img src="" id="img0" width="400px" height="250px"><br>
						<input type="file" name="pictureFile" id="pictureFile"/>
						<script>
$("#pictureFile").change(function() {
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
				<tr height="20px">
					<td></td>
					<td style="color: red">${tishi1}</td>
				</tr>
				<tr>
					<td>标题:</td>
					<td>
						<input type="text" name="newsTitle" id="newsTitleId" style="width: 400px;height:40px" onblur="checkNewsTitle()"/><br/><br/>
					</td>
				</tr>
				<tr height="20px">
					<td></td>
					<td id="checkNewsTitle"></td>
				</tr>
				<tr>
					<td>正文:</td>
					<td>	
						<textarea rows="6" cols="50" name="newsContent" id="newsContentId" onblur="checkNewsContent()"></textarea><br/><br/>
					</td>
				</tr>
				<tr height="20px">
					<td></td>
					<td id="checkNewsContent"></td>
				</tr>
				<tr>
					<td>类型:<br/><br/></td>
					<td>
						<select name="newsType">
							<option value="China">中国足球</option>
							<option value="Laliga" selected="selected">西甲</option>
							<option value="Bundesliga">德甲</option>
							<option value="Serie">意甲</option>
							<option value="Ligue">法甲</option>
							<option value="EPL">英超</option>
							<option value="WorldWide">国际足球</option>
						</select><br/><br/>
					</td>
				</tr>
				<tr>
					<td>性质:<br/><br/></td>
					<td>
						<input type="radio" name="newsProperty" value="A"/>置顶
						<input type="radio" name="newsProperty" value="B" checked="checked"/>非置顶<br/><br/>
					</td>
				</tr>
				<tr>
					<td>作者:</td>
					<td>
						<input type="text" name="newsWriter" id="newsWriterId" style="width: 400px;height:40px" onblur="checkNewsWriter()"/><br/><br/>
					</td>
				</tr>
				<tr height="20px">
					<td></td>
					<td id="checkNewsWriter"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="发布">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
