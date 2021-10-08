<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js" integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
   <style>
      ul, li {
         list-style: none;
         margin: 0;
         padding: 0;
      }
      .wordCut {
         white-space: nowrap;
         text-overflow: ellipsis;
         overflow: hidden;
      }
      li {
         width: 10%;
         border-bottom: 1px solid gray;
         height: 40px;
         line-height: 40px;
         float: left;
      }
      li:nth-child(5n+2) {
         width: 60%;
      }
   </style>
   <script>
      $(() => {
         // 전체 선택
         $("#allCheck").click(function() {
            $("#frm input").prop("checked", $(this).prop("checked"));
         });
         
         // 배열에 레코드 저장한 뒤 삭제
         $("#arrayDel").click(() => {
            // form의 action을 설정한 뒤 submit
            $("#frm").attr("action", "/myapp/arrayBoardDel");
            $("#frm").submit();
         });
         //컬렉션에 레콛 번호 저장한 후 삭제하기
         $("#listDel").click(()=>{
        	$("#frm").attr("action", "/myapp/listBoardDel");
        	$("#frm").submit();
         });
      });
   </script>
<body>
   <h1>게시판</h1>
   <a href="/myapp/boardWrite">글쓰기</a>
   <form method="post" id="frm">
      <div>
         <input type="checkbox" id="allCheck" name="noDelList"/>전체선택
         <input type="button" id="arrayDel" value="배열로 삭제" />
         <input type="button" id="listDel" value="리스트로 삭제" />
      </div>
      <ul>
         <li>번호</li>
         <li>제목</li>
         <li>작성자</li>
         <li>조회수</li>
         <li>등록일</li>
         <c:forEach var="vo" items="${ list }">
            <li>
               <input type="checkbox" name="noDelArray" value="${ vo.no }"/>
               
               <input type="checkbox" name="noDelList" value="${ vo.no }"/>
               ${ vo.no }
            </li>
            <li class="wordCut"><a href="/myapp/boardView?no=${ vo.no }">${ vo.subject }</a></li>
            <li>${ vo.userid }</li>
            <li>${ vo.writedate }</li>
            <li>${ vo.hit }</li>
         </c:forEach>
      </ul>
   </form>
</body>
</html>