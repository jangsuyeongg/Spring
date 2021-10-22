<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"	rel="stylesheet">
<title>LEAF 관리자 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
*{
  font-family: 'Noto Sans KR', sans-serif;
  list-style: none;
  text-decoration: none;
  border-collapse: collapse;
  margin:0px;
  padding: 0px;
  color: #000;
}
body{width:100%;display:inline-grid;/* body 여백으로인해 임시 선언 */}
h1 {font-size: 48px; font-weight: 100;}
button{-webkit-border-radius: 0; border-radius: 0; -webkit-appearance: none; -moz-appearance: none; appearance: none; border:0; background-color:transparent; color:black;}


.changeColor a:hover{text-decoration:none;
		color:rgb(0, 163, 239);
		font-size:1.1em;
		font-family: 'Signika Negative', sans-serif;
}


a{color:black;}

a:hover{
	text-decoration: none;
}
body{margin:0;

}

ul,li{
	list-style:none;
	margin:0;
	padding:0;
}

.login{
	float:right;
	width:50%;
	height:50px;
	
	font-family: 'Signika Negative', sans-serif;
}
.login>ul{
	display:flex;
	justify-content: flex-end;
	font-size:1em;
}
.login li{
	padding: 10px 30px;
}
.logoimg{/*로고이미지*/
	float:left;
	width:120px;
	height:80px;
	margin-top:20px;
	padding-left: 20px;
	
}
#section1{position:relative;height: 800px;}
#section2{position:relative;background: rgb(245, 240, 233);}
.logoimg>img{
	width: 100%;
	justify-content: flex-start;
	margin-top: 20px;
    margin-left: 20px;

}
.menuBar{/*menubar div*/
	position:absolute;
	left:15%;
	width:70%;
	margin-top: 75px;
	font-family: 'Signika Negative', sans-serif;
	
}
.main-ul{
	display:flex;
	justify-content:space-around;
	width:100%;
	font-size:1.2em;
	
}
.ulclass{
	display:none;
    margin-top: -16px
}
.ulclass>li{
	margin-top:50px;
	line-height:10px;

}
.select-li{
    width: 25%;
    text-align: center;
}
.select-li>div{width: 160px;
height: 46px;
    margin: 0 auto;
}
.select-li>div:hover{
	border-bottom: 4px solid rgb(0, 163, 239);
}

.header{
	position: relative;
	height:120px;
	z-index: 10;
	border-bottom: 1px solid #ddd;
}
.whitebg{/*마우스 흰색 배경 이벤트*/
	width:100%;
	height:450px;
	position:absolute;
	z-index: 7;
    background-color: white;
    display:none;
}
.menubtn { /*메뉴 안에 색깔 변하는거*/
	width: 345px;
	height: 65px;
	padding-left: 30px;
	background: rgb(245, 240, 233);
	transition: 0.25s;
	border: 1px solid black;
    line-height: 60px;
    font-size: 1rem;
    font-weight: 600;
}

.menubtn:hover { /*마우스 오버시 메뉴색깔 분홍색으로 변하는거*/
	box-shadow: inset 25em 0 0 0 rgb(0, 163, 239);
	color: white;
	border-color: rgb(0, 163, 239);
	padding-left: 32px;
}
	/* 드롭다운메뉴 서브메뉴 */
.sublist>li{margin-top: -30px; text-align:center; height:100px;}
.sublist{height:220px; display:none;}
.sublist>li>a{color:black; opacity:0.81;}
/* ===================*/

/* 동영상 */
.jb-box {position: relative; width:99vw; height: 100vh; overflow:hidden; z-index:-1;}
video { width: 100%; position:absolute; top:-111px;}

