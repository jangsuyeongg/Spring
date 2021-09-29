<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>

   $(()=>{
	   /*
	   $(".bx-wrapper").on({mouseenter:function(){
	         $(this).css('z-index',10);
	      },mouseleave:function(){
	         $(this).css('z-index',-1); 
	      }});
		*/
	   //게시물 불러오기 
	   
	   function boardList(){
		   let url="/seoul/boardList";
		   $.ajax({
	            url:url,
	            success:function(result){
	               let $r=$(result);
	               
	               $r.each(function(idx, vo){
	                  let tag="";
	                  tag+="<li><input type='checkbox' id='' name='checked'></li>"
	                  tag+="<li>"+vo.no+"</li> <li class='wordCut'><a   href='list.jsp?num=1'>"+vo.subject+"</a></li>"; 
	                  tag+="<li>"+vo.userid+"</li>";
	                  tag+="<li>"+vo.writedate+"</li>";
	                  tag+="<li>"+vo.hit+"</li>";
	                  $("#boardList").append(tag);
	               });
	            }
		
	         });
	         return false;
	   }
	   boardList();
   });
   
   

	
</script>
   

<div class="container">
	<div id="menu">
	   <ul id="menulist" >
	      <li><a href="#">나의 서울</a></li>
	      <li><a href="#">전자우편</a></li>
	      <li><a href="#">서울소개</a>
	         <ul>
	            <li><a href="#">시청안내</a></li>
	            <li><a href="#">서울의상징</a></li>
	            <li><a href="#">서울의역사</a></li>
	            <li><a href="#">서울정보</a></li>
	         </ul>
	      </li>
	      <li><a href="#">시민참여</a>
	         <ul>
	            <li><a href="#">서울시민과의대화</a></li>
	            <li><a href="#">시민의견</a></li>
	            <li><a href="#">공모전</a></li>
	         </ul>
	      </li>
	      <li><a href="#">청사안내</a>
	         <ul>
	            <li><a href="#">조직도</a></li>
	            <li><a href="#">시의회</a></li>
	            <li><a href="#">자치구</a></li>
	         </ul>
	      </li>
	   </ul>
	</div>
	<div class="imgslide">
	      <div><img src="img/banner1.jpg" title="Seoul Music FestivalSeoul"/></div>
	      <div><img src="img/banner2.jpg" title="SIBAC 2019"/></div>
	      <div><img src="img/banner3.jpg" title="2019 서울전환도시 국제컨퍼런스"/></div>
	      <div><img src="img/banner4.jpg" title="2019 다다다 발표대회"/></div>
	      <div><img src="img/banner5.jpg" title="2019 서울인공지능챗본론"/></div>
	      <div><img src="img/banner6.jpg" title="서울차 없는 날"/></div>
	      <div><img src="img/banner7.jpg" title="Zero 제로페이 미국 캐나다 이벤트"/></div>
	      <div><img src="img/banner8.jpg"  title=""/></div>
	      
	</div>
	<div class="board">
	<h1>자유게시판</h1>
	    <input type="checkbox" id="allChk">전체선택
	    <ul id="boardList">
	        <li>  </li>
	        <li> 번호</li>
	        <li> 제목</li>
	        <li> 작성자</li>
	        <li> 작성일</li>
	        <li> 조회수</li>
		</ul>
		
	</div>
	
	<ul class="pagination pagination" id="paging">
		<li class='page-item'><a href="#" class='page-link'>Prev</a></li>
		<li class='page-item'><a href="#" class='page-link'>1</a></li>
		<li class='page-item'><a href="#" class='page-link'>2</a></li>
		<li class='page-item'><a href="#" class='page-link'>3</a></li>
		<li class='page-item'><a href="#" class='page-link'>4</a></li>
		<li class='page-item'><a href="#" class='page-link'>5</a></li>
		<li class='page-item'><a href="#" class='page-link'>Next</a></li>
	</ul>
</div>
