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
	

.container{
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

.search>li:first-child>a{
	color:gray;

}
.search>li:first-child{
	 float: left;
    width: 45%;
    height: 50px;
    text-align: center;
    border:none;border-right:2px; border-top:0px; border-left:0px; border-bottom:2px solid;
    box-sizing: border-box;
    line-height: 50px;
}



.search>li:last-child{
	 float: left;
    width: 45%;
    height: 50px;
    text-align: center;
  	border-top: 2px solid black;
  	border-right: 2px solid black;
  	border-left: 2px solid black;
  	
    box-sizing: border-box;
    line-height: 50px;
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

<div class="container">
	<ul class="search">
		<li><a href="/myapp/idOk">아이디찾기</a></li>
		<li>비밀번호찾기</li>
	</ul>
	<div class="formdiv">
	<ul class="logins">
			<li><label class="label">아이디</label></li>
			<li><input type="text" name="userid" id="userid" class="inputBox"/></li>
			<li><label class="label">전화번호</label></li>
			<li><input type="text" name="tel" id="tel" class="inputBox"/>
			<input type="button" id="inputPhoneNumber" value="인증번호발송"/></li>
			<li><label class="label">인증번호</label></li><li><input type="text" name="inputCertifiedNumber" id="inputCertifiedNumber"  class="inputBox"/>
			<input type="button" id="checkBtn" value="인증번호확인"/>
		
		</ul>

	</div><!-- formdiv -->
</div><!-- container -->
<script>

$(function(){

	
	$('#inputPhoneNumber').click(function(){
		let phoneNumber = $('#tel').val();
		alert('인증번호 발송 완료!');
		$.ajax({
			type: "GET",
			url: "/myapp/check/sendSMS",
			data: {"phoneNumber" : phoneNumber}, 
			success: function(res){
		   		$('#checkBtn').click(function(){
		        	if($.trim(res) ==$('#inputCertifiedNumber').val()){ 
	                	alert( '인증성공!','휴대폰 인증이 정상적으로 완료되었습니다.','success')
	                	
							$.ajax({//메일만 보내면된다
								url:"/myapp/update/emailNumber",
								data:{"tel" : $('#tel').val()},
								success: function(res){
									if(res==0){
										alert('이메일전송실패');
									}else{
										alert('이메일전송완료');
										location.href='/myapp/login';
										
									}
								}
							});
					
					}
				});
			}
		});
	});
});

</script>

</body>
</html>