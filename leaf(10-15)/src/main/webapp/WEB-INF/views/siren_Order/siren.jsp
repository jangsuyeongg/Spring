<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJSzwXGvvtIypU1a6qlp-Vw0hY-4ZQ_I0&callback=initMap">
	
</script>
<style>
* {
	box-sizing: border-box; /*border포함 250*/
}

a:link, a:hover, a:visited {
	text-decoration: none;
	color: black;
}

ul, li {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

.main {
	display: flex;
	flex-direction: column;
	align-items: center;
	position: absolute;
}

.menu_title_container {
	display: flex;
	justify-content: center;
	border-bottom: 1px solid gray;
}

.menu_bar li {
	margin: 0 40px;
	line-height: 50px;
	height: 50px;
	width: 120px;
	text-align: center;
}

.imgwrap {
	width: 250px;
	height: 250px;
	display: flex;
	justify-content: center;
	overflow: hidden;
	border-radius: 100%;
	margin: 30px;
	position: relative;
}

.imgwrap:hover {
	border: 3px solid rgb(0, 163, 239);
}

#img {
	width: 250px;
	height: 250px;
	border-radius: 100%;
}

.menuList {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	width: 800px;
	margin-top: 50px;
}

.imgtext {
	text-align: center;
	font-size: 1.3em;
}

.imgtext2 {
	font-size: 0.8em;
	color: rgb(0, 163, 239);
}

.menu_title_container>li:hover {
	border-bottom: 3px solid rgb(0, 163, 239);
	cursor: pointer
}

#img:hover {
	cursor: pointer;
	transform: scale(1.2); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
	-o-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-webkit-transform: scale(1.2);
	transition: transform .35s;
	-o-transition: transform .35s;
	-moz-transition: transform .35s;
	-webkit-transition: transform .35s;
	transition: all 0.3s ease-in-out;
}

#img:not(:hover) {
	cursor: pointer;
	transform: scale(1); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
	-o-transform: scale(1);
	-moz-transform: scale(1);
	-webkit-transform: scale(1);
	transition: transform .35s;
	-o-transition: transform .35s;
	-moz-transition: transform .35s;
	-webkit-transition: transform .35s;
	transition: all 0.3s ease-in-out;
}

.menuList {
	display: flex;
}

.new {
	width: 50px;
	height: 50px;
	border-radius: 100%;
	background-color: rgb(0, 163, 239);
	position: relative;
	top: -328px;
	left: 43px;
	color: white;
	line-height: 50px;
	text-align: center;
}

.best {
	width: 50px;
	height: 50px;
	border-radius: 100%;
	background-color: rgb(89, 65, 54);
	position: relative;
	top: -328px;
	left: 43px;
	color: white;
	line-height: 50px;
	text-align: center;
}
</style>
<script>
	$(function() {
		$("#All").click(function() {
			$(".latte").css('display', 'block');
			$(".espresso").css('display', 'block');
			$(".coffee").css('display', 'block');
		});

		$("#Coffee").click(function() {
			$(".coffee").css('display', 'block');
			$(".latte").css('display', 'none');
			$(".espresso").css('display', 'none');

		});
		$("#Latte").click(function() {
			$(".latte").css('display', 'block');
			$(".coffee").css('display', 'none');
			$(".espresso").css('display', 'none');
		});
		$("#Espresso").click(function() {
			$(".espresso").css('display', 'block');
			$(".coffee").css('display', 'none');
			$(".latte").css('display', 'none');
		});

	});
</script>
<style type="text/css">
ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

section {
	height: 700px;
	width: 100%;
	background-size: cover;
	position: relative;
	font-size: 1rem;
}

.position {
	width: 1400px;
	margin: 0 auto;
	position: relative;
}

.list {
	height: 600px;
	width: 60%;
	float: left;
	position: absolute;
	overflow: auto;
}

#mapList {
	position: absolute;
	left: 1%;
	top: 11%;
	background: white;
	border-radius: 3%;
	width: 300px;
	height: 300px;
	opacity: 0.8;
}

.detail {
	position: relative;
	left: 65%;
	top: 15%;
	height: 645px;
}

