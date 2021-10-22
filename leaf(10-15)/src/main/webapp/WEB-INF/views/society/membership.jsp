<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<style>
	body{margin:0;}
	a:link, a:hover a:visited{text-decoration: none;}
	ul,li{list-style-type: none;padding:0;margin:0;}
	header{height:250px;}
	header img{height:250px;width:100%}
		#headerText{position:relative;top:-100px;left:800px;font-size:3em;color:white;opacity:0.5}	
	#detailMenu{display:flex;justify-content:center;width:100%;border-bottom:1px solid gray;}
	#detailMenu>div:first-child{padding:15px 53px}
	#detailMenu>div:last-child{padding:15px 28px}
	#detailMenu a{color:#62605F;}
	#menu1{border-bottom:4px solid rgb(0, 163, 239);}
	.topContainer{background-color:#F5F0E9;}
	.total{margin:0 auto;width:1400px}
	.memGrade{background-color:white;display:flex;flex-direction:column;align-items:center;}
	.memGrade>div:nth-child(2), .memGrade>div:nth-child(3){font-size:1.1em;padding-bottom:5px;color:#62605F}
	#titleText{font-size:3em;padding:80px 0 30px 0;color:#382E2C}
	#pointTxt{color:#987346;text-decoration:underline;}
	.leafGrade{width:750px;display:flex;justify-content:space-between;align-items:center;padding:50px 0;}
	.leafGrade>div{display:flex;flex-direction:column;align-items:center;}
	.leafGrade>div div:nth-child(1){font-size:4em}
	.leafGrade>div div:nth-child(2){font-size:1.4em;padding-bottom:10px;}
	.leafGrade>div div:nth-child(3){color:#62605F;}
	.howToSaveTxt{width:750px;display:flex;justify-content:flex-start;padding-bottom:60px}
	.howToSaveTxt>div:nth-child(1){padding-right:15px;color:#B57549;}
	.howToSaveTxt>div:nth-child(2){font-size:0.9em;color:#62605F}
	.benefitList{width:1100px;margin:0 auto;}
	.benefitList>div:first-child, .benefitList>div:nth-child(3){padding:50px 0 30px 0;font-size:1.4em;color:#382E2C}	
	.beneList{display:flex;justify-content:space-between;padding-bottom:60px}
	.beneList>ul{border-bottom:1px solid #382E2C;width:270px}
	.beneList>ul>li:first-child{color:rgb(0, 163, 239);font-size:1.4em}
	.beneList>ul>li:nth-child(2){font-size:0.9em;color:#62605F}
	.beneList>ul>li:nth-child(3){text-align:end;font-size:2.3em;color:#382E2C}
	.savecontainer{width:1100px;margin:0 auto;}
	.savecontainer>div:first-child{text-align:center;font-size:2.2em;padding:50px 0;color:#382E2C}
	.saveList{width:1100px;display:flex;justify-content:space-around;align-items:center;padding-bottom:150px;}
	.saveList>ul{display:flex;flex-direction:column;align-items:center;}
	.saveList>ul>li:nth-child(2){padding:10px 0;color:rgb(0, 163, 239);font-size:1.3em;}
	.saveList>ul>li:nth-child(3){color:#62605F}
	#saveLeafImg{width:95px;height:95px;}	
</style>
<script>
$(()=>{	
	$("#headerText").animate({
	  	  top: "-160px", opacity:1
	  	  }, 1200,);
	$("#menu1").click(function(){
		$(this).css('color','rgb(0, 163, 239)').css('border-bottom','4px solid rgb(0, 163, 239)');
		$("#menu2").css('border','none');
	});
	$("#menu2").click(function(){
		$(this).css('color','rgb(0, 163, 239)').css('border-bottom','4px solid rgb(0, 163, 239)');
		$("#menu1").css('border','none');
	});
});
</script>
</head>
<body>
<%@ include file="/inc/top.jspf" %>
<header>
	<img src="https://www.baristapaulbassett.co.kr/images/whatsnew/eventSubVisual.jpg"/>
	<span id="headerText">SOCIETY</span>
</header>
<nav id="detailMenu">
	<div id="menu1"><a href="/myapp/membership">Society</a></div>
	<div id="menu2"><a href="/myapp/memberGrade">회원등급혜택</a></div>
</nav>
<div class="topContainer">
	<div class="total">
		<div class="memGrade">			
			 <div id="titleText"><strong>"플래티넘 회원"</strong>이 되어보세요!</div>
			 <div>leaf가 모일 때 마다 특정 조건 달성 시 회원 등급이 결정됩니다.</div>
			 <div><span id="pointTxt"><strong>Platinum 회원이 되시면 더 풍성한 Exclusive Benefits</strong></span>으로 돌려받을 수 있습니다.</div>			
			 <div class="leafGrade">
			 	<div>
			 		<div><i class="fab fa-envira"></i></div>
			 		<div><strong>Welcome</strong></div>
			 		<div>회원가입 시</div>
			 	</div>
			 	<div><img src="img/dot1.png"/></div>
			 	<div>
			 		<div><i class="fab fa-envira" style="color:#B9B9B9"></i></div>
			 		<div style="color:#B9B9B9"><strong>Silver</strong></div>
			 		<div>leaf 5개 적립 시</div>
			 	</div>
			 	<div><img src="img/dot1.png"/></div>
			 	<div>
			 		<div><i class="fab fa-envira" style="color:#BC9F73"></i></div>
			 		<div style="color:#BC9F73"><strong>Gold</strong></div>
			 		<div>leaf 10개 적립 시</div>
			 	</div>
			 	<div><img src="img/dot1.png"/></div>
			 	<div>
			 		<div><i class="fab fa-envira" style="color:rgb(0, 163, 239)"></i></div>
			 		<div style="color:rgb(0, 163, 239)"><strong>Platinum</strong></div>
			 		<div>leaf 20개 적립 시</div>
			 	</div>
		 	</div>
		 	<div class="howToSaveTxt">
		 		<div><i class="fab fa-envira"></i>  leaf 적립 방법</div>
		 		<div>
		 			-결제 1건당, leaf 1개 적입(최종 결제 금액 3천원 이상)<br/>
		 			-최종 결제 금액 1만원 초과 시마다, 하트 1개씩 추가 적립<br/>
		 			-매장에서 일 최대 5회 적립 가능(영수증 건수 기준)<br/>
		 			-할인쿠폰, 포인트 적용 시, 세트메뉴 구매 시 leaf 미적립<br/>
		 			-적립된 leaf는 1년 간 유지되면 이후 순차적으로 소멸
		 			
		 		</div>
		 	</div>			 
		</div>
	</div>
	<div class="benefitList">
		<div><strong>leaf란?</strong></div>
		<div style="color:#62605F">leaf 멤버십이면 구매할 때마다 leaf가 적립되는 서비스로 쌓이는 leaf에 따라 등급도 오르고 혜택도 특별해집니다.</div>
		<div><strong>Exclusive Benefits이란?</strong></div>
		<div class="beneList">
			<ul>
				<li>12+1</li>
				<li>12잔 구매 시 모든 제조음료<br/>
					1잔 FREE</li>
				<li><i class="fas fa-mug-hot"></i></li>			
			</ul>			
			<ul>
				<li>Happy Birthday</li>
				<li>회원계정에 등록된 생일 7일 전<br/>
					무료음료 쿠폰 발급</li>
				<li><i class="fas fa-birthday-cake"></i></li>			
			</ul>
			<ul>
				<li>프로모션 혜택</li>
				<li>멤버십 프로모션 진행 시<br/>
					다양한 혜택 제공</li>
				<li><i class="fas fa-gift"></i></li>			
			</ul>		
		</div>
	</div>		
</div>
<div class="savecontainer">
	<div>leaf 매장 적립</div>
	<div class="saveList">
		<ul>
			<li><img src="img/save1.png"/></li>
			<li>STEP1</li>
			<li>메뉴 주문</li>
		</ul>
		<div><img src="img/next.png"/></div>
		<ul>
			<li><img src="img/save2.png"/></li>
			<li>STEP2</li>
			<li>&nbsp;바코드 제시 또는<br/>휴대전화번호 입력</li>
		</ul>
		<div><img src="img/next.png"/></div>
		<ul>
			<li><img src="img/save3.png"/></li>
			<li>STEP3</li>
			<li>결제</li>
		</ul>
		<div><img src="img/next.png"/></div>
		<ul>
			<li><img src="img/save4.jpg" id="saveLeafImg"/></li>
			<li>STEP4</li>
			<li>leaf 적립</li>
		</ul>
	</div>
</div>
</body>
</html>