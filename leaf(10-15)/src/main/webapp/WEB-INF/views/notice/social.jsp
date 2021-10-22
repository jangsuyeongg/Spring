<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	body{margin:0;}
	ul,li{list-style-type: none;padding:0;margin:0;}
	header img{width:100%;height:250px;}
	header{height:250px;}
	#headerText{position:relative;top:-100px;left:800px;font-size:3em;color:white;opacity:0.5}	
	nav a{color:#62605F;}
	a:link, a:hover a:visited{text-decoration: none;}
	#detailMenu{display:flex;justify-content:center;width:100%;border-bottom:1px solid gray;}
	#detailMenu>div{padding:15px 40px;}
	#menu2{border-bottom:4px solid rgb(0, 163, 239);}
	.soc_cam{width:1100px;margin:0 auto;}
	.soc_cam>div:first-child{font-size:1.8em;padding:40px 5px}
	.soc_cam>div:nth-child(3){font-size:1.2em;padding:25px 0px;color:rgb(0, 163, 239)}
	.soc_cam>div:nth-child(4){font-size:0.9em;padding-bottom:40px;color:#62605F}
	.socList{display:flex;background-color:#F5F0E9;padding:40px 5px 40px 0;margin-bottom:80px}
	.socList>li{border-right:1px solid lightgray;padding-left:30px;font-size:0.9em;width:25%}
	.socList>li span{font-size:1rem;color:#382E2C}
	.socList>li:last-child{border:none}
	.bottoncon{background-color:#F4F4F2;}
	.localSocialCon{width:1100px;margin:0 auto;}
	.localSocialCon>div:first-child{padding:40px 0;font-size:1.2em}
	.theme{display:flex;justify-content:space-between;align-items:center;padding-bottom:50px}
	.theme>ul>li:last-child{font-size:0.9em;color:gray;text-align:center;padding:25px 0}
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
<%@ include file="/inc/top.jspf" %>
<header>
	<img src="https://www.baristapaulbassett.co.kr/images/menu/subVisual_coffee.jpg"/>
	<span id="headerText">SOCIAL</span>
</header>
<nav id="detailMenu">
	<div id="menu1"><a href="/myapp/noticeList">공지사항</a></div>
	<div id="menu2"><a href="/myapp/social">사회공헌</a></div>
</nav>
<div class="soc_cam">
	<div>Leaf 사회공헌 캠페인 소개</div>
	<div><img src="img/social3.jpg"/></div>
	<div>"우리는 리프가 속한 지역사회에 긍정적인 영향을 미칠 수 있다고 믿으며, 또한 꼭 그래야만 한다고 생각합니다.<br/>
		이를 위해 한 분의 고객, 한 잔의 음료, 우리의 이웃 사회에 정성을 다합니다."
	</div>
	<div>리프는 전국 200여개의 매장을 운영하는 기업으로 성장하였으며 이러한 성장을 기반으로 사회에 기여하는 책임 또한 함께 증가했습니다.<br/><br/>
		리프의 비전은 파트너와 고객, 커피 농가 이웃 사회와 모두 함께 성장할 수 있도록 노력하면서 긍정적인 변화를 창출하는 것입니다.<br/>
		즉, 함께하는 사회와 건강한 환경을 위한 혁신업체이자 선도자, 또한 동시에 기여자가 되어 스타벅스와 관련된 모든 이들이 오랫동안 번성할 수 있게 하고자 합니다.
	 </div>
	 <ul class="socList">
	 	<li><span><strong>지역 사회 참여</strong></span><br/><br/>
	 		우리는 항상 좋은 이웃이 되기 위해<br/>
	 		노력합니다.<br/>
	 		파트너와 고객, 지역사회가 하나가<br/>
	 		되도록 최선을 다합니다.
	 	</li>
 		<li><span><strong>윤리적 원두 구매</strong></span><br/><br/>
	 		우리는 친환경적으로 재배하고,<br/>
	 		윤리적으로 거래된 최상푸무 커피<br/>
	 		원두만을 구매합니다.
	 	</li>
 		<li><span><strong>환경 보호 활동</strong></span><br/><br/>
 			우리는 환경피해를 최소화하고<br/>
 			전세계 기후변화 방지를 위해<br/>
 			노력하며 많은 고객들의 참여를<br/>
 			지원합니다.	 		
	 	</li>
	 	<li><span><strong>일자리 창출</strong></span><br/><br/>
	 		우리는 교육과 훈련 그리고 채용 등<br/>
	 		다양한 기회 제공을 위한 투자를<br/>
	 		지속하고 있습니다.
	 	</li>
	 </ul>
 </div>	
<div class="bottoncon">	
	<div class="localSocialCon">
		<div><strong>국내 사회공헌 활동 테마</strong></div>
		<div class="theme">
			<ul>
				<li><img src="img/theme1_1.png"/></li>
				<li>우리는 청년들이 꿈을 실현할 기회를 만날 수 있도록<br/>
					다양한 청년인재 양성 활동을 전개합니다.
				</li>
			</ul>
			<ul>
				<li><img src="img/themeli2.png"/></li>
				<li>우리는 커피 원산지에서 매장에 이르기까지<br/>
					환경 발자국 줄이기에 노력하고 있습니다.
				</li>
			</ul>
			<ul>
				<li><img src="img/themeli3.png"/></li>
				<li>우리는 문화재 지키기 캠페인을 통해<br/>
					전통문화를 알리고 보존하고자 노력합니다.
				</li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>