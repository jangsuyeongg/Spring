<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너 수정</title>
<style>
	.main-form-Con{max-width: 570px; margin: 0 auto; padding: 70px 0 50px;}
	.main-form-Con>strong{display: block;font-size: 30px;font-weight: normal;margin:30px auto;text-align: center}
	.mf-inputCon{border: 1px solid #ddd; border-bottom:0px solid gray; border-radius: 3px; box-sizing: border-box; max-width: 570px; margin: 0 auto 30px; position: relative;}
	.mfi-img{margin: 0 auto; text-align: center; padding: 30px 20px 0; background: url(img/empimg.png) 50% 100% no-repeat; width: 205px; height: 182px;}
	.mfi-inputbox{background: #fff; border-bottom: 1px solid #ddd; padding: 20px 20px; position: relative;}
	.mfi-title{background: #fff; border-bottom: 1px solid #ddd; color: #777; font-size: 18px; line-height: 24px; text-align: center;padding: 30px 20px 30px; margin:0;}
	.mfi-inputbox input{border: 1px solid #ddd; border-radius: 3px; box-sizing: border-box; display: inline-block; width:530px; padding:15px;}
	.mfi-inputbox strong{color: #222; display: block; font-size: 18px; margin-bottom: 10px;}
	.mfi-inputbox .mfi-iB-tel select{width:30%; display:inline-block; height:47px; margin-right:20px;} 
	.mfi-inputbox .mfi-iB-tel input{width:30%; margin-right:20px;}
	.mfi-inputbox .mfi-iB-tel input:last-of-type{width:30%; margin-right:0px;}
	/* 부서파트 */	
	.mfi-inputbox #part_code{width:530px; display:inline-block; height:47px; margin-right:20px;}
	.regiForm-submit{width: 530px; margin: 0 auto 30px; padding:20px 20px;}
	.regiForm-submit #part-regi{width:530px; padding:15px;background: rgb(0,192,239); border: 1px solid white; color: white; font-size: 1.1em}
	
	/* 상단 이미지와 네비바 */
	a{color:gray}
    a:link, a:hover a:visited{text-decoration: none;}
    button{background-color:white;cursor:pointer;} 
	 .top-banner-imgCon{background:url(img/managerbannerimg.jpg) no-repeat center; background-size:cover;
   					height:250px;position:relative; min-width:1400px; overflow:hidden;
   	}   
   .top-banner-imgCon .headerText{width:1400px;font-size:3em;color:white;z-index:100;opacity:1; margin:90px auto 0;text-align:center;}
   .top-banner-nav{display:flex;justify-content:center;width:100%;border-bottom:1px solid gray;}
   .top-banner-nav>div{padding:15px 40px;}
   .top-banner-nav>.tbn-menu3{border-bottom:4px solid rgb(0, 163, 239);}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>	
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/partnerManagePage">파트너검색</a></div>
	   <div class="tbn-menu2"><a href="<%=request.getContextPath()%>/partnerManageRegi">파트너등록</a></div>
	   <div class="tbn-menu3">파트너수정</div>   	   
	</nav>
	<main>
		<div>
			<form method="post" action="">
				<div class="main-form-Con">
					<strong>파트너수정</strong>				
					<section class="mf-inputCon">
						<div class="mfi-img"></div>
							<p class="mfi-title">파트너정보를 입력해주세요.</p>
						<div class="mfi-inputbox">
							<strong>담당자명
								<span>(필수)</span>
							</strong>	
							<input type="text" name="part_name" id="part_name" placeholder="파트너명"/>
						</div>
						<div class="mfi-inputbox">
							<strong>연락처
								<span>(필수)</span>
							</strong>
							<div class="mfi-iB-tel">
								<select id="part_tel1" name="part_tel1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>								
								</select>
								<input type="text" name="part_tel2" id="part_tel2"/>
								<input type="text" name="part_tel3" id="part_tel3"/>
							</div>
						</div>
						<div class="mfi-inputbox">
							<strong>이메일
								<span>(필수)</span>
							</strong>
							<input type="email" name="part__email" id="part_email" placeholder="이메일"/>
						</div>
					</section>

					<section class="mf-inputCon">
						<div class="mfi-inputbox">
							<strong>
								<span>분류명(필수)</span>
							</strong>							
							<select name="part_code" id="part_code">
								<option value="bipum">비품</option>
								<option value="food">식자재</option>
								<option value="transit">운송</option>
								<option value="equipment">설비</option>
							</select>
						</div>
						<div class="mfi-inputbox">
							<strong>업체명
								<span>(필수)</span>
							</strong>	
							<input type="text" name="part_company" id="part_company" placeholder="업체명"/>							
						</div>
						<div class="mfi-inputbox">
							<strong>등록일</strong>	
							<input type="text" name="part_regdate" id="part_regdate" readonly/>							
						</div>						
					</section>
				<div class="regiForm-submit">					
					<input type="submit" id="part-regi" value="등록하기"/>
				</div>
				</div>
			</form>
		</div>
	</main>
<script>
	$(()=>{
		$('.headerText').html('PARTNER');
	});
</script>
	<%@ include file="/inc/bottom3.jspf" %>
</body>
</html>