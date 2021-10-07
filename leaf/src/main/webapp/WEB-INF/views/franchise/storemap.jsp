<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
ul,li{
 margin: 0;
 padding: 0;
 list-style: none;
 font-family: 'Do Hyeon'
}
#map {
	width: 90%;
	height: 700px;
	border: 1px solid gray;
	position: absolute;
	left:5%;
}
#mapList{
	position: absolute;
	left:8%;
	top:10%;
	background: white;
	border-radius: 3%;
	width:300px;
	height: 580px;
	opacity: 0.8;
}
.searchstore{
	background: rgb(0,163,239);
	font-size: 1.8rem;
	color: white;
	text-align: center;
	padding-top:10px;
}
#searched>li{
    height: 80px;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}
input[type="text"]{
	width: 90%;
    height: 30px;
    border: none;
    border-radius: 2%;
}
.searchResult{
	font-size: 1em;
}
</style>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJSzwXGvvtIypU1a6qlp-Vw0hY-4ZQ_I0&callback=initMap">
	
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
		var map = new google.maps.Map(document.getElementById("map"), mapProperty);

	}
</script>
</head>
<body>
<div id='map'>
</div>
<div id='mapList'>
	<ul>
		<li class="searchstore">매장찾기</li>
		<li class="searchstore"><input type="text" placeholder="매장명 또는 주소"></li>
		<li class="searchstore searchResult">(검색 결과 5개)</li>
		<li>
			<ul id="searched">
				<li>무교로<br/>
				서울특별시 중구 무교로 15(무교동)<br/>
				1522-3232
				</li>
				<li>한국 프레스 센터<br/>서울특별시 중구 세종대로 124(태평로1가)<br/>1522-3232</li>
				<li>무교동<br/><br/></li>
				<li>시청<br/><br/></li>
				<li>종로<br/><br/></li>
			</ul>
		</li>
	</ul>
</div>
</body>
</html>