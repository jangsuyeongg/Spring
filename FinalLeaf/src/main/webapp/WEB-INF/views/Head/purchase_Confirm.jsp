<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.container{ 
		max-width: 1400px;
		background-color:rgb(245, 240, 233);
	}
	.purchase_ok{
		width: 100%;
		height:600px;
		display:flex;
		margin-left:10px; 
		margin-top:5px;
	}
	
	.purchase_ok{
		overflow:scroll;
	}
	table,td,tr{
		padding-top: 0px;
    	padding-bottom: 0px;
    	height: 0px;
    	text-align:center;
	}
	.table td, .table th {
	    padding: .25rem;
	    vertical-align: top;
	    border-top: 1px solid #dee2e6;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		text-align:center;
		line-height: 3;
	}
	#memo{
		height:200px;
		margin: 10px;
	}
	.memo{
		font-weight:bold;
	}
	#myinput{
		width: 300px;
		margin: 10px;
	}
	.confirmBtn{
		background-color: rgb(30, 57, 50);
	    width: 56px;
    	height: 30px;
	    border-radius: 3px;
	    color: white;
	}
	textarea{
		resize:none;
	}
	 /*head 이미지*/
	 header{
   		height:250px;
   		position:relative;
   		}
   #headerText{
   		top:-100px;
   		font-size:3em;
   		color:white;
   		z-index:100;
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
		background-image:url(https://www.baristapaulbassett.co.kr/images/whatsnew/eventSubVisual.jpg);
		z-index:-1;
		width:100%;
		height:250px;
	}
</style>
<script>
$(()=>{
	$('#myinput').keyup(function(){
		var data = $(this).val().toLowerCase();
		
		$('#searchList>tr').filter(function(){
			var trData = $(this).text().toLowerCase(); //tr에 있는 문자를 구한다.
			var idx = trData.indexOf(data);// 없을때 -1, 있을때 0~정수
			//				true:그냥둠, false:숨겨
			$(this).toggle(idx>-1);
		});
	});
	
	$(".confirmBtn").click(function(){
		alert('발주완료처리 되었습니다.');
	});
	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
});

</script>
<header>
	<div id="head_img"></div>
   <div id="headerText">PURCHASE</div>
</header>
<div class="container">
	<div id="name">발주목록확인</div><hr/>
	<div class="search">
		<input type='text' id='myinput' placeholder='검색하기' class='form-control'/>
		<div class="purchase_ok">
			 <table class="table table-hover table-active">
	      	<thead>
	            <tr class="table-active">
	            	<td>발주번호</td>
	            	<td>가맹점명</td>
	                <td>상품번호</td>
	                <td>제품명</td>
	                <td>발주가격</td>
	                <td>발주수량</td>
	                <td>합계금액</td>
	                <td>발주날짜</td>
	                <td>발주상태</td>
	                <td>발주확인</td>
	            </tr>
	            </thead>
	            <tbody id='searchList'>	
		             <tr>
		             	<td>1</td>
		             	<td>서강대점</td>
		               	<td>2-1</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='confirmBtn' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>2</td>
		             	<td>강남점</td>
		               	<td>2-2</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	 	<td>완료</td>
	               	 	<td><input type="submit" class='confirmBtn' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>3</td>
		             	<td>종로점</td>
		               	<td>2-3</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>완료</td>
	               	    <td><input type="submit" class='confirmBtn' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>4</td>
		             	<td>신촌점</td>
		               	<td>2-4</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='confirmBtn' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>5</td>
		             	<td>명동점</td>
		               	<td>2-5</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='confirmBtn' value="확인"/></td>
		            </tr>
	         </tbody>
	      </table>
		</div>
	</div>
	<div class="memo"> 발주시 가맹점에서 쓴 메모 확인란
			<textarea class="form-control" id="memo">글 내용을 입력하는 곳</textarea>
	</div>
</div>
