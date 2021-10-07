<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/inc/top2.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />


<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body{
	font-family: 'Hanna', fantasy;
}


	ul,li{margin:0; padding:0; list-style:none;}
	.imglogo{
		height:250px;
		padding-left: 400px;
		
	}
	.imglogo img{
		width: 300px;
	}
	.containers{
	margin:0 auto;
	width: 1400px;
    height: 800px;
    display: flex;
    align-items: center;
	}
	
	.formdiv{
		width:700px;
		float: right;
	}
	.imgdiv{
		width:700px;
		float: left;
	}
	#registerform{/*form은 block type*/
		margin:0 auto;
		width: 700px;
	}
	
	.label{
		display:inline-block;
		width:120px;
		height: 50px;
		text-align: center;	
	}
	.inputBox{
		width:200px;
		height:30px;
		border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
	}
	
	input[type=button]{
		background-color:white;
		width: 110px;
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.1em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
		
		
	}
	

	.birth, .tel{
		width:50px;
		height:30px;
		border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
		outline:none;
	
	}
	#joinbtn{
		text-align: center;
	}
	.join{
	
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
	
	span{
		color:red;
	}
	
	.inputBox{
		outline:none;
	}

</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<div class="containers">
			
		
			
			<div class="imgdiv"/> <img src="img/ilustcut.png" /></div>
			<div class="formdiv">
				<form method="post" id="registerform" action="/myapp/registerOk">
			<ul>
				<li><label class="label">아이디 <span>*</span></label><input type="text" name="" id="userid" class="inputBox"/>
						<input type="button" id="idChk" value="아이디중복검사"/></li>
				<li><label class="label">비밀번호 <span>*</span></label><input type="password" name="" id="userpwd" class="inputBox"/></li>
				<li><label class="label">비밀번호확인 <span>*</span></label><input type="password" name="" id="userpwdchk" class="inputBox"/></li>	
				<li><label class="label">이름 <span>*</span></label><input type="text" name="" id="username" class="inputBox"/>
						<input type="radio" name="" value="남" checked="checked"/>남
						<input type="radio" name="" value="여"/> 여</li>
				<li>
					<label class="label">생년월일</label>
					<input name="publeYear" autocomplete="off" readonly="readonly">
					
				</li>
				<li><label class="label">전화번호</label>
					
					<input type="text" name="" id="tel1" class="tel"/>
					<input type="text" name="" id="tel2" class="tel"/>
					<input type="text" name="" id="tel3" class="tel"/>
					<input type="button" id="" value="인증하기"/>
				</li>
				
				<li><label class="label">우편번호</label><input type="text" name="zipcode" id="zipcode" class="inputBox"/>
				<input type="button" id="zipSearch" value="우편번호찾기"/>
				</li>
				<li><label class="label">주소</label><input type="text" name="addr" id="addr" class="inputBox"/></li>
				<li><label class="label">상세주소</label><input type="text" name="addrdetail" id="addrdetail" class="inputBox"/></li>
				<li><label class="label">이메일</label><input type="text" name="" class="inputBox"/>@
				<input type="text" name="" class="inputBox"></li>
				<li id="joinbtn"><input type="submit" value="가입하기"class="join" /></li>
				<li id="joinbtn"><input type="submit" value="취소"class="join" /></li>
			</ul>
		</form>
		</div><!--formdiv  -->
	</div><!-- container -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
const config = {
		dateFormat: 'yy-mm-dd',
		showOn : "button",
		buttonText:"날짜 선택"
	}
	
			//캘린더
			$(function() {
			  $( "input[name='publeYear']" ).datepicker(config);
			});
</script>
-
</body>

</html>