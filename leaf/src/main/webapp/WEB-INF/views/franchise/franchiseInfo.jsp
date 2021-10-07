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
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@200&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	font-family: 'Hahmlet';
}

h1 {
clear:both;
	margin: 5px 0;
	font-size: 1.3rem;
	font-weight: none;
	font-family: 'Hahmlet';
}

h2 {
	font-size: 1.875rem;
	line-height: 120%;
	font-family: 'Malgun Gothic';
	width: 75%;
	margin: 50px auto;
}

.top {
	position: relative;
	background:
		url(img/Coffee_Drink_Food_Theme_HD_Desktop_Wallpaper_16_1366x768.jpg)
		80% 50% no-repeat;
	height: 450px;
	background-size: cover;
}

section {
	height: 700px;
	width: 100%;
	position: relative;
	font-size: 1rem;
}

.text {
	position: absolute;
	right: 13%;
	top: 24%;
	font-size: 3rem;
	color: white;
	font-family: 'Do Hyeon';
}

p {
	color: rgb(0, 163, 239);
	font-size: 4rem;
	border-bottom: 1px solid rgb(0, 163, 239);
	margin: 0;
	font-family: 'Do Hyeon';
}

li {
	height: 285px;
	margin: 0 6px 12px;
	padding: 0px 12px;
	width: calc(19% - 24px);
	float: left;
}

ul {
	width: 80%;
	list-style: none;
	margin: 0 auto;
}

dt {
	margin-bottom: 1.3rem;
	font-size: 1.25rem;
	font-weight: 500;
	color: rgb(0, 163, 239);
	font-family: 'gothic';
}

dd {
	margin-left: 0;
	margin-bottom: 1.5rem;
	letter-spacing: -0.25px;
	font-size: 0.937rem;
	line-height: 150%;
	font-family: 'Hahmlet';
	font-weight: 600;
}

.msg_box {
	width: 75%;
	margin: 20px auto;
	padding: 28px 24px;
	border: 1px solid rgb(0, 163, 239);
	color: rgb(0, 163, 239);
}

.msg_box>p {
	font-size: 0.937rem;
	border-bottom: none;
	font-family: 'Malgun Gothic';
	font-weight: 600;
}
.condition>li{ 
	height:50px;
	width:30%;
	border-bottom: solid 1px rgb(0, 163, 239);
	margin:0px;
	padding: 20px 12px;
    line-height: 50px;
}
.condition>li:nth-child(2n){width:60%;
    font-weight: 600;} 
.condition>li:nth-child(2n-1){
	font-size:1.7rem;
	color: rgb(0, 163, 239);
	font-family: 'Do Hyeon';
    text-align: center;
	} 
</style>
</head>
<body>
	<div class="top">
		<div class="text">
			가맹점 창업안내
			<h1>
				LEAF 가맹점은 <br />좋은 품질의 원두를 <br />합리적인 가격으로 <br />제공 받습니다.
			</h1>
		</div>
	</div>
	<div class="container">
		<section>
			<h2>창업절차</h2>
			<ul>
				<li><p>1</p>
					<dl>
						<dt>창업설명회</dt>
						<dd>가맹지원서 및 상권조사표 작성</dd>
					</dl></li>
				<li><p>2</p>
					<dl>
						<dt>점포문의 및 본부확인</dt>
						<dd>
							상권 및 입지확인<br />
							<br />수도권:약 1주<br />지방:약 2주 소요
						</dd>
					</dl></li>
				<li><p>3</p>
					<dl>
						<dt>본사 점주 승인</dt>
						<dd>
							LEAF 본사 검토 후<br />가맹점 개설 여부 결정<br />
							<br />정보공개서, 가맹계약서<br />메일로 발송/확인
						</dd>
					</dl></li>
				<li><p>4</p>
					<dl>
						<dt>점포 개설 협의</dt>
						<dd>
							인테리어 및 시설공사 등<br />점포 개설 과정 협의
						</dd>
					</dl></li>
				<li><p>5</p>
					<dl>
						<dt>당사 계약 체결</dt>
						<dd>
							최초 2년 계약, 이후 <br />1년 단위 재계약<br />임대차 계약 후 가맹 계약 체결
						</dd>
					</dl></li>
				<li><p>6</p>
					<dl>
						<dt>인테리어 & 시설공사</dt>
						<dd>
							약 3주 내외 소요, 현장 상황에<br />따라 변동가능
						</dd>
					</dl></li>
				<li><p>7</p>
					<dl>
						<dt>교육</dt>
						<dd>
							점포 포함 최소 2명,<br />교육 기간 최소 14일<br />
							<br />점주1:14일<br />직원2:14일(테스트 미통과 or<br />교육 불성실 시 재교육)
						</dd>
					</dl></li>
				<li><p>8</p>
					<dl>
						<dt>개점준비 & 가오픈</dt>
						<dd>
							운영 시뮬레이션을 통한<br />오픈 준비사항 최종 점검
						</dd>
					</dl></li>
				<li><p>9</p>
					<dl>
						<dt>개점</dt>
						<dd>
							가맹점 정식 오픈 및 <br />인터넷 매장 정보등록
						</dd>
					</dl></li>
				<li><p>10</p>
					<dl>
						<dt>사후 관리</dt>
						<dd>
							관리 본사 점검팀 순회를 통해<br />주기적인 매장 점검
						</dd>
					</dl></li>
			</ul>
		</section>
		<div class="msg_box">
			<p>본사 점검팀 순회를 통해 주기적인 매장 점검</p>
			<p>* 가맹 계약 후 최소 60일~90일 이후 오픈</p>
			<p>* 홈페이지 내 창업문의를 통해 본사와 상담 후 참석 및 가맹지원서 작성/제출하여야만 창업 진행 가능</p>
			<p>* 타겟 고객층에 적합한 입지를 선정/통보하여 본부의 승인을 받고 임대차/가맹 계약을 체결하여야 하며, 점주
				본인이 반드시 교육을 이수해야 함</p>
			<p></p>
		</div>
		<section>
			<h2>창업조건</h2>
			<ul class="condition">
				<li style="line-height: 100px;height: 100px;">브랜드 컨셉</li><li style="line-height: 25px;height: 100px;">좋은 품질의 원두커피를 합리적인 가격으로 판매<br/>고품질/합리적인 가격, 고회전<br/>젊은 층에 어필할 수 있는 빽다방 고유의 메뉴<br/>타 브랜드에 비교하여 10% 이상의 대용량 제공</li>
				<li>타겟 고객층</li><li>남녀노소 구분 없이 다양함</li>
				<li>타겟 입지</li><li>역세권/대학가/Office 등 배후지 및 유동인구가 풍부한 입지 (버스정류장, 횡단보도, 퇴근 동선 가정)</li>
				<li>필요 면적(전용)</li><li>1층, 8평 이상(전용), 식자재 저장 등을 감안한 추가 면적 필요</li>
				<li>주요 메뉴</li><li>아메리카노, 원조커피, LEAF엔나, 옥수크림, 호두크런치 등</li>
				<li>창업 가능 지역</li><li>서울/수도권, 중부권, 부산/경남권, 대구/경북권, 강원권, 전라권, 제주도</li>
			</ul>
			
		</section>
	</div>
</body>
</html>