/* 중단 가맹점현황, 총임직원, 함께하는 회원*/
.amount{top:-66px; display: flex; min-width:1500px; width:100%; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); margin: auto;}
.amount > li {flex: 1; height: 180px;}
.amount > li > div {text-align: center; margin-top:55px; height:57px;}
.amount > li:not(:last-child) > div{border-right:1px solid #E1E1E1;}
.contents1{font-size: 20px; font-weight: lighter;}
.result{font-size: 24px; display:inline-block; font-size:2em;}
#sales-container{margin:0 auto;width:800px;}
#sales-count{background:white; display:inline-block; width:800px; height:100px; border:1px solid black; text-align:center; margin-top: 50px; padding-top: 10px;}
#sales-count>span{font-size:2em;}
.shadow_eff{position:relative; color:#002F2F; height: 162px; }
.shadow_eff:before,.shadow_eff:after{content:""; position:absolute; z-index:-1; width:300px; left:5px; top:80%; bottom:15px; background: #000; box-shadow: 0 20px 15px #000; transform: rotate(-5deg);}
.shadow_eff:after{transform: rotate(5deg); right: 5px; left: auto;}
/*-------------*/

/* 중단 카드슬라이드 */
.container{position: relative; display: flex; margin: auto;width: 1500px; justify-content: space-between;}
.container .card{position: relative; cursor: pointer; text-align:center;}
.container .card .face{width: 300px; height: 200px; transition: 0.5s;}
.container .card .face.face1{position: relative; display: flex; justify-content: center; align-items: center; z-index: 1; transform: translateY(100px);}
.container .card:hover .face.face1{background: rgb(0, 163, 239); transform: translateY(0);}
.container .card .face.face1 .content{opacity: 1; transition: 0.5s; width:300px; height: 200px; text-align:center;}
.container .card:hover .face.face1 .content{transition: 0.5s; background: rgb(0, 163, 239);}
.container .card .face.face1 .content img{width: 100px; height: 100px; padding-top: 24px;}
.container .card .face.face1 .content h3{margin: 10px 0 0; padding: 0; color: #fff; text-align: center; font-size: 1.5em;}
.container .card .face.face2{position: relative; display: flex;background: #fff; padding: 20px; justify-content: center; align-items: center; box-sizing: border-box; box-shadow: 10px 15px 18px rgb(192,192,192); transform: translateY(-100px);}
.container .card:hover .face.face2{transform: translateY(0);}
.container .card .face.face2 .content p{margin: 0; padding: 0;}
.container .card .face.face2 .content a{display: inline-block; margin: 35px 0 0; padding: 5px; text-decoration: none; font-weight: 900; color: #333; border: 1px solid #333;}
.container .card .face.face2 .content a:hover{background: #333; color: #fff;}
.face-bg1{background-image:url('img/springimg.jpg');}
.face-bg2{background-image:url('img/summerimg.jpg');}
.face-bg3{background-image:url('img/autumnimg.jpg');}
.face-bg4{background-image:url('img/winterimg.jpg');}
/*---------------------------*/

/* 중단  NOTICE 슬라이드부   */
.notice-container{width: 100%; height:900px; min-width: 1500px; }
.notice-container .notice{width:1500px; margin:auto; min-width:1400px; position:relative;}
.notice-container .notice:before{content: ""; position: absolute; top: 130px; width: 100%; height: 1px; background-color: #cccccb;}
.notice-top>h1{text-align: center; margin-top:50px; margin-left:100px;}
.notice-top>div {text-align: center; margin-top:5px; margin-left:100px;}
.notice-body{margin-top:75px; position: relative; height: 500px;}
.main-bn {position:absolute; width:100%; height:630px;}
.main-bn > .slider > .slides > .bn {position:absolute; transition:opacity 1s, visibility 1s; background-repeat:no-repeat; background-position:center; background-size:cover;
    top:0; left:0; right:0; bottom:0; opacity:0; visibility:hidden; height:530px; width:60%;}
.main-bn > .slider > .slides > .bn.active {opacity:1; visibility:visible;}
.main-bn > .slider > .slides > .bn > .inner-txt {position:absolute; height:530px; width:500px; left:1000px; color:block; box-sizing:border-box; letter-spacing:0.05rem; display:inline-block;}
.main-bn > .slider > .slides > .bn > .inner-txt > .tt {position: absolute; display: inline-block;top: 110px; height: 50px; width: 500px; text-align:center; font-size: 40px;}
.slider-content{position: absolute; display: inline-block; text-align:center; font-size: 20px; top: 240px; height: 100px; width: 500px;}
.slider{position: relative;}
.main-bn > .slider > .slides > .bn > .inner-txt > .view {position:absolute; display:inline-block; top:420px; left:150px; width:200px; text-align:center; font-size:1.1em; background:rgb(0, 163, 239);}
.main-bn > .slider > .slides > .bn > .inner-txt > div > a {display:block; line-height:45px; transition:color .3s; color:white;}
.main-bn > .slider > .slides > .bn > .inner-txt > div > a:hover {color:red;}
.inner-txt a{
	position:absolute;
	top:390px;
	left:65px; 
}	
.main-bn > .slider > .page-btns {position: absolute; left: 713px; bottom: 55px; width: 200px; top: 550px; height: 50px;}
.main-bn > .slider > .page-btns > .page-btn {position: absolute; display: inline-block; color: black; cursor: pointer; width: 30px; height: 50px; bottom:14px; left:10px;}
.main-bn > .slider > .page-btns > .next-btn {left: 115px;}
.main-bn > .slider > .page-btns > .page-btn > i {position: absolute; display: block; width: 30px; height: 50px; top: 0; font-size: 20px; color: black;}	
.main-bn > .slider > .page-btns > .page-no {position: absolute; top: 3px; left: 43%;}
.main-bn > .slider > .page-btns > .page-no > span {display:inline-block; color:black; font-size:18px;}	
#leaf-left-btn{width:80px; height:60px; transform:scaleX(-1);}
#leaf-right-btn{width:80px;	height:60px;}	
</style>
</head>
<script>

$(function(){/*메뉴바 전체가 나오는거*/
	$('.select-li').on({ //이벤트가 발생하는 주체 
		mouseenter:function(){
			$('.ulclass').css('display','block');
			$('.whitebg').css('display','block');
		},mouseleave:function(){
			$('.ulclass').css('display','none');
			$('.whitebg').css('display','none');
		}
	});
});
	
</script>
<body>
	<!-- 상단부 -->
	<div class="whitebg"></div>
	

<div class="header">
	<div class="login">
		<ul>
			<li><a href="/myapp/adminHome">본사</a></li>
			<li><a href="/myapp/franHome">가맹점</a></li>
			<li><a href="/myapp/loginOk">LOGIN</a></li>
			<li><a href="/myapp/register">JOIN</a></li>	
		</ul>
	</div>
	<!-- <a href="/leaf"><div class="logoimg"><img src="img/leaflogo-removebg-preview.png"/></div></a> -->
	<div class="logoimg"><img src="img/leaflogo-removebg-preview.png" onclick="location.href='/myapp/'"/></div>
	
<div class="changeColor">	
	
	<div class="menuBar">
		<ul class="main-ul">
			
<!---------------------------  -->			
			<li class="select-li"><div><a href="/myapp/menu_Register">SUPERVISE</a></div>
				<ul class="ulclass">
					<li><a href="/myapp/menu_Register">메뉴 관리</a></li>
					<li><a href="<%=request.getContextPath()%>/employeeManagePage">직원 관리</a></li>
					<li><a href="<%=request.getContextPath()%>/partnerManagePage">파트너 관리</a></li>
				</ul>					
			</li>
<!----------------------------------  -->	
			<li class="select-li"><div><a href="/myapp/purchase_Confirm">PRODUCT</a></div>
				<ul class="ulclass">
					<li><a href="/myapp/purchase_Confirm">발주확인(본사)</a></li>
							<li><a href="/myapp/Warehousing_Register">입고등록</a></li>
							<li><a href="/myapp/Warehousing_Management">입고관리</a></li>
				</ul>			
			</li>
<!--------------------------------------------->
			<li class="select-li"><div><a href="/myapp/noticeList">WHAT`S UP</a></div>
				<ul class="ulclass">
					<li><a href="/myapp/noticeList">NOTICE</a></li>
				</ul>				
			</li>
<!--------------------------------------------->			
			<li class="select-li"><div><a href="/myapp/franchise">FRANCHISE</a></div>
				<ul class="ulclass">
					<li><a href="/myapp/storemap">STORE</a></li>
					<li><a href="<%=request.getContextPath()%>/openQuestionPage">창업 문의 내용</a></li>
					<li><a href="<%=request.getContextPath()%>/adminSalesMainPage">메뉴별 매출 현황</a></li>
				</ul>			
			</li>
			
		</ul>
		
		</div>
</div><!-- changeColor -->		
</div>
		
	
		
 	       	<div class="jb-box">
              <video muted autoplay loop>
                <source src="img/adminbgvideo.mp4" type="video/mp4">                
              </video>
            </div>
	
<section id='section1'> 
    <!-- 중앙부 -->
    <div>
		<ul class="amount">
			<li>
				<div>
				    <div class="contents1">가맹점 현황</div>
				    <div class="result total-store"></div>
			      <span>점</span>
			    </div>
			</li>
		  	<li>
			    <div>
			    	<div class="contents1">총 임직원</div>
			    	<div class="result total-maneger"></div>
			    	<span>명</span>
			    </div>
		  	</li>
		  	<li>
		    	<div>
			        <div class="contents1">함께하는 회원</div>
			        <div class="result total-member"></div>
			        <span>명</span>
		    	</div>
		  	</li>
		</ul>
	</div>
	
	<div id="sales-container" class="shadow_eff">
		<div id="sales-count">
			<h2>10월 총 매출</h2>
			<span>￦</span>
			<div class="result total-sale"></div>
		</div>	
	</div>	

	<!-- 확인 4개버튼 -->	

 	 <div class="container">
        <div class="card">
            <div class="face face1 face-bg1">
                <div class="content">
                    <img src="img/groupicon.png">
                    <h3>가맹점 확인 </h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p><h4> 전국 가맹점을 검색할 수 있습니다.</h4></p>
                        <a href="#">Search</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1 face-bg2">
                <div class="content">
                       <img src="img/charticon.png">
                        <h3>매출 확인</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <h4>매출을 확인할 수 있습니다.</h4></p>
                        <a href="#">Search</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1 face-bg3">
                <div class="content">
                       <img src="img/stafficon.png">
                       <h3>직원 검색</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <h4>직원을 검색할 수 있습니다.</h4> </p>
                        <a href="#">Search</a>
                </div>
            </div>
        </div>
         <div class="card">
            <div class="face face1 face-bg4">
                <div class="content">
                       <img src="img/newsicon.png">
                       <h3> 메인 뉴스 </h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p><h4>관련 뉴스를 확인할 수 있습니다.</h4></p>
                        <a href="#">Search</a>
                </div>
            </div>
        </div>
    </div>
</section>
	
	<section id='section2'>
	
	<!-- 홍보물 -->
	<div class="notice-container">
      	<div class="notice">
      		<div class="notice-top">
		        <h1>NOTICE</h1>
		        <div>If you would be loved, love and be lovable</div>
		    </div>
		    <!-- NOTICE 메인부 -->
		    <div class="notice-body">    
			    <div class="main-bn">
			        <div class="slider">
			            <div class="slides">
			                <div class="bn active" style="background-image:url('img/inshop.jpg');">
			                    <div class="inner-txt">
			                        <div class="tt inline-block">마포점 신규인력지원 모집</div>
			                        	<div class="slider-content">
					                        Tough times never last, but tough people do.<br>
					                        자세한 사항은 아래 버튼을 클릭해주세요.
										</div>					                        
			                       		 <a href="#"><div class="menubtn">자세히 보기</div></a>
			                    </div>
			                </div>
			                <div class="bn" style="background-image:url('img/machine.png');">
			                    <div class="inner-txt">
			                        <div class="tt inline-block">커피머신 출시</div>
			                        	<div class="slider-content">	
					                        It is kind of fun to do the impossible.<br>
					                        자세한 사항은 아래 버튼을 클릭해주세요.
					                    </div>    
			                        <a href="#"><div class="menubtn">자세히 보기</div></a>
			                    </div>
			                </div>			                
			                <div class="bn" style="background-image:url('img/bongsa.jpg');">
			                    <div class="inner-txt">
			                        <div class="tt inline-block">해외봉사활동 접수</div>				                        
					                	<div class="slider-content">        
					                        I didn’t get there by wishing for it or hoping for it, but by working for it.<br>
					                        자세한 사항은 아래 버튼을 클릭해주세요.
					                	</div>
			                        <a href="#"><div class="menubtn">자세히 보기</div></a>
			                    </div>
			                </div>				                
			            </div>
			            <div class="page-btns" style="display:none;">
			                <button class="page-btn prev-btn"><i class="xi-angle-left"><img src="img/leaf.gif" id="leaf-left-btn"></i></button>
			                <button class="page-btn next-btn"><i class="xi-angle-right"><img src="img/leaf.gif" id="leaf-right-btn"></i></button>
			                <div class="page-no">
			                    <span class="current-slide-no"></span>
			                    <span class="slash">/</span>
			                    <span class="total-slide-no"></span>
			                </div>
			            </div>
			        </div>
			    </div>    
	      	</div>	
      	</div>
	</div>
	</section>
	<script>
//드롭다운 메뉴창
$('.nav>li:not(.home)').on('mouseenter',function(){
	$('#menu-bg').stop().slideDown();	
	$('.sublist').stop().slideDown();
});
$('#menu-bg').on('mouseleave',function(){
	$(this).stop().slideUp();	
	$('.sublist').stop().slideUp();
});

// 	숫자 증가 카운트
// 가맹점 현황
let tst = 123;
$({ val : 0 }).animate({ val : tst }, {
  duration: 20000,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val)); // 소수점 이하 버림
    $(".total-store").text(num);
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-store").text(num);
  }
});

// 총 매출
let tsal = 3832679300;
$({ val : 0 }).animate({ val : tsal }, {
  duration: 30000,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-sale").text(num);
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-sale").text(num);
  }
});

// 총 임직원
let tmg = 6;
$({ val : 0 }).animate({ val : tmg }, {
  duration: 20000,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-maneger").text(num);
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-maneger").text(num);
  }
});

// 함께하는 회원
let tmb = 201;
$({ val : 0 }).animate({ val : tmb }, {
  duration: 20000,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-member").text(num);
  },
  complete: function() { // text(num)사라진 후 수행할 작업
    var num = numberWithCommas(Math.floor(this.val));
    $(".total-member").text(num);
  }
});

// 정규식 사용 -> 천단위를 끊어 , 삽입
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

////////////////////////////////////////////////////////////////////////

// 관리자메인화면 하단 슬라이드
$('.page-btn').click(function(){
    let $clicked = $(this);
    let $slider = $(this).closest('.slider');
    
    let index = $(this).index();
    let isLeft = index == 0;    
    
    let $current = $slider.find(' > .slides > .bn.active');
    let $post;
    
    if ( isLeft ){
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    }    
    
    if ( $post.length == 0 ){
        if ( isLeft ){
            $post = $slider.find(' > .slides >.bn:last-child');
        }
        else {
            $post = $slider.find(' > .slides >.bn:first-child');
        }
    }
    
    $current.removeClass('active');
    $post.addClass('active');
    
    updateCurrentPageNumber();
});

setInterval(function(){
    $('.next-btn').click();
	}, 6000);

// 슬라이더 페이지 번호 지정
function pageNumber__Init(){
    // 전채 배너 페이지 갯수 세팅해서 .slider 에 'data-slide-total' 넣기
    var totalSlideNo = $('.bn').length;
    //console.log(totalSlideNo);
    
    $('.slider').attr('data-slide-total', totalSlideNo);
    
    // 각 배너 페이지 번호 매기기
    $('.bn').each(function(index, node){
        $(node).attr('data-slide-no', index + 1);
    });
};
pageNumber__Init();

// 슬라이더 이동시 페이지 번호 변경
function updateCurrentPageNumber(){
    var totalSlideNo = $('.slider').attr('data-slide-total');
    var currentSlideNo = $('.bn.active').attr('data-slide-no');
    
    $('.total-slide-no').html(totalSlideNo);
    $('.current-slide-no').html(currentSlideNo);
};
updateCurrentPageNumber();

</script>
	<%@ include file="/inc/bottom3.jspf" %>
