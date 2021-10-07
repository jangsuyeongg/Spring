<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	body{margin:0;}
	ul,li{list-style-type: none;padding:0;margin:0;}
	a:link, a:hover a:visited{color: dimgray;text-decoration: none;}
	img{width:100%;height:250px;}
	header{height:250px;}
	#headerText{position:relative;top:-100px;left:800px;font-size:3em;color:white;z-index:100;opacity:0.5}
	.around{background-color:#F5F0E9;padding-bottom:50px}
	.container{width:1200px;margin:0 auto;background-color:white;text-align:center;}
	.title_writedate{display:flex;justify-content:space-between;align-items:baseline;border-bottom:1px solid gray;padding:20px 0px;color:#382E2C}
	.blank{flex:1 1 15%}
	.title{flex:1 1 70%;font-size:1.5em;text-align:center;color:#382E2C}
	.title_writedate>div:last-child{flex:1 1 15%;font-size:0.8em;}
	.content{padding:40px 0px;color:#62605F}
	#noticeImg{width:800px;height:950px}
	.btnList{display:flex;justify-content:end;width:1200px;margin:0 auto;padding:30px 0px;}
	.btnList button{font-size:1.2em;padding:13px 30px;margin-right:20px;background-color:#9F8362;border:none;color:white;font-size:0.9em;cursor:pointer;}
	.prev_nextBtn{display:flex;border-top:1px solid gray}
	.prev_nextBtn>div{padding:30px 0;width:50%;justify-content:center;}
	.prev_nextBtn a{color:#382E2C}
	.prev_nextBtn button{border:none;background-color:white;cursor:pointer;padding:0 20px;font-size:1.2em;color:gray}
	.prev{display:flex;border-right:1px solid gray;padding:0 50px;}
	.next{display:flex;}
	.link>li:first-child{font-size:0.8em;font-weight:bold;}
</style>	
<script>
$(()=>{	
	$("#headerText").animate({
  	  top: "-160px", opacity:1
  	  }, 1200,);
});
</script>
</head>
<body>
<header>
	<img src="img/social2.jpg"/>
	<span id="headerText">WHAT'S NEW</span>
</header>
<div class="around">
	<div class="container">
	 	<div class="title_writedate">
	 		<div class="blank"></div>
			<div class="title">추석 연휴 영업시간 안내</div>
			<div><strong>등록일</strong> <span style="color:gray">2021-09-19</span></div> 
		</div>
		<div class="content">			
			<span>안녕하세요 leaf커피 입니다.<br/>
			추석 연휴 기간 동안 리프 영업시간이 변경되오니 이용시 참고해 주시기 바랍니다.<br/>
			연휴기간 매장 영업 시간 12:00~20:00<br/>
			9월21일 추석 당일 전매장 미운영<br/><br/><br/>			
			<img src="img/time.jpg" id="noticeImg"/><br/><br/>
			리프커피와 함께 즐거운 추석 연휴 보내시기 바랍니다.<br/>
			감사합니다.<br/><br/>	
			</span>
		</div>
	</div>
</div>
<div class="btnList">
	<button type="button" onclick="location.href='/myapp/noticeList'">삭제</button>
	<button type="button" onclick="location.href='/myapp/noticeEdit'">수정</button>
	<button type="button" onclick="location.href='/myapp/noticeList'">목록</button>
</div>	
<div class="prev_nextBtn">
	<div class="prev">
		<button><i class="fas fa-chevron-left"></i></button>
		<ul class="link">
			<li><a href="#">PREV</a></li>
			<li><a href="#">추석 연휴 영업 시간 안내</a></li>
		</ul>
	</div>
	<div class="next">
		<ul class="link">
			<li><a href="#">NEXT</a></li>
			<li><a href="#">추석 연휴 영업 시간 안내</a></li>
		</ul>
		<button><i class="fas fa-chevron-right"></i></button>
	</div>
</div>	
</body>
</html>