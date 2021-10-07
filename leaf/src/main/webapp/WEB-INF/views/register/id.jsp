<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
body{
	font-family: 'Hanna', fantasy;
}

a:link{
	text-decoration: none;
}

ul,li{list-style:none;
		margin:0;
		padding:0;
}


.formdiv{
		width:450px;
		margin: 0 auto;
		height:800px;
		
		
	}
	

.containers{
		width:1400px;
		margin:0 auto;
		padding-top: 200px;
	}
	

.inputBox{
		width: 250px;
		height:30px;
		border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
		outline:none;
	}
	
.search{	
	width:700px;
	margin:0 auto;

}	
.search>li:first-child{
	 float: left;
    width: 45%;
    height: 50px;
    text-align: center;
    border: 2px solid black;
    border-bottom:none;
    border-right :none;
    box-sizing: border-box;
    line-height: 50px;
  
}



.search>li:last-child{
	 float: left;
       width: 45%;
    height: 50px;
    text-align: center;
   
  	border-left: 2px solid black;
  	border-bottom:2px solid black;
    box-sizing: border-box;
    line-height: 50px;
    color:gray;
}

.search>li:last-child>a{
color:gray;
}

.logins>li{
	 float:left;
	}
.logins{
	clear:both;
	padding-top: 10%;
}
.label{
	height:30px;
}
	.logins>li:nth-child(2n){
	 width:80%;
	 height: 67px;
	}
	.logins>li:nth-child(2n-1){
    width: 20%;
    padding-top: 20px;
	}
	
		
	input[type=button]{
				background-color:white;
		width: 100px;
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.1em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
		
		
	}
	
	.next{
	
     
		background-color:white;
		width: 100px;
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.1em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
		
	}
	
#subbtn{
		width:350px;
		text-align: center;
	}
	

</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<div class="nowrapdiv">
<div class="containers">
	<ul class="search">
		<li>아이디찾기</li>
		<li><a href="/myapp/pwdOk">비밀번호찾기</a></li>
	</ul>
	<div class="formdiv">
		<form method="post" id="" action="">
	
	
	<ul class="logins">
			<li><label class="label">이름</label></li><li><input type="text" name="" id="username" class="inputBox"/></li>
			<li><label class="label">전화번호</label></li><li><input type="text" name="" id="tel" class="inputBox"/>
				<input type="button" id="" value="인증하기"/>
			</li>
			<li><label class="label">인증번호</label></li><li><input type="text" name="" id="tel"  class="inputBox"/>
				<input type="button" id="" value="확인"/>
			<li id="subbtn"><input type="submit" value="다음" class="next"/></li>
		</ul>
		</form>
	</div><!-- formdiv -->
</div><!-- container -->
</div><!-- nowrapdiv -->
</body>
</html>