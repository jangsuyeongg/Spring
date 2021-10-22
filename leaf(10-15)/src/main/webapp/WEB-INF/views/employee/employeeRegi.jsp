<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
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
	.mfi-inputbox .mfi-iB-tel #tel1{width:30%; display:inline-block; height:47px; margin-right:20px;} 
	.mfi-inputbox .mfi-iB-tel input{width:30%; margin-right:20px;}
	.mfi-inputbox .mfi-iB-tel input:last-of-type{width:30%; margin-right:0px;}
	.mfi-inputbox #userid{width:400px; float:left;}
	.mfi-inputbox #joinCheck{width:122px; background:rgb(0,163,239); color:#fff; border:0px solid; margin-left:6px; box-sizing:border-box;}
	/* 부서파트 */
	.mfi-inputbox #dept_name{width:460px;}
	.mfi-inputbox #dept_img{width:48px; height:48px; float:right; background-image:url(img/empimg.png); background-size:cover;box-sizing: border-box; border: 1px solid gray;}
	.mfi-inputbox #emp_posi{width:530px; display:inline-block; height:47px; margin-right:20px;}
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
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/flatpickr.min.js"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<script>
	function deptPopOpen(){		
		window.open("<%=request.getContextPath()%>/deptlist","dept_list","width=680,height=560");	
	}
	
	function goFocus(inputbox){
		if(inputbox.value.length==4){
			frm.tel3.focus();
		}
	}
	$(()=>{
		const regExpId = /^[a-z0-9]*$/;				
		
		$('#joinCheck').click(function(){
			let inputUserid = "";
			inputUserid = $('#userid').val();
			if(inputUserid===null || inputUserid==""){
				alert("가입한 아이디를 입력해주세요.");				
				$('#userid').focus();
				return false;
			}
			else{				
				if(!regExpId.test(inputUserid)){
					alert("아이디는 영문자와 숫자만 입력 가능합니다.");
					$('#userid').focus();
					return false;
				}else{
						// 화면에 회원정보가 출력됨. (아이디,이름,연락처,이메일)
						$.ajax({
							url : "/myapp/employeeJoinChecking",
							data : "userid="+inputUserid,
							method: "post",
							success : function(result){								
								if(result == '' || result==null){
									alert("존재하지 않는 아이디입니다.");
									$('#userid').focus();
									return false;
								}
								if(result.nullid!=0 ){
									alert("이미 가입된 사원입니다.");
									$('#userid').val('');
									$('#userid').focus();									
									return false;
								}
							
								let yesOrNo = confirm("회원이름 : "+result.username+" 이 맞습니까?");
								if(!yesOrNo){
									$('#userid').val("");
									$('#userid').focus();
									return false;						
								}else{
									$('#userid').val(result.userid);
									$('#username').val(result.username);
									$('#tel1').val(result.tel1);
									$('#tel2').val(result.tel2);
									$('#tel3').val(result.tel3);
									$('#email').val(result.email);
									$('#idcheck').val(0);
									$('#userid').prop('readonly',true);
									
								}
							}, error : function(){
								alert("존재하지 않는 아이디입니다.");
								return false;
							}
						});
					}			
			}
		});// 가입확인절차 click함수	
		
		// 입사일 선택달력
		flatpickr("#emp_regdate");
		let dateSelect = document.querySelector('#emp_regdate');
		flatpickr.localize(flatpickr.l10ns.ko);
		flatpickr(dateSelect);
		dateSelect.flatpickr({
			maxDate:new Date(),
			disable:[
				function(date){ // 주말선택 제외
					return(date.getDay()===0||date.getDay()===6);
				}
			]			
		});
		
		$('form[name=frm]').submit(function(){
			if($('#idcheck').val()===1 || $('#userid').val()==='' || $('#userid').val()==null){
				alert("가입여부 확인이 필요합니다.");
				return false;
			}
			if($('#dept_name').val()==='' || $('#dept_name').val()==null){
				alert("부서명을 입력해주세요.");
				return false;
			}
			if($('#emp_regdate').val()==='' || $('#emp_regdate').val()==null){
				alert("입사일을 입력해주세요.");
				return false;
			}
		});

		
	});
				
</script>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>	
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/employeeManagePage">사원검색</a></div>
	   <div class="tbn-menu2"><a href="<%=request.getContextPath()%>/employeeRegiPage">사원등록</a></div>	   	   
	</nav>
	<main>
		<div class="main-Form-bg">
			<form method="post" action="<%=request.getContextPath()%>/employeeRegister" name="frm">
				<div class="main-form-Con">
					<strong>사원등록</strong>				
					<section class="mf-inputCon">
						<div class="mfi-img"></div>
							<p class="mfi-title">사원정보를 입력해주세요.</p>
						<div class="mfi-inputbox">
							<strong>가입 확인 절차
								<span>(필수)</span>
							</strong>
							<input type="hidden" value="1" id="idcheck" name="idcheck"/>
							<input type="text" name="userid" id="userid" placeholder="가입한 아이디"/>
							<input type="button" value="가입여부확인" id="joinCheck"/>
						</div>	
						<div class="mfi-inputbox">
							<strong>사원명</strong>	
							<input type="text" name="username" id="username" placeholder="사원명" readonly/>
						</div>
						<div class="mfi-inputbox">
							<strong>연락처</strong>
							<div class="mfi-iB-tel">
								<input type="text" id="tel1" name="tel1" readonly>									
								<input type="text" name="tel2" id="tel2" readonly/>
								<input type="text" name="tel3" id="tel3" readonly/>
							</div>
						</div>
						<div class="mfi-inputbox">
							<strong>이메일</strong>
							<input type="email" name="email" id="email" placeholder="이메일" readonly/>
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
							<select name="emp_posi" id="emp_posi">
								<option value="사원">사원</option>
								<option value="주임">주임</option>
								<option value="대리">대리</option>
								<option value="과장">과장</option>
								<option value="차장">차장</option>
								<option value="부장">부장</option>
							</select> 						
						</div>
						<div class="mfi-inputbox">
							<strong>입사일</strong>	
							<input name="emp_regdate" id="emp_regdate" placeholder="입사일 선택하기"/>						
						</div>						
					</section>
				<div class="regiForm-submit">
					<input type="hidden" name="dept_num" id="dept_num"/>										
					<input type="submit" id="emp-regi" value="등록하기"/>
				</div>
				</div>
			</form>
		</div>		
	</main>
	<%@ include file="/inc/bottom3.jspf" %>
</body>
</html>