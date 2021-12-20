<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<li><div>MENU</div>
	<ul>
		<li><a href="/myapp/emplist">직원리스트</a></li>
	</ul>					
</li>
1. 직원 정보 등록
2. 직원 리스트 출력
  - 출력형식: 직원번호, 직급, 이름, 전화번호, 이메일
  - 정렬: 이름순
  - 직원번호는 항상 3자리 숫자로 출력해야 한다(1일 경우 001로 출력)
3. 직원 검색
  - 각 필드별로 검색할 수 있어야 한다.
4. 직원 정보 수정
  - 직원번호를 포함한 모든 필드를 수정할 수 있어야 한다.
5. 직원 정보 삭제
6. 직원 정보 다운로드
  - 직원 목록을 CSV 파일로 다운로드 할 수 있어야 한다.
  - 가산점: XLS나 XLSX 형식으로 다운로드 하는 기능

</body>
</html>
