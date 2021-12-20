<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <c:if test="${result>0}">
	<script>
		location.href="/myapp/";
		console.log("들어오는가?");
		alert("회원삭제성공");
		
	</script>

</c:if>
<c:if test="${result==0}">
	<script>
		alert("회원삭제실패");
		history.back();
		
		
	</script>

</c:if>
    