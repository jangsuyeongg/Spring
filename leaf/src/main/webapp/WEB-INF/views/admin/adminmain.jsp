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

/* top include login, menubar */
.intro_bg{background-repeat:no-repeat; background-size:cover; width: 100%; height:700px; margin:auto; min-width:1500px; overflow:hidden; position:relative;}
#top-div{width:1280px; margin:auto; height:50px; position:relative; z-index:100;}
#top-info{line-height:50px;	position: relative; left: 1000px;}
#top-info>li{float:left; padding:0 10px;}
#top-info>li:last-child{padding:0 0 0 30px;}
#top-info>li:last-child> a:hover{color:red;	font-weight:600;}
#top-info> li:before{content: ''; display: inline-block; width: 1px; height: 11px; border-left: 1px solid #777; line-height: 1; margin-left: 12px; margin-right: 12px;}
	/* 메뉴바*/
.header{width:100%; height:300px; margin:auto; position:relative; z-index:100;}
.header a:hover{font-size:1.2em; color:blue;}
#menu-bg{position:absolute;	width:100%;	height:260px; background :white; top:70px; opacity:0.887; display:none;}
.nav{line-height: 100px; position:relative; left:18%;}
.nav > li {text-align:center; float:left; width: 13%;}
.nav > li > a {color:white; font-size:1.05em;}
.nav > li> a:hover{font-size:1.3em; font-weight:300;}
	/* 드롭다운메뉴 서브메뉴 */
.sublist>li{margin-top: -30px; text-align:center; height:100px;}
.sublist{height:220px; display:none;}
.sublist>li>a{color:black; opacity:0.81;}
/* ===================*/

/* 동영상 */
.jb-box {position: absolute; width:100%; min-width: 1500px; top: -50px; z-index:-1;}
video {width:100%;}

/* 중단 가맹점현황, 총임직원, 함께하는 회원*/
.amount{top:-66px; display: flex; min-width:1500px; width:100%; background: #fff; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); margin: auto;}
.amount > li {flex: 1; height: 132px;}
.amount > li > div {text-align: center; margin-top:37px; height:57px;}
.amount > li:not(:last-child) > div{border-right:1px solid #E1E1E1;}
.contents1{font-size: 20px; font-weight: lighter;}
.result{font-size: 24px; display:inline-block; font-size:2em;}
#sales-container{margin:0 auto;}
#sales-count{display:inline-block; width:800px; height:100px; border:1px solid black; text-align:center; margin-top: 50px; padding-top: 10px;}
#sales-count>span{font-size:2em;}
.shadow_eff{position:relative; color:#002F2F; background: white; height: 162px; top: 10px;}
.shadow_eff:before,.shadow_eff:after{content:""; position:absolute; z-index:-1; width:300px; left:5px; top:80%; bottom:15px; background: #000; box-shadow: 0 20px 15px #000; transform: rotate(-5deg);}
.shadow_eff:after{transform: rotate(5deg); right: 5px; left: auto;}
/*-------------*/

/* 중단 카드슬라이드 */
.container{position: relative; display: flex; margin: auto;background: white; width: 1500px; top: 35px; justify-content: space-between;}
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
.notice-container{width: 100%; height:900px; min-width: 1500px; margin-top: 40px;}
.notice-container .notice{width:1500px; margin:auto; min-width:1400px; position:relative;}
.notice-container .notice:before{content: ""; position: absolute; top: 130px; width: 100%; height: 1px; background-color: #cccccb;}
.notice-top>h1{text-align: center; margin-top:50px; margin-left:100px;}
.notice-top>div {text-align: center; margin-top:5px; margin-left:100px;}
.notice-body{margin-top:50px; position: relative; height: 500px;}
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
<body>
	<!-- 상단부 -->	
	<header>
		<div class="intro_bg">
			<div id="top-div">
				<ul id="top-info">
					<li>인사부</li>
					<li id="info-name">전예찬 <span>님</span></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
			</div>
					
			<div class="header">			
				<div id="menu-bg"></div>
				<ul class="nav">
					<li class="home"><a href="<%=request.getContextPath()%>/adminMainPage">HOME</a></li>
					<li><a href="#">SUPERVISE</a>
						<ul class="sublist">
							<li><a href="#">제품관리</a></li>
							<li><a href="<%=request.getContextPath()%>/employeeManagePage">직원관리</a></li>
							<li><a href="<%=request.getContextPath()%>/partnerManagePage">파트너 관리</a></li>
						</ul>
					</li>
					<li><a href="#">OPEN</a>
						<ul class="sublist">
							<li><a href="<%=request.getContextPath()%>/openQuestionPage">창업 문의 내용</a></li>
							<li><a href="#">전국 가맹점 보기</a></li>						
						</ul>
					</li>
					<li><a href="#">SALES</a>
						<ul class="sublist">
							<li><a href="<%=request.getContextPath()%>/adminSalesMainPage">메뉴별 매출 현황</a></li>														
						</ul>
					</li>
					<li><a href="#">COMMUNITY</a>
						<ul class="sublist">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">사회공헌 현황</a></li>							
						</ul>
					</li>
				</ul>
			</div>
	       	
 	       	<div class="jb-box">
              <video muted autoplay loop>
                <source src="img/adminbgvideo.mp4" type="video/mp4">                
              </video>
            </div>
		</div>
	</header>	
	
      
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
			                        <div class="view inline-block"><a href="#">자세히 보기</a></div>
			                    </div>
			                </div>
			                <div class="bn" style="background-image:url('img/machine.png');">
			                    <div class="inner-txt">
			                        <div class="tt inline-block">커피머신 출시</div>
			                        	<div class="slider-content">	
					                        It is kind of fun to do the impossible.<br>
					                        자세한 사항은 아래 버튼을 클릭해주세요.
					                    </div>    
			                        <div class="view inline-block"><a href="#">자세히 보기</a></div>
			                    </div>
			                </div>			                
			                <div class="bn" style="background-image:url('img/bongsa.jpg');">
			                    <div class="inner-txt">
			                        <div class="tt inline-block">해외봉사활동 접수</div>				                        
					                	<div class="slider-content">        
					                        I didn’t get there by wishing for it or hoping for it, but by working for it.<br>
					                        자세한 사항은 아래 버튼을 클릭해주세요.
					                	</div>
			                        <div class="view inline-block"><a href="#">자세히 보기</a></div>
			                    </div>
			                </div>				                
			            </div>
			            <div class="page-btns">
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
	}, 8000);

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
