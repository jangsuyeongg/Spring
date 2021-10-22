<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>
<style>
	* {
		box-sizing: border-box;/*border포함 250*/
	}
	a:link, a:hover, a:visited {
		text-decoration: none;
	}
	ul,li{
		margin:0;
		padding:0;
		list-style-type:none;
	}
	.main {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.menu_title_container {
		display: flex;
		justify-content: center;
		border-bottom: 1px solid gray;
	}
	.menu_bar li{
		margin: 0 40px;
		line-height:50px;
		height:50px;
	    width: 120px;
	    text-align: center;
	}
	.imgwrap {
		width:250px;
		height:250px;
		display: flex;
		justify-content: center;
		overflow: hidden;
		border-radius: 100%;
		margin: 30px;
		position:relative;
	}
	.imgwrap:hover {
		border:3px solid rgb(0, 163, 239);
	}
	#img{
		width:250px;
		height:250px;
		border-radius: 100%;
	}
	.menuList{
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		width:1250px;
		margin-top:50px;
	}
	.imgtext{
		text-align:center;
		font-size:1.3em;
	}
	.imgtext2{
		font-size:0.8em;
		color:rgb(0, 163, 239);
	}
	.menu_title_container>li:hover{
		border-bottom:3px solid rgb(0, 163, 239);
		cursor: pointer
	}
	#img:hover{
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
	#img:not(:hover){
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
	.menuList{
		display:flex;
	}
	.new{
		width:50px;
		height:50px;
		border-radius:100%;
		background-color:rgb(0, 163, 239);
		position:relative;
		top: -328px;
    	left: 43px;
   		color:white;
   		line-height:50px;
	    text-align: center;
	}
	.best{
		width:50px;
		height:50px;
		border-radius:100%;
		background-color:rgb(89, 65, 54);
		position:relative;
		top: -328px;
    	left: 43px;
   		color:white;
   		line-height:50px;
	    text-align: center;
	}
	/*head 이미지*/
   header{
   		height:330px;
   		position:relative;
   		}
   #headerText{
   		top:-100px;
   		font-size:3em;
   		color:white;
   		opacity:0.5;
   		text-align:center;
   		position: relative;
   		}
   nav{
   		display:flex;
   		justify-content:center;
   		width:100%;
   		border-bottom:1px solid gray;
   		}
   nav>div{
   		padding:15px 40px;
   		}
	#head_img{
		background-image:url(	https://www.baristapaulbassett.co.kr/images/menu/subVisual_beverage.jpg);
		z-index:-1;
		width:100%;
		height:330px;
	}
</style>
<script>
$(function(){
	$("#All").click(function(){
		$(".tea").css('display','block');
		$(".ade").css('display','block');
		$(".yogurt").css('display','block');
	});
	
	$("#Tea").click(function(){
		$(".tea").css('display','block');
		$(".ade").css('display','none');
		$(".yogurt").css('display','none');
		
	});
	$("#Ade").click(function(){
		$(".ade").css('display','block');
		$(".tea").css('display','none');
		$(".yogurt").css('display','none');
	});
	$("#Yogurt").click(function(){
		$(".yogurt").css('display','block');
		$(".ade").css('display','none');
		$(".tea").css('display','none');
	});
	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
	
});
</script>
<header>
<div id="head_img"></div>
   <div id="headerText">BEVERAGE</div>
</header>
<div class="main">
	<div class="menu_bar">
		<ul class="menu_title_container">
			<li id="All">All</li>
			<li id="Tea">Tea</li>
			<li id="Ade">Ade</li>
			<li id="Yogurt">Yogurt</li>
		</ul>
	</div>
	<div>
		<ul class="menuList">
			<li class="tea"><div class="imgwrap"><a href="/suyeong/leaf/leaf_menu_detail.jsp"><img src="img/IceEarlGrey.png" id="img"/></a></div>
				<div class="imgtext">아이스 얼그레이<br/><span class="imgtext2">Ice EarlGrey</span></div>
			</li>
			<li class="ade"><div class="imgwrap"><img src="img/JejuHallabongAde.png" id="img"/></div>
				<div class="imgtext">제주 한라봉 에이드<br/><span class="imgtext2">JejuHallabongAde</span></div>
			</li>
			<li class="ade"><div class="imgwrap"><img src="img/MojitoAde.png" id="img"/></div>
				<div class="imgtext">모히토 에이드<br/><span class="imgtext2">Mojito Ade.png</span></div>
				<div class="best">best</div>
			</li>
			<li class="ade"><div class="imgwrap"><img src="img/PeachGrapefruitAde.png" id="img"/></div>
				<div class="imgtext">복숭아 자몽 에이드<br/><span class="imgtext2">Peach Grape Fruit Ade</span></div>
			</li>
			<li class="yogurt"><div class="imgwrap"><img src="img/StrawberryYogurt.png" id="img"/></div>
				<div class="imgtext">스트로베리 요거트<br/><span class="imgtext2">Strawberry Yogurt</span></div>
			</li>
			<c:forEach var="MenuVO" items="${MenuList}"> 
				<li class="${MenuVO.s_code}"><div class="imgwrap"><a href="/myapp/menu_detail?p_num=${MenuVO.p_num}"><img src="img/${MenuVO.p_img}" id="img"/></a></div>
					<div class="imgtext">${MenuVO.p_name}<br/><span class="imgtext2">${MenuVO.p_ename}</span></div>
					<div class="${MenuVO.new_best}">${MenuVO.new_best}</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>	
<%@ include file="/inc/bottom.jspf" %>