.searchstore {
	background: rgb(0, 163, 239);
	font-size: 1.5rem;
	color: white;
	text-align: center;
	padding-top: 10px;
}

#searched>li {
	height: 80px;
	padding: 5px;
	border-bottom: 1px solid #ddd;
}

input[type="button"] {
	width: 235px;
	margin-right: 30px;
	font-size: 1.1rem;
	height: 35px;
	border: 1px solid rgb(0, 163, 239);
	border-radius: 5px;
	color: rgb(0, 163, 239);
	background: white;
}

.store li {
	width: 550px;
	height: 20px;
}

.menu li {
	width: 530px;
	height: 40px;
}

.menu img {
	width: 150px;
	height: 150px;
}

.cupSize input {
	width: 146px;
}

#countPlus, #countMinus {
	width: 50px;
}

span {
	margin-right: 30px;}
	
.cart{
	border: 1px solid gray;
	margin: 4px;
	width: 450px;
	float: left;
	padding :15px;
}
.total{
	clear: both;
}
.xbutton{
	width: 20px;
}
.cart li:first-child{
	display: flex;
    justify-content: space-between;
}
.menuname{
	margin-left:80px;
}
.price{text-align: right;
    font-size: 1.1em;
    font-weight: 600;
    }
</style>

<script>
	// https://cloud.google.com/maps-platform/
	// https://maps.googlepis.com/
	//위도, 경도
	var latitude = 37.5729503;
	var longitude = 126.9793578;

	function initMap() {
		var myCenter = new google.maps.LatLng(latitude, longitude);
		// 지도를 그릴 때 필요한  기타점을 JSON형식의 데이터로 생성한다.							
		var mapProperty = {
			center : myCenter,
			zoom : 17,//0~21까지의 값을 사용한다. 숫자가 클수록 확대된다.
			mapTypeId : google.maps.MapTypeId.ROADMAP
		//지도종류(ROADMAP, HYBRID, STEELITE, TERRAIN)
		};
		//지도를 표시할 곳	
		var map = new google.maps.Map(document.getElementById("map"),
				mapProperty);

	}
