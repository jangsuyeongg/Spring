<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>창업문의 답변</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	/* 네비바 파트너등록 선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu2{border-bottom:4px solid rgb(0, 163, 239);}

	/*  창업문의자 정보 */
	.open-question-main{width:1400px; margin:0 auto;}
	.open-question-info{width:700px; margin:0 auto;}
	.open-question-info>h3{margin:50px auto 50px auto; text-align:center; font-size:2em;}
	.oqi-Con{width:560px; border:1px solid gray;border-radius: 3px; box-sizing: border-box; margin:0 auto;}
	.oqi-Con .oqi-img{margin:0 auto; padding:30px 20px 0; background:url(img/empimg.png) 50% 100% no-repeat; width:200px; height:100px;}
	.oqi-Con .oqi-img+p{text-align:center; font-size:25px;} 
	.oqi-Con .oqi-box{background: #fff; border-bottom: 1px solid #ddd; padding: 20px 20px; position: relative;}
	.oqi-box .oqi-title{color: #222; display: block; font-size: 18px; margin-bottom: 10px;}
	.oqi-box .oqi-info{border: 1px solid #ddd; border-radius: 3px; box-sizing: border-box; display: inline-block; width:500px; padding:15px;}
	
	/* 창업문의 내용 */
	.open-write-ct:before{display:block; width:1400px; border-bottom:2px solid rgb(0, 128, 192); content:''; margin:80px auto 0;}
	.open-write-ct{width:1400px; margin:0 auto;}
	.open-write-ct h2 {margin:30px 0 0 100px;}
	.owc{width:1200px; margin:50px auto; border-top:3px solid gray;}
	.owc-ct{overflow:auto;}
	.owc-ct>li{float:left; border-bottom:2px solid gray; width:20%; height:25px; font-size:1em;text-align:center;font-family: 'Noto Sans KR'}
	
	.owc-ct>li:nth-child(2n+1){background:#FFF0F5;padding:15px;clear:both;font-weight:600;}	
	.owc-ct>li:nth-child(2n){width:75%; padding:15px;}
	.owc-ct>li:nth-child(11){height:200px;}
	.owc-ct>li:nth-child(12){height:200px; position:relative}
	.owc-ct #content{resize:none; background:#fff; width:95%; height:150px; line-height:35px; font-size:1.4em;
					border-collapse:collapse; border:1px solid gray;
	}
	.owc-ct #text-count{font-size:1.3em;float:right; margin:10px 20px;font-family: 'Noto Sans KR';}
	.owc-ct #text-count+input[type=submit]{width:150px;height:40px;position:absolute; top:180px; left:390px;box-sizing: border-box;
    				border: 0px solid; background: rgb(0,192,239); color: #fff; font-weight: bold;}
	
</style>
<script>	
	$(()=>{	
		$('#content').on("keyup",function(){
			 
            if($(this).val().length > 500) {
                $(this).val($(this).val().substring(0, 500));
                $('#test_cnt').html("글자수가 초과되었습니다.");
            }else{
				$('#text-count').html($(this).val().length+ " / 500글자");            	
            }
		});
		
	});
</script>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/openQuestionPage">창업문의목록</a></div>
	   <div class="tbn-menu2">창업문의내용</div>	   	   	   
	</nav>
	<main class="open-question-main">
		<div class="open-question-info">
			<h3>창업문의 답변</h3>
			<div class="oqi-Con">
				<section>
					<div class="oqi-img"></div>
					<p>창업문의자 정보</p>
					<div class="oqi-box">
						<strong class="oqi-title">이름</strong>
						<label class="oqi-info" id="cli_name">이영화</label>
					</div>
					<div class="oqi-box">
						<strong class="oqi-title">이메일</strong>
						<label class="oqi-info" id="cli_email">dldudghk@naver.com</label>
					</div>
					<div class="oqi-box">
						<strong class="oqi-title">연락처</strong>
						<label class="oqi-info" id="cli_tel">010-2222-3333</label>
					</div>
					<div class="oqi-box">
						<strong class="oqi-title">연락 가능 시간</strong>
						<label class="oqi-info" id="hope_date">12:19~</label>
					</div>
				</section>
			</div>
		</div>	
		<div class="open-write-ct">
			<h2>문의내용</h2>
			<form>
			<div class="owc">
				<ul class="owc-ct">
					<li>제목</li>
					<li>구미에서 점포를 내고 싶은데</li>
					<li>등록일</li>
					<li>2021-09-26</li>
					<li>내용</li>
					<li>문의드려요. 2억5000이면 되나요?	</li>
					<li>답변상태</li>
					<li>답변대기</li>
					<li>답변자</li>
					<li>박동현</li>
					<li>답변하기</li>
					<li>
						<textarea name="content" id="content" cols="50" rows="11"></textarea>
						<label id="text-count">0/500글자</label>
						<input type="submit" value="답변하기"/>						
					</li>
				</ul>
			</div>
			</form>			
		</div>
	</main>
	<%@ include file="/inc/bottom3.jspf" %>
</body>
</html>