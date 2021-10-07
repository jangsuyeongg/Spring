<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/inc/top.jspf" %>

<style>
	.bx-wrapper {
		border: none;
		
		}
	a:link, a:hover, a:visited {
		text-decoration: none;
		color: black;
	}
	
	body {
		margin: 0;
		padding: 0;
	}
	
	li, ul {
		margin: 0;
		padding: 0;
		list-style-type: none;
	}
	
	#wrapper {
		width: auto;
		margin: 0 auto;
	}

	.item>img{
    width: 100%;
    height: 100vh;
    border:0;
}
/* 이솜이 파일 css */
	#backImg{
	    position: fixed;
	    top:0;
	    z-index: -1;
	    opacity: 0.7;
	    width: 100%;
	    height: 100vh;
	}
	#backImg>img{
	    width: 100%;
	    height: 100vh;
	}
	.bx-default-pager{
	    display: none;
	}
	.bx-wrapper img{
	    -moz-box-shadow: none;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    border: 0;
	}
	.blank{
	    position: relative;
	    z-index: -2;
	    height:20vh;
	    background-color: white;
	    opacity: 0;
	}
	.notice{
	    display: flex;
	    flex: 4 1 0;
	    height: 800px;
	    background-color:white;  /*#e0e5ec;*/
	    
	}
	
	.noticeText_icon{
		font-size: 6em;
	}
	
	.text{
	    color:rgb(0, 163, 239);
	}
	.list{
	    font-size: 1.5em;
	}
	
	
	#main1_imgSlider_Txt>li {
		position: absolute;
		z-index: 10;
		top: -300px;
		color:white;
		font-size: 2em;
		font-weight:bold;
		margin-left: 200px;
	}
	#imgText{
		font-size:1.5em;
		color:white;
	}
	.noticeText_icon, .blank_text{
		margin-left:-500px;
	}
	.noticeText{
		margin-top:100px;
		font-weight:bold;
	}
	.noticeText_icon i{
		font-size:2em;
		margin-left:40px;
		margin-top:-80px;
	}
	.blank_text1,.blank_text2,.blank_text3{
		position: relative;
	    z-index: 0;
	    color:white;
	    font-size:6em;
	    font-weight:bold;
	    margin-left:-500px;
	}
	.fav_img{
		background-image: url(https://image.istarbucks.co.kr/upload/common/img/main/2021/2021_autumn_fav.png);
	    top: -409px;
	    left: 1000px;
	    right: -10px;
	    width: 672px;
	    height: 458px;
	    position: relative;
	}
	
	
	/*notice 버튼 css*/
	.frame {
	  width: 90%;
	  text-align: center;
	  margin-top:150px;
	  margin-left:-150px;
	}
	
	button {
	  margin: 20px;
	}
	.custom-btn {
	  width: 500px;
	  height: 40px;
	  color: #fff;
	  border-radius: 5px;
	  padding: 10px 25px;
	  font-family: 'Lato', sans-serif;
	  font-weight: 500;
	  background: transparent;
	  cursor: pointer;
	  transition: all 0.3s ease;
	  position: relative;
	  display: inline-block;
	   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
	   7px 7px 20px 0px rgba(0,0,0,.1),
	   4px 4px 5px 0px rgba(0,0,0,.1);
	  outline: none;
	}

	/* 16 */
	.btn-16 {
	  border: none;
	  color: #000;
	}
	.btn-16:after {
	  position: absolute;
	  content: "";
	  width: 0;
	  height: 100%;
	  top: 0;
	  left: 0;
	  direction: rtl;
	  z-index: 1;
	  box-shadow:
	   -7px -7px 20px 0px #fff9,
	   -4px -4px 5px 0px #fff9,
	   7px 7px 20px 0px #0002,
	   4px 4px 5px 0px #0001;
	  transition: all 0.3s ease;
	}
	.btn-16:hover {
	  color: #000;
	}
	.btn-16:hover:after {
	  left: auto;
	  right: 0;
	  width: 100%;
	}
	.btn-16:active {
	  top: 2px;
	}
	

</style>
<script>
	$(function (){
	    $('.mainImg').bxSlider({
	        mode:'horizontal', 
	        speed:2000,//변환속도
	        auto:true, //자동시작(true,false)
	        infiniteLoop: true, //반복여부설정(true,false)
	        hideControlOnEnd: true //처음과 마지막에 컨트롤러 표시여부(true, false) infiniteLoop이 있어야함
	
	    });
	    
		//이미지 설명
		$('#main1_imgSlider_Txt').innerfade({
			animationtype : 'slide',
			speed : 2000,
			delay : 500,
			timeout : 5000
		});

		 // 스크롤
		 $(window).scroll(function() {
			 if(window.scrollY > 1500) {
			 	$('.noticeText_icon').animate({marginLeft:'500px'},1500);
			 }
			 if(window.scrollY > 600) {
				 	$('.blank_text1').animate({marginLeft:'400px'},500);
				 }
			 if(window.scrollY > 600) {
				 	$('.blank_text2').animate({marginLeft:'400px'},1000);
				 }
			 if(window.scrollY > 600) {
				 	$('.blank_text3').animate({marginLeft:'400px'},1500);
				 }
		 });
	});

</script>
</head>
<body>
	 <div class="mainImg">
	 	
        <div class="item">
            <img src="img/coffee9.jpg"/>
        </div>
        <div class="item">
            <img src="img/coffee8.jpg"/>
        </div>
        <div class="item">
            <img src="img/main1.jpg"/>
    	</div>
    </div>
    <div>
		<ul id="main1_imgSlider_Txt">
			<li><span id="imgText">우리의 작은 말과 행동</span><br/>
				 곧 우리의 브랜드가 됩니다</li>
			<li><span id="imgText">고객이 신뢰할 수 있는 품질로</span> <br/>
				사랑받는 브랜드, 존경받는 기업이 됩시다</li>
			<li><span id="imgText">우리가 만드는 제품과 서비스로</span><br/>
				 고객의 하루를 행복하게 합니다. </li>
			<li><span id="imgText">맛있는 커피와 최고의 서비스로</span><br/>
				 다시찾고 싶은 휴식공간이 되겠습니다.
			</li>
					
		</ul>
	</div>
    <div class="blank"></div>
    <span class="blank_text1">PICK </span><br/><span class="blank_text2">YOUR</span><br/> <span class="blank_text3">FAVORITE</span>
    <div class="fav_img"></div>
            <div class="notice">
            <div class="noticeText_icon">
                <div class="noticeText">NOTICE</div><br/>
                <i class="fas fa-chalkboard"></i>
            </div>
                <div class="frame">
                최근공지사항
                <hr/>
				<button class="custom-btn btn-16">leaf&nbsp;&nbsp;서강점 폐점 2021.09.18</button><br/>
				<button class="custom-btn btn-16">leaf&nbsp;&nbsp;서강점 폐점 2021.09.18</button><br/>
				<button class="custom-btn btn-16">leaf&nbsp;&nbsp;서강점 폐점 2021.09.18</button><br/>
				<button class="custom-btn btn-16">leaf&nbsp;&nbsp;서강점 폐점 2021.09.18</button>
				</div>	
             </div>
      
       <!-- background -->
	 <div id="backImg"><img src="img/main1.jpg"  alt=""></div>
	 <%@ include file="/inc/bottom.jspf" %>
