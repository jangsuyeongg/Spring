<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
html, body {
	margin: 0;
	padding: 0;
	background: rgb(249, 244, 240);
font-family: 'Noto Sans KR';
}
ul,li{
	margin: 0;
    padding-bottom: 10px;
	list-style: none;
}
.w250, .w280, .w118{
	border: none;
	border-bottom: 1px solid black;
	
	height: 30px;
}
.container {
	position: relative;
	height: 700px;
}

.leftSide {
	position: fixed;
	top: 20%;
	background: url(img/pngwing.png) no-repeat;
	width: 40%;
	height: 700px;
}

.rightSide {
	position: absolute;
	right: 0px;
	width: 60%;
	height: 700px;
	width: 50%;
	
}

section {
	position: relative;
	height: 700px;
	z-index:8;
}

.backimg {
	position: fixed;
	top: 40%;
	left: 30%;
	width: 180px;
}
.reg{
    display: block;
	width: 200px;
    height: 50px;
    border: 1px solid rgb(0, 163, 239);
    line-height: 45px;
    text-align: center;
    background: rgb(0, 163, 239);
    color: white;
    border-radius: 10px;
    font-size: 1.4rem;
    font-family: 'Noto Sans KR';
    float: left;
    margin-right: 10px;
}
.rightTitle{
	height: 70px;
}
.btn-wrap{
	width: 430px;
    margin: 0 auto;
}
.agree-info{
	width: 80%;
	background: rgb(225,219,209);
	padding: 10px 20px;
}
.cancel{
	background: rgb(249, 244, 240);
	color: rgb(0, 163, 239);
}
</style>
</head>
<body>
<%@ include file="/inc/top.jspf" %>
	<div class="container">
		<div class="leftSide">
		</div>
		<div class="rightSide">
			<div class="rightTitle">
			</div>
			
			<form method="post" name="frmInquiry">
				<ul>
					<li>이름<b>*</b></li>
					<li><input type="text" id="request_name" name="request_name"
						required="" maxlength="50" class="w280"></li>
					<li>휴대폰 번호<b>*</b></li>
					<li><input type="text" id="request_cellphone1"
						name="request_cellphone1" required="" maxlength="4" class="w118">
						<input type="text" id="request_cellphone2"
						name="request_cellphone2" required="" maxlength="4" class="w118">
						<input type="text" id="request_cellphone3"
						name="request_cellphone3" required="" maxlength="4" class="w118"></li>
					<li>이메일<b>*</b></li>
					<li><input class="w250" type="text" name="form_email1"
						id="form_email1" value=""> @ <input class="w250"
						type="text" name="form_email2" id="form_email2" value=""></li>
					<li>창업희망지역<b>*</b></li>
					<li>지역선택 : <input class="w250" type="text" name="bi_place11"
						id="bi_place11" value=""> 시/구선택 : <input class="w250"
						type="text" name="bi_place12" id="bi_place12" value=""></li>
					<li>추가 정보 입력</li>
					<li><textarea cols="90" rows="5" name="addinfo"
							placeholder="점포를 보유하셨거나 입점희망 점포에 대한 사전정보가 있을 경우, 점포의 평수/임대료 등 구체적인 정보를 남겨주시면 조금 더 정확한 상담이 가능합니다. 그 외, 추가문의 사항이 있는 경우 남겨주세요!"
							onkeyup="javascript:CH_StrByte(this,200,document.getElementById('xWordCnt'));"></textarea></li>
					<li>개인정보 보호를 위한 이용자 동의서</li>
					<li><div class="agree-info">
							<p>
								Leaf코리아 창업문의 및 설명회 신청 관련 개인정보 수집동의 <span style="color: red;">(필수)</span><br>
								1. 개인정보의 수집 및 이용 목적<br> - Leaf코리아 브랜드 창업 문의에 대한 원활한 상담<br>
								- Leaf코리아 창업 관련 정보 안내<br> 2. 수집하는 개인정보의 항목<br> - 이름,
								휴대폰번호, 이메일, 창업희망지역, 점포소유여부(보유 시, 점포주소지)<br> 3. 개인정보 보유 및
								이용기간<br> - 이용 목적 달성 후, 내부규정에 따라 보관 및 지체없이 파기<br>
								※귀하께서는 위 개인정보 수집, 이용에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 창업상담 서비스 이용에
								제한이 될 수 있습니다.
							</p>
						</div></li>
					<li></li>
					<li><input type="radio" value="1" name="person_field"
						id="person_y"><label for="person_y">&nbsp;</label><label
						for="person_y">동의합니다.</label> <input type="radio" value="0"
						name="person_field" id="person_n"><label for="person_n">&nbsp;</label><label
						for="person_n">동의하지 않습니다.</label></li>
					<li>마케팅 활용 동의서</li>
					<li><div class="agree-info">
					<p>
							마케팅 정보제공 용도로의 이용 동의 <span style="color: red;">(선택)</span><br>
							수집한 위 개인정보를 더본코리아에서 제공하는 창업관련 자료 및 정보수신에 동의합니다.<br> ※선택 사항 미
							동의에 따른 상담서비스 이용 제한, 불이익은 없습니다.<br> 다만, Leaf코리아에서 제공하는 창업자료 및
							제안정보 등은 제공받으실 수 없습니다.
						</p>
						</div></li>
					<li></li>
					<li><input type="radio" value="1" name="marketing_field"
						id="marketing_y"><label for="marketing_y">&nbsp;</label><label
						for="marketing_y">동의합니다.</label> <input type="radio" value="0"
						name="marketing_field" id="marketing_n"><label
						for="marketing_n">&nbsp;</label><label for="marketing_n">동의하지
							않습니다.</label></li>
				</ul>
				<div class="btn-wrap">
					<a class="reg" id="btn_submit">문의 등록</a><a class="reg cancel"
						id="btn_cancle">취소</a>
				</div>
			</form>
		</div>
	</div>
	<section></section>
</body>
</html>