
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/inc/top.jspf" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body{
	font-family: 'Hanna', fantasy;
}

 a:link {text-decoration: none;}

a:hover{text-decoration:none;
		color:rgb(0, 163, 239);
		font-size:1em;
		font-family: 'Signika Negative', sans-serif;
}

ul,li{list-style:none;
		margin:0;
		padding:0;
}

.formdiv{
		width:350px;
		margin: 0 auto;
	}
	

.containers{
		width:1400px;
		margin:0 auto;
		padding-top: 200px;
	
	}
	
.label{
		display:inline-block;
		text-align: center;	
		
		
	}
	.loginPage>li{
	 float:left;
	}
	.loginPage>li:nth-child(2n){
	 width:80%;
	 height: 67px;
	}
	.loginPage>li:nth-child(2n-1){
    width: 20%;
    padding-top: 17px;
	}
.search{

	display:flex;
	justify-content: space-between;
	padding-top: 50px;
}

.inputBox{
		width: 280px;
		height:30px;
		border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
		outline:none;
	}
	
#joinbtn{
		
    	padding-top: 10px;
    
	}
.join{
	background-color:white;
	
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.1em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
	
      
	
		width:350px;
		
	}
.anotherlogindiv{
	margin-top:30px;
}
	
.anotherlogin{
	margin-top:20px;
	width:350px;
	height:50px;
	line-height:50px;
	border-radius: 10px;
	text-align: center;
	color:black;
}

#naverlogin{
	background-color: #03c75a;
}

#kakaologin{
	background-color: yellow;
	}
	
#googlelogin{
	background-color: gray;
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<div class="nowrapdiv">
<div class="containers">
	<div class="formdiv">
		<form method="post"action="/myapp/loginOk">
		<ul class="loginPage">
			<li><label class="label">아이디</label></li><li><input type="text" name="userid" id="userid" class="inputBox"/></li>
			<li><label class="label">비밀번호</label></li><li><input type="password" name="userpwd" id="userpwd" class="inputBox"/></li>
			<input type="submit" value="로그인"class="join" />
		</ul>
		<ul class="search">
			<li><a href="/myapp/idOk">아이디찾기</a></li>
			<li><a href="/myapp/pwdOk">비밀번호 찾기</a></li>
			<li><a href="/myapp/registerOk">회원가입</a></li>
		</ul>
		<div class="anotherlogindiv">
			<div class="anotherlogin" id="kakaologin"><a href="#">카카오톡 로그인</a></div>
			<div class="anotherlogin" id="naverlogin"><a href="#">네이버 로그인</a></div>
			<div class="anotherlogin" id="googlelogin"><a href="#">구글 로그인</a></div>
		</div>

		</form>
	</div><!-- formdiv -->
</div><!-- container -->
</div>

</body>
</html>