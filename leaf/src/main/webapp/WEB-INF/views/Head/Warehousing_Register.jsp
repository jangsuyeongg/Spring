<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf"%>
<style>
body {
	margin: 0;
}

.container {
	max-width: 1400px;
	display: flex;
	justify-content: center;
	margin: 0 auto;
	background-color: rgb(245, 240, 233);
}


/*head 이미지*/
header {
	height: 270px;
	position: relative;
}

#headerText {
	top: -100px;
	font-size: 3em;
	color: white;
	opacity: 0.5;
	text-align: center;
	position: relative;
}

nav {
	display: flex;
	justify-content: center;
	width: 100%;
	border-bottom: 1px solid gray;
}

nav>div {
	padding: 15px 40px;
}

#head_img {
	background-image:
		url(http://localhost:9090/myapp/img/managerbannerimg.jpg);
	z-index: -1;
	width: 100%;
	height: 270px;
}

.main-form-Con {
	max-width: 570px;
	margin: 0 auto;
	padding: 70px 0 50px;
}

.main-form-Con>strong {
	display: block;
	font-size: 20px;
	font-weight: normal;
	margin: 30px auto;
	text-align: center
}

.mf-inputCon {
	border: 1px solid #ddd;
	border-bottom: 0px solid gray;
	border-radius: 3px;
	box-sizing: border-box;
	max-width: 570px;
	margin: 0 auto 30px;
	position: relative;
}

.mfi-img {
	margin: 0 auto;
	text-align: center;
	padding: 30px 20px 0;
	background: url(img/empimg.png) 50% 100% no-repeat;
	width: 205px;
	height: 88px;
}

.mfi-inputbox {
	background: #fff;
	border-bottom: 1px solid #ddd;
	padding: 20px 20px;
	position: relative;
	background-color: rgb(245, 240, 233);
}

.mfi-title {
	background: #fff;
	border-bottom: 1px solid #ddd;
	color: #777;
	font-size: 15px;
	line-height: 24px;
	text-align: center;
	padding: 30px 20px 30px;
	margin: 0;
	background-color: rgb(245, 240, 233);
}

.mfi-inputbox input {
	border: 1px solid #ddd;
	border-radius: 3px;
	box-sizing: border-box;
	display: inline-block;
	width: 530px;
	padding: 10px;
	background-color: rgb(245, 240, 233);
}

.mfi-inputbox strong {
	color: #222;
	display: block;
	margin-bottom: 10px;
}

.mfi-inputbox .mfi-iB-tel select {
	width: 30%;
	display: inline-block;
	height: 40px;
	margin-right: 20px;
}

.mfi-inputbox .mfi-iB-tel input {
	width: 30%;
	margin-right: 20px;
	
}

.mfi-inputbox .mfi-iB-tel input:last-of-type {
	width: 30%;
	margin-right: 0px;
}
/* 부서파트 */
.mfi-inputbox #dept_name {
	width: 460px;
}

.mfi-inputbox #part_code, #part_num, #hq_name1, #hq_name, #part_company {
	width: 530px;
	display: inline-block;
	height: 40px;
	margin-right: 20px;
	background-color: rgb(245, 240, 233);
}

.regiForm-submit {
	width: 530px;
	padding: 20px 20px;
}

.regiForm-submit #part-regi {
	width: 530px;
	padding: 10px;
	background: rgb(30, 57, 50);
	border: 1px solid white;
	color: white;

}
</style>
<script>
	
	$(() => {
		$("input[type='file']").change(function(event){
			var imageFile = event.target.files[0];
			console.log(imageFile.name);
			var reader = new FileReader();
			reader.onload = (e) => {
				$("#fileimg").children().attr("src", e.target.result);
				$("#uploaded").html(imageFile.name);
			};
			reader.readAsDataURL(imageFile);
		});
		  $("#headerText").animate({
		       top: "-160px", opacity:1
		       }, 1200,);
	});
	
	$(function(){
		$(".group").change(function(){
			var selectedCtg = $(".group:selected").val();
			if(selectedCtg == "beans") {
				$(".group_s .code1").css('display','block');
				$(".group_s :not(.code1)").css('display','none');
			}else if(selectedCtg == "materials"){
				$(".group_s .code2").css('display','block');
				$(".group_s :not(.code2)").css('display','none');
			}else if(selectedCtg == "equipment"){
				$(".group_s .code3").css('display','block');
				$(".group_s :not(.code3)").css('display','none');
			}else if(selectedCtg == "etc"){
				$(".group_s .code4").css('display','block');
				$(".group_s :not(.code4)").css('display','none');
			}	
	
		});

	});
	
