<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	/* 사원 컨테이너 */
	.manage-listCon{overflow:auto; text-align:center; padding:0;}
	/* ------------------ */
		
	/*사원 검색폼*/
	.emptopCon{height:100px; background:#ddd;}
	#empImg{height:100px; width:300px; display: inline-block; margin-left:220px; margin-top:10px;}
	#empImgWord{font-size:1.4em; display:inline-block; position:relative; top:-20px; left:30px;}	
	#searchForm{display: inline-block; width: 730px; height: 60px; position: relative; top: -24px;}
	select[name=searchEmpSelect]{height:50px; width:100px; font-size:1em;}
	input[name="searchWord"]{height:50px; width:500px; font-size:1em;}
	.searchButton{height:50px; width:100px; box-sizing: border-box; font-size:1em;}
	
	/* 사원 리스트 정렬 select박스 */
	.array_button{width:1400px; height:80px;}
	select[name=empArraySelect]{font-size:1.1em; display:inline-block; width:100px; height:40px; position:relative; left:1300px; top:20px;}
	
	/* 사원리스트 top */
	.manage-list-container{width:1400px; height:800px; margin:50px auto 0 auto;}
	#emp-list-top{overflow:auto; text-align:center; padding:0; background-color:#ddd; height:50px; font-size:1.13em; line-height:45px;}
	#emp-list-top>li{float:left; width:10%; border-top:3px solid black;}
	#emp-list-top>li:nth-child(8n+1){width:3%;}
	#emp-list-top>li:nth-child(8n+2){width:7%;}
	#emp-list-top>li:nth-child(8n+5){width:15%;}	
	#emp-list-top>li:nth-child(8n+6){width:25%;}
	#emp-list-top>li:nth-child(8n+7){width:20%;}
	/*사원 리스트*/
	#emp-list{overflow:auto; text-align:center; padding:0;}
	#emp-list>li{float:left; width:10%; border-bottom: 1px solid black; height:50px; font-size:1.1em; line-height:50px;}
	#emp-list>li:nth-child(8n+1){width:3%;}
	#emp-list>li:nth-child(8n+2){width:7%;}
	#emp-list>li:nth-child(8n+5){width:15%;}
	#emp-list>li:nth-child(8n+6){width:25%;}
	#emp-list>li:nth-child(8n+7){width:20%;}
	
	/* 페이징 번호*/
	.page_wrap {text-align:center; font-size:0; height:30px; margin-top: 20px; position:relative;}
	.page_nation {display:inline-block; position:relative;}
	.page_nation a {display:block; margin:0 3px; float:left; border:1px solid #e6e6e6; width:28px;
					height:28px; line-height:28px; text-align:center; background-color:#fff; font-size:13px;
					color:#999999; text-decoration:none;}
	.page_nation .arrow {border:1px solid #ccc;}
	.page_nation .pprev {background:#f8f8f8 url('img/page_pprev.png') no-repeat center center; margin-left:0;}
	.page_nation .prev {background:#f8f8f8 url('img/page_prev.png') no-repeat center center; margin-right:7px;}
	.page_nation .next {background:#f8f8f8 url('img/page_next.png') no-repeat center center; margin-left:7px;}
	.page_nation .nnext {background:#f8f8f8 url('img/page_nnext.png') no-repeat center center; margin-right:0;}
	.page_nation a.active {background-color:#42454c; color:#fff; border:1px solid #42454c;}
	
	/* 파트너 등록, 수정버튼 */
	.emp-button{display:inline-block; position:absolute; left:1280px;}	
	#partnerChange{width:120px; height:30px; font-size:15px;border:0px solid; color:#fff; background:rgb(0,163,239); cursor:pointer;}
	
	/* 네비바 파트너검색 선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu1{border-bottom:4px solid rgb(0, 163, 239);}	
</style>
</head>
<body>
	<%@ include file="/inc/top3.jspf" %>
	<nav class="top-banner-nav">
		<div class="tbn-menu1"><a href="<%=request.getContextPath()%>/partnerManagePage">파트너검색</a></div>
		<div class="tbn-menu2"><a href="<%=request.getContextPath()%>/partnerManageRegi">파트너등록</a></div>	   
	</nav>
	<!-- 메인부 -->
<form method="GET" action="<%=request.getContextPath()%>/partnerChange">	
	<main>
		<div class="notice-con">
			<div class="page-main-notice">
				<h3>파트너 관리</h3>
				<p>파트너 정보를 확인하실 수 있습니다.</p>
			</div>	
		</div>
		<div class="manage-list-container">
			<!-- 협력업체 검색폼 -->
			<div class="emptopCon">
				<span id="empImg"><img src="img/empimg.png"><span id="empImgWord">파트너검색</span></span>
				<div id="searchForm">
					<select name="searchEmpSelect">
						<option value="empno">업체명</option>
						<option value="empname">담당자</option>						
					</select>
					<input type="text" name="searchWord" id="searchWord"/>
					<button type="button" class="searchButton">search</button>
				</div>
			</div>
			
			<div class="array_button">
				<!-- 협력업체 선택 -->				
				<select name="empArraySelect">
					<option value="" selected>--정렬--</option>
					<option value="arrayEmpNo">업체명</option>
					<option value="arrayEmpName">담당자</option>					
				</select>					
			</div>
			<!-- 협력헙체 리스트 -->
			<div class="manage-listCon">								
				<ul id="emp-list-top">
					<li>선택</li>				
					<li>파트너번호</li>
					<li>분류명</li>
					<li>업체명</li>
					<li>담당자</li>
					<li>연락처</li>
					<li>이메일</li>
					<li>등록일</li>
				</ul>
				<ul id="emp-list">	
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>9900</li>
					<li>인테리어</li>
					<li>삼성전자</li>
					<li>박동현</li>
					<li>010-3232-3212</li>
					<li>bakdohy@naver.com</li>
					<li>2021-09-25</li>
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>9900</li>
					<li>인테리어</li>
					<li>삼성전자</li>
					<li>박동현</li>
					<li>010-3232-3212</li>
					<li>bakdohy@naver.com</li>
					<li>2021-09-25</li>
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>9900</li>
					<li>인테리어</li>
					<li>삼성전자</li>
					<li>박동현</li>
					<li>010-3232-3212</li>
					<li>bakdohy@naver.com</li>
					<li>2021-09-25</li>
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>9900</li>
					<li>인테리어</li>
					<li>삼성전자</li>
					<li>박동현</li>
					<li>010-3232-3212</li>
					<li>bakdohy@naver.com</li>
					<li>2021-09-25</li>
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>9900</li>
					<li>인테리어</li>
					<li>삼성전자</li>
					<li>박동현</li>
					<li>010-3232-3212</li>
					<li>bakdohy@naver.com</li>
					<li>2021-09-25</li>
					<!--  -->
					
				</ul>
				
			</div>
			<!-- 페이징 버튼 -->
			<div class="page_wrap">
				<!-- 사원등록 -->
				<div class="emp-button">					
					<input type="submit" value="수정하기" name="partnerChange" id="partnerChange"/>
				</div>
				<div class="page_nation">
					<a class="arrow pprev" href="#"></a>
					<a class="arrow prev" href="#"></a>
					<a class="active" href="#">1</a> 
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a class="arrow next" href="#"></a>
					<a class="arrow nnext" href="#"></a>
				</div>
			</div>	
		</div>
	</main>
</form>	
<script>
	$(()=>{
		$('.headerText').html('PARTNER');
	});
</script>
	
	<%@ include file="/inc/bottom3.jspf" %>