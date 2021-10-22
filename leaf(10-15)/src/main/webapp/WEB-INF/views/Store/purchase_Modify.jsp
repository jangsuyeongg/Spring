<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
	.container{
		max-width: 1400px;
		background-color:rgb(245, 240, 233);
	}

	.partner{
		width:400px;
		float:left;
		margin-right:10px; 
		margin-top:5px;
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
	.text{
		width:100px;
	}
	#memo{
		width: 950px;
		height: 188px;
	}
	.purchase_ok{
		margin-top:20px;
		height: 1000px;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		margin:10px;
		line-height: 3;
	}
	
	.btn3{
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
		<div id="name">발주수정(대기일때만 수정가능 (완료시 수정불가)) </div>
		<hr/>
		<div class="partner">
			<table class='table'>
				<tr>
					<td>거래처명</td>
					<td>비트캠프</td>
					</tr>
				<tr>
					<td>거래처번호</td>
					<td>5</td>
				</tr>
				<tr>
					<td>담당자</td>
					<td>박보검</td>
				</tr>
				<tr>
					<td>연락처</td>
					<td>010-1234-5678</td>
				</tr>
			</table>
		</div>
		<div>발주메모
			<textarea class="form-control" id="memo">글 내용을 입력하는 곳</textarea>
		</div>
		<div class="purchase_ok">
			 <table class="table table-hover table-active">
	      	<tr class="table-active">
            	<td>발주번호</td>
                <td>상품번호</td>
                <td>제품명</td>
                <td>발주가격</td>
                <td>발주수량</td>
                <td>총액</td>
                <td>발주날짜</td>
                <td>발주수정날짜</td>
                <td>발주상태</td>
                <td>발주수정</td>
                <td>발주취소</td>
            </tr>
            <tbody>
	             <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	         </tbody>
	      </table>
		</div>
	</div>	
<%@ include file="/inc/bottom.jspf" %>