<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>창업문의</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	/* 사원 컨테이너 */
	.emplistCon{height:650px; overflow:scroll;}
	/* ------------------ */
	/* 페이지 타이틀 */
	.page-main-notice{text-align:center;}
	.page-main-notice>h3{font-size:2em; color:#333; font-weight:700; margin-bottom:20px;}
	.page-main-notice>p{font-size:1em;}
	.page-main-notice>p:after{display:block; width:35px; border-bottom:2px solid rgb(0, 128, 192); content:''; margin:20px auto 0;}
	
	
	/*사원 검색폼*/
	.emptopCon{height:100px; background:#ddd; margin-top:50px;}
	#empImg{height:100px; width:300px; display: inline-block; margin-left:220px; margin-top:10px;}
	#empImgWord{font-size:1.4em; display:inline-block; position:relative; top:-20px; left:30px;}	
	#searchForm{display: inline-block; width: 730px; height: 60px; position: relative; top: -24px;}
	select[name="searchEmpSelect"]{height:50px; width:100px; font-size:1em;}
	input[name="searchWord"]{height:50px; width:500px; font-size:1em;}
	input[value="search"]{height:50px; width:100px; box-sizing: border-box; font-size:1em;}
	
	
	/* 사원 리스트 정렬 select박스 */
	.array_button{width:1400px; height:80px;}
	.array_button>label{font-size:1.2em; margin-left:10px;}
	input[name='replyStateView']{width:16px; height:16px; display:inline-block; margin:40px 0 0 1230px;}
	
	/* 사원리스트 top */
	#emp-list-container{width:1400px; height:800px; margin:50px auto 0 auto;}
	#emp-list-top{overflow:auto; text-align:center; padding:0; background-color:#ddd; height:50px; font-size:1.13em; line-height:45px;}
	#emp-list-top>li{float:left; width:10%; border-top:3px solid black;}
	#emp-list-top>li:nth-child(6n+3){width:50%;}
	
	/*사원 리스트*/
	#emp-list{overflow:auto; text-align:center; padding:0;}
	#emp-list>li{float:left; width:10%; border-bottom: 1px solid black; height:50px; font-size:1.1em; line-height:50px;}
	#emp-list>li:nth-child(6n+3){width:50%; text-align:left; text-align:center;}
	
	
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
	
	/* 사원 등록, 수정버튼 */
	.emp-button{display:inline-block; position:absolute; left:1280px;}	
	#openReply{width:120px; height:30px; font-size:15px; color:#fff; border:0px solid; background:rgb(0,163,239); cursor:pointer;}
	
	/* 네비바 창업문의목록 선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu1{border-bottom:4px solid rgb(0, 163, 239);}	
</style>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/openQuestionPage">창업문의목록</a></div>	   	   	   
	</nav>
	<!-- 메인부 -->
<form method="POST" action="<%=request.getContextPath()%>/openReplyView">	
	<main>
		<div id="emp-list-container">
			<div class="page-main-notice">
				<h3>창업문의</h3>
				<p>LEAF커피 창업문의 내용을 보실 수 있습니다.</p>
			</div>						
			<!-- 회원 검색폼 -->
			<div class="emptopCon">
				<span id="empImg"><img src="img/empimg.png"><span id="empImgWord">문의검색</span></span>
				<div id="searchForm">
					<select name="searchEmpSelect">
						<option value="empno">작성자</option>
						<option value="empname">제목</option>						
					</select>
					<input type="text" name="searchWord" id="searchWord"/>
					<input type="button" value="search"/>
				</div>
			</div>
			<div class="array_button">
				<!-- 리스트 출력방식 CheckBox -->				
				<input type="checkbox" name="replyStateView" value="replyNo" id="ck"/><label for="ck">답변대기만 보기</label>													
			</div>
			<!-- 사원 리스트 -->
			<div id="emplistCon">								
				<ul id="emp-list-top">
					<li>선택</li>				
					<li>NO</li>
					<li>제목</li>
					<li>작성자</li>
					<li>등록일</li>
					<li>답변상태</li>					
				</ul>
				<ul id="emp-list">	
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>1</li>
					<li><a href="#">구미에서 점포를 내고 싶은데</a></li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>					
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>1</li>
					<li>구미에서 점포를 내고 싶은데</li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>					
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>1</li>
					<li>구미에서 점포를 내고 싶은데</li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>					
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>1</li>
					<li>구미에서 점포를 내고 싶은데</li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>					
					<!--  -->
					<li><input type="radio" id="emp-select" name="emp-select"/></li>
					<li>1</li>
					<li>구미에서 점포를 내고 싶은데</li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>					
					<!--  -->
					
				</ul>
				
			</div>
			<!-- 페이징 버튼 -->
			<div class="page_wrap">
				<!-- 사원등록 -->
				<div class="emp-button">
					<input type="submit" value="답변하기" name="openReply" id="openReply"/>					
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
		$('.headerText').html('OPEN');
	});	
</script>	
<%@ include file="/inc/bottom3.jspf" %>
