<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" />
<style>
	/*.main-Form-bg{background-image: url(img/regibg1.jpg); background-size: cover; background-attachment: fixed;}*/
	.main-form-Con{max-width: 570px; margin: 0 auto; padding: 70px 0 50px;}
	.main-form-Con>strong{display: block;font-size: 30px;font-weight: normal;text-align: center; padding:30px;}
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
	.mfi-inputbox #dept_name{width:460px;}
	.mfi-inputbox #dept_img{width:48px; height:48px; float:right; background-image:url(img/empimg.png); background-size:cover;box-sizing: border-box; border: 1px solid gray;}
	.regiForm-submit{width: 530px; margin: 0 auto; padding:20px 20px 40px;}
	.regiForm-submit #emp-regi{width:530px; padding:15px;background: rgb(0,192,239); border: 1px solid white; color: white; font-size: 1.1em}
	
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
   .top-banner-nav>.tbn-menu2{border-bottom:4px solid rgb(0, 163, 239);}
   
   /* 네비바 사원등록선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu2{border-bottom:4px solid rgb(0, 163, 239);}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function deptPopOpen(){		
		window.open("<%=request.getContextPath()%>/deptlist","dept_list","width=680,height=560");	
	}
</script>
</head>
<body>
	<%@ include file="/inc/top3.jspf" %>	
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/employeeManagePage">사원검색</a></div>
	   <div class="tbn-menu2"><a href="<%=request.getContextPath()%>/employeeRegiPage">사원등록</a></div>	   	   
	</nav>
	<main>
		<div class="main-Form-bg">
			<form method="post" action="">
				<div class="main-form-Con">
					<strong>사원등록</strong>				
					<section class="mf-inputCon">
						<div class="mfi-img"></div>
							<p class="mfi-title">사원정보를 입력해주세요.</p>
						<div class="mfi-inputbox">
							<strong>사원명
								<span>(필수)</span>
							</strong>	
							<input type="text" name="emp_name" id="emp_name" placeholder="사원명"/>
						</div>
						<div class="mfi-inputbox">
							<strong>연락처
								<span>(필수)</span>
							</strong>
							<div class="mfi-iB-tel">
								<select id="emp_tel1" name="emp_tel1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>								
								</select>
								<input type="text" name="emp_tel2" id="emp_tel2"/>
								<input type="text" name="emp_tel3" id="emp_tel3"/>
							</div>
						</div>
						<div class="mfi-inputbox">
							<strong>이메일
								<span>(필수)</span>
							</strong>
							<input type="email" name="emp_email" id="emp_email" placeholder="이메일"/>
						</div>
					</section>

					<section class="mf-inputCon">
						<div class="mfi-inputbox">
							<strong>부서명
								<span>(필수)</span>
							</strong>	
							<input type="text" name="dept_name" id="dept_name" placeholder="부서명" readonly/>
							<button type="button" id="dept_img" onclick="deptPopOpen()"></button>
						</div>
						<div class="mfi-inputbox">
							<strong>직급
								<span>(필수)</span>
							</strong>	
							<input type="text" name="emp_posi" id="emp_posi" placeholder="직급"/>							
						</div>
						<div class="mfi-inputbox">
							<strong>등록일</strong>	
							<input type="text" name="emp_regdate" id="emp_regdate" readonly/>							
						</div>						
					</section>
				<div class="regiForm-submit">					
					<input type="submit" id="emp-regi" value="등록하기"/>
				</div>
				</div>
			</form>
		</div>
	</main>
	<%@ include file="/inc/bottom3.jspf" %>
</body>
</html>