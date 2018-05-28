<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加俱乐部页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript">
		function checkClubName(){
			var clubName = document.getElementById("clubNameId").value;
			if(clubName == ""){
				document.getElementById("checkClubName").innerHTML = "<font color='red'>请输入俱乐部名!</font>";
			}else if(clubName.length>10){
				document.getElementById("checkClubName").innerHTML = "<font color='red'>俱乐部名过长!</font>";
			}else{
				document.getElementById("checkClubName").innerHTML = "<font color='green'>俱乐部名格式正确</font>";
			}
		}
		function checkClubWin(){
			var clubWin = document.getElementById("clubWinId").value;
			if(clubWin == ""){
				document.getElementById("checkClubWin").innerHTML = "<font color='red'>请输入胜利次数!</font>";
			}else if(clubWin.length>2){
				document.getElementById("checkClubWin").innerHTML = "<font color='red'>格式错误!</font>";
			}else{
				document.getElementById("checkClubWin").innerHTML = "<font color='green'>格式正确</font>";
			}
		}
		function checkClubTie(){
			var clubTie = document.getElementById("clubTieId").value;
			if(clubTie == ""){
				document.getElementById("checkClubTie").innerHTML = "<font color='red'>请输入平局次数!</font>";
			}else if(clubTie.length>2){
				document.getElementById("checkClubTie").innerHTML = "<font color='red'>格式错误!</font>";
			}else{
				document.getElementById("checkClubTie").innerHTML = "<font color='green'>格式正确</font>";
			}
		}
		function checkClubLose(){
			var clubLose = document.getElementById("clubLoseId").value;
			if(clubLose == ""){
				document.getElementById("checkClubLose").innerHTML = "<font color='red'>请输入负场次数!</font>";
			}else if(clubLose.length>2){
				document.getElementById("checkClubLose").innerHTML = "<font color='red'>格式错误!</font>";
			}else{
				document.getElementById("checkClubLose").innerHTML = "<font color='green'>格式正确</font>";
			}
		}
		function checkClubGoal(){
			var clubGoal = document.getElementById("clubGoalId").value;
			if(clubGoal == ""){
				document.getElementById("checkClubGoal").innerHTML = "<font color='red'>请输入进球数!</font>";
			}else if(clubGoal.length>3){
				document.getElementById("checkClubGoal").innerHTML = "<font color='red'>格式错误!</font>";
			}else{
				document.getElementById("checkClubGoal").innerHTML = "<font color='green'>格式正确</font>";
			}
		}
		function checkClubFumble(){
			var clubFumble = document.getElementById("clubFumbleId").value;
			if(clubFumble == ""){
				document.getElementById("checkClubFumble").innerHTML = "<font color='red'>请输入失球数!</font>";
			}else if(clubFumble.length>3){
				document.getElementById("checkClubFumble").innerHTML = "<font color='red'>格式错误!</font>";
			}else{
				document.getElementById("checkClubFumble").innerHTML = "<font color='green'>格式正确</font>";
			}
		}
	</script>

  </head>
  
  <body>
  	<form action="club/add.do" name="addClub" method="post">
	 	<table border="0" width="1000px" align="center">
	 		<tr height="40px">
	 			<td width="200px" align="right">球队名:</td>
	 			<td width="300px" align="left">
	 				<input type="text" id="clubNameId" name="clubName" onblur="checkClubName()"/>
	 			</td>
	 			<td width="500px" id="checkClubName"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr height="40px">
	 			<td align="right">联赛:</td>
	 			<td>
	 				<select name="clubType">
	 					<option value="China">中超</option>
								<option value="Laliga" selected="selected">西甲</option>
								<option value="Bundesliga">德甲</option>
								<option value="Serie">意甲</option>
								<option value="Ligue">法甲</option>
								<option value="EPL">英超</option>
	 				</select>
	 			</td>
	 			<td></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td align="right">
	 				胜:
	 			</td>
	 			<td>
	 				<input type="text" id="clubWinId" name="clubWin" onblur="checkClubWin()"/>
	 			</td>
	 			<td id="checkClubWin"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td align="right">
	 				平:
	 			</td>
	 			<td>
	 				<input type="text" id="clubTieId" name="clubTie" onblur="checkClubTie()"/>
	 			</td>
	 			<td id="checkClubTie"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td align="right">
	 				负:
	 			</td>
	 			<td>
	 				<input type="text" id="clubLoseId" name="clubLose" onblur="checkClubLose()"/>
	 			</td>
	 			<td id="checkClubLose"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td align="right">
	 				进球:
	 			</td>
	 			<td>
	 				<input type="text" id="clubGoalId" name="clubGoal" onblur="checkClubGoal()"/>
	 			</td>
	 			<td id="checkClubGoal"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td align="right">
	 				失球:
	 			</td>
	 			<td>
	 				<input type="text" id="clubFumbleId" name="clubFumble" onblur="checkClubFumble()"/>
	 			</td>
	 			<td id="checkClubFumble"></td>
	 		</tr>
	 		<tr height="20px"></tr>
	 		<tr>
	 			<td></td>
	 			<td>
	 				<input type="submit" value="添加"/>
	 			</td>
	 			<td></td>
	 		</tr>
	 	</table>
 	</form>
  </body>
</html>