</script>
</head>
<body>
<%@ include file="/inc/top.jspf" %>
	<section class="section1">
		<div class="position">
			<h1 id="store">매장 선택</h1>
			<div id="map" class="list"></div>
			<div id='mapList'>
				<ul>
					<li class="searchstore">매장찾기</li>
					<li class="searchstore"><input type="text"
						placeholder="매장명 또는 주소"></li>
					<li>
						<ul id="searched">
							<li>무교로<br /> 서울특별시 중구 무교로 15(무교동)<br /> 1522-3232
							</li>
							<li>한국 프레스 센터<br />서울특별시 중구 세종대로 124(태평로1가)<br />1522-3232
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="detail store">
				<ul>
					<li>문정하비오점으로 선택하시겠어요?</li>
					<li style="height: 369px"><img
						src="img/15066662951506666295_kospi007.jpg" style=""></li>
					<li>문정하비오점</li>
					<li><hr /></li>
					<li>서울시 송파구 송파대로 111(문정...</li>
					<li><hr /></li>
					<li>사이렌 오더 운영시간 : 07:00 ~ 21:30</li>
					<li><hr /></li>
					<li>*결제 및 주문은 매장 2km 이내에서 가능합니다.</li>
					<li><hr /></li>
					<li><input type="button" value="아니오">
					<a href="#menuSelect"><input
						type="button" value="예"></a></li>
				</ul>
			</div>
		</div>
	</section>
	<section class="section2">
		<div class="position">
			<h1 id="menuSelect">메뉴 선택</h1>
			<div class="menu_bar" style="width: 60%;">
				<ul class="menu_title_container">
					<li id="All">All</li>
					<li id="Coffee">Coffee</li>
					<li id="Latte">Latte</li>
					<li id="Espresso">Espresso</li>
				</ul>
			</div>
			<div class="list">
				<div class="main">

					<div>
						<ul class="menuList">
							<li class="coffee"><div class="imgwrap">
									<a href="/suyeong/leaf/leaf_menu_detail.jsp"><img
										src="img/americano.png" id="img" /></a>
								</div>
								<div class="imgtext">
									아이스아메리카노<br />
									<span class="imgtext2">Iced Americano</span>
								</div>
								<div class="new">new</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/latte.png" id="img" />
								</div>
								<div class="imgtext">
									마키아토<br />
									<span class="imgtext2">Machiato</span>
								</div></li>
							<li class="espresso"><div class="imgwrap">
									<img src="img/espresso.png" id="img" />
								</div>
								<div class="imgtext">
									에스프레소<br />
									<span class="imgtext2">Espresso</span>
								</div>
								<div class="best">best</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/icecreamlatte.png" id="img" />
								</div>
								<div class="imgtext">
									아이스크림라떼<br />
									<span class="imgtext2">Icecream Latte</span>
								</div>
								<div class="best">best</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/malcha.png" id="img" />
								</div>
								<div class="imgtext">
									아이스 제주 말차 카페 라떼<br />
									<span class="imgtext2">Iced Jeju Malcha Cafe Latte</span>
								</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/latte2.png" id="img" />
								</div>
								<div class="imgtext">
									아이스 카페라떼<br />
									<span class="imgtext2">Iced Cafe Latte</span>
								</div>
								<div class="best">best</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/caramel.png" id="img" />
								</div>
								<div class="imgtext">
									아이스 카라멜마끼야또<br />
									<span class="imgtext2">Iced Caramel Macchiato</span>
								</div></li>
							<li class="latte"><div class="imgwrap">
									<img src="img/Einspanner.png" id="img" />
								</div>
								<div class="imgtext">
									제주바다 아인슈페너<br />
									<span class="imgtext2">Jeju Ocean Einspanner</span>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="detail menu">
				<ul>
					<li id="menuDetail">메뉴 상세</li>
					<li><hr /></li>
					<li style="display:flex;height: 170px; margin-left: 55px;"><img src="img/americano.png" id="img"
						style="width: 150px; height: 150px;" /> 
						<ul class="menuname">
							<li>아메리카노</li>
							<li><span class="imgtext2">Iced Americano</span></li>
							<li>4,300원</li>
							<li><input id="countPlus" type="button" value="+"> 
							<span> 1 </span> <input id="countMinus" type="button" value="-"></li>
						</ul>
					</li>
					<li><input type="button" value="일회용컵"><input
						type="button" value="매장컵"></li>
					<li class="cupSize"><input type="button" value="TALL"><input
						type="button" value="GRANDE"><input type="button"
						value="VENTI"></li>
					<li><hr /></li>
					<li><a href="#cart"><input type="button" value="장바구니 담기"></a><input
						type="button" value="주문하기"></li>
				</ul>
			</div>
		</div>
	</section>
	<section class="section3">
		<div class="position">
			<h1 id="cart">장바구니</h1>
			<input type="checkbox" name="">주문가능 메뉴만 선택 
				<hr />
			<div class="text bn3">
				<div class="cart">
					<ul>
						<li><span><input type="checkbox">음료</span><img class="xbutton" src="img/pngwing.com.png"></li><hr />
						
						<li><input type="checkbox"> 아이스 카페 아메리카노</li>
						<li>ICED / Tall/ 매장컵</li>
						<li class="price">4,300원</li>
						<hr />
						<li class="price" >4,300원</li>
					</ul>
				</div>
				<div class="cart">
			
						<ul>
							<li><span><input type="checkbox">푸드</span><img class="xbutton" src="img/pngwing.com.png"></li><hr />
							<li><input type="checkbox"> 브렉퍼스트 잉글리쉬 머핀</li>
							<li class="price">4,200원</li>
							<hr />
							<li class="price">4,200원</li>
						</ul>
					</div>
						<div class="total">
					<hr />
					
					<hr />
					문정하비오점<br /> 서울 특별시 송파구 송파대로 111(문정동,<br /> 파크하비오) 204동 104호~107호 <br/>
					<a href="#store"><input type="button" value="매장 변경" /></a> 	
						<hr />
						
						<h1 style="color:red;">총 2개 8,500원</h1><br/><input type="button" value="주문결제하기" />
				</div>
			</div>
		</div>
	</section>

</body>
</html>