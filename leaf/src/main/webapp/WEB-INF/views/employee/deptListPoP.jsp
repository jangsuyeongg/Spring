<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	body,html{margin:0; padding:0;}
	.bonsagroup-Con{width:650px; height:520px; margin:0 auto; padding:0;}
	#deptPoP-title{text-align:center; padding:10px; font-size:25px; color:gray;}
	.bonsagroupImg{width:650px; height:400px;}
	.bg-form form{margin:0 auto;}
	.bg-form input[type=text]{width:400px; height:40px; border:1px solid gray; border-radius: 3px; box-sizing:border-box; margin-left: 70px; margin-top: 15px;}
	.bg-form input[type="submit"]{width:100px; height:40px; background:rgb(0,192,236); color:white; border:0px solid;}
</style>
<script>
	function setDeptName(){
		opener.document.getElementById("dept_name").value= document.getElementById("dept_name").value;
		window.close();
	}
	function bosaGroup(num){		
		switch(num){
		case 1:document.getElementById("dept_name").value = "인사부"; break;
		case 2:document.getElementById("dept_name").value = "품질관리부"; break;
		case 3:document.getElementById("dept_name").value = "시설부"; break;
		case 4:document.getElementById("dept_name").value = "가맹관리부"; break;
		case 5:document.getElementById("dept_name").value = "경영부";
		}
		
	}
</script>
</head>
<body>
	<div class="bonsagroup-Con">
		<h1 id="deptPoP-title">조직도</h1>
		<img src="img/bonsagroup.png" class="bonsagroupImg" usemap='#bsgroup'/>
		<map name='bsgroup'>
			<area shape='rect' coords='43,194,176,234' href="#" onclick="bosaGroup(1)">
			<area shape='rect' coords='250,68,387,118' href="#" onclick="bosaGroup(2)">
			<area shape='rect' coords='467,185,600,233' href="#" onclick="bosaGroup(3)">
			<area shape='rect' coords='248,308,387,349' href="#" onclick="bosaGroup(4)">
			<area shape='rect' coords='249,182,387,241' href="#" onclick="bosaGroup(5)">
		</map> 
		<div class="bg-form">		
			<form method="get" action="<%=request.getContextPath()%>/employRegiPage">
				<input type="text" name="dept_name" id="dept_name"/>
				<input type="submit" value="선택하기" onclick="setDeptName()"/>
			</form>
		</div>
	</div>	
	
	
</body>
</html>