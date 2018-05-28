<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>数据更新页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
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
  	<div align="center"><font size="6px">球队数据更新</font></div>
  	<hr width="1000px"/>
  	<form action="club/update.do" name="updateClub" method="post">
  		<input type="hidden" name="clubId" value="${club.clubId}"/>
	    <table border="0" width="800px" align="center">
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">球队名:</td>
	    		<td width="400px">
	    			${club.clubName}
	    		</td>
	    		<td width="300px"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">胜:</td>
	    		<td width="400px">
	    			<input type="text" id="clubWinId" name="clubWin" onblur="checkClubWin()" value="${club.clubWin}" style="height: 35px;width:250px;"/>
	    		</td>
	    		<td width="300px" id="checkClubWin"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">平:</td>
	    		<td width="400px">
	    			<input type="text" id="clubTieId" name="clubTie" onblur="checkClubTie()" value="${club.clubTie}" style="height: 35px;width:250px;"/>
	    		</td>
	    		<td width="300px" id="checkClubTie"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">负:</td>
	    		<td width="400px">
	    			<input type="text" id="clubLoseId" name="clubLose" onblur="checkClubLose()" value="${club.clubLose}" style="height: 35px;width:250px;"/>
	    		</td>
	    		<td width="300px" id="checkClubLose"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">进球:</td>
	    		<td width="400px">
	    			<input type="text" id="clubGoalId" name="clubGoal" onblur="checkClubGoal()" value="${club.clubGoal}" style="height: 35px;width:250px;"/>
	    		</td>
	    		<td width="300px" id="checkClubGoal"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px">失球:</td>
	    		<td width="400px">
	    			<input type="text" id="clubFumbleId" name="clubFumble" onblur="checkClubFumble()" value="${club.clubFumble}" style="height: 35px;width:250px;"/>
	    		</td>
	    		<td width="300px" id="checkClubFumble"></td>
	    	</tr>
	    	<tr height="20px"></tr>
	    	<tr height="40px" style="font-size: 20px">
	    		<td align="right" width="200px"></td>
	    		<td width="400px">
	    			<input type="submit" value="确定" style="height: 35px;width:150px;"/>
	    		</td>
	    		<td width="300px"></td>
	    	</tr>
	    </table>
	   </form>
  </body>
</html>