</script>
<header>
	<div id="head_img"></div>
	<div id="headerText">Warehousing Register</div>
</header>
<div class="container">
<form method="post" action="/myapp/warehousing_RegisterOk">
		<div class="main-form-Con">
			<section class="mf-inputCon">
				<div class="mfi-img"></div>
				<p class="mfi-title">입고된정보를 입력해주세요.</p>
				<div class="mfi-inputbox">
					<strong> <span>분류명(필수)</span>
					</strong> <select name="" id="part_code">
						<option value="bipum">비품</option>
						<option value="food">식자재</option>
						<option value="transit">운송</option>
						<option value="equipment">설비</option>
					</select>
				</div>
				<div class="mfi-inputbox">
					<strong>업체명 <span>(필수)</span>
					</strong> <select name="part_num" id="part_num" >
						<option value="29">서준물산</option>
						<option value="30">수영물산</option>
						<option value="31">이솜나라</option>
						<option value="32">(주)동현</option>
						<option value="33">영화세상</option>
						<option value=""></option>
					</select>
				</div>
				<div class="mfi-inputbox">
					<strong>제품명 <span>(필수)</span>
					</strong>
					<select id="hq_name1" class="group" >
						<option value="">분류</option>
						<option value="beans" class="group code1">원두</option>
						<option value="materials" class="group code2">원료</option>
						<option value="equipment" class="group code3">비품</option>
						<option value="etc" class="group code4">기타</option>
					</select>
					<select name="hq_name" id="hq_name" class="group_s">
						<option value="LEAF시그니처블랜드(200g)" class="code1">LEAF시그니처블랜드(200g)</option>
						<option value="콜롬비아(200g)" class="code1">콜롬비아(200g)</option>
						<option value="과테말라(200g)" class="code1">과테말라(200g)</option>
						<option value="브라질(200g)" class="code1">브라질(200g)</option>
						<option value="바닐라파우더" class="code2">바닐라파우더</option>
						<option value="헤이즐넛파우더" class="code2">헤이즐넛파우더</option>
						<option value="모카파우더" class="code2">모카파우더</option>
						<option value="초코파우더" class="code2">초코파우더</option>
						<option value="딸기시럽" class="code2">딸기시럽</option>
						<option value="빨대" class="code3">빨대</option>
						<option value="플라스틱컵" class="code3">플라스틱컵</option>
						<option value="종이컵" class="code3">종이컵</option>
						<option value="영수증용지" class="code3">영수증용지</option>
						<option value="냅킨" class="code3">냅킨</option>
						<option value="물티슈" class="code3">물티슈</option>
					</select>
				</div>
				<div class="mfi-inputbox">
					<strong>입고수량 <span>(필수)</span>
					</strong>
					<select name="ware_cnt" id="part_company">
						<option value="">입고수량</option>
						<option value="100">100</option>
						<option value="200">200</option>
						<option value="300">300</option>
						<option value="400">400</option>
						<option value="500">500</option>
						<option value="1000">1000</option>
					</select>
				</div>
				<div class="mfi-inputbox">
					<strong>입고가격 <span>(필수)</span>
					</strong> <input type="text" name="ware_price" id="part_company" placeholder="입고가격" />
				</div>
				<div class="regiForm-submit">					
						<input type="submit" id="part-regi" value="등록하기"/>
				</div>
			</section>
		</div>
	</form>
</div>
<%@ include file="/inc/bottom3.jspf"%>