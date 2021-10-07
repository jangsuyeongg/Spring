<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>
<style>
	.main{ 
		max-width: 1400px;
		margin:0 auto;
		overflow:auto;
		background-color:rgb(245, 240, 233);
	}
	.search{
		width:400px;
		height:586px;
		float:left;
		margin-left:10px;
		margin-right:10px;
	}
	.partner{
		width:400px;
		float:left;
		margin:10px; 
	}
	.search_partner{
		width:400px;
	}
	.purchase{
		width: 965px;
		height:585px;
		display:flex;
		margin:10px; 
		overflow: auto;
		
	}
	.purchase_ok{
		width: 965px;
		height:585px;
		display:flex;
		margin:10px; 
		
	}
	.text{
		width:100px;
	}
	.search{
		overflow:scroll;
	}
	table,td{
		padding-top: 0px;
    	padding-bottom: 0px;
    	height: 0px;
    	text-align:center;
    	padding: 0.25rem;
	}
	.table td, .table th {
	    padding: .25rem;
	    vertical-align: top;
	    border-top: 1px solid #dee2e6;
	}
	#btn1{
		margin-left:1100px;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		margin:10px;
	}
	#btn1,#btn2{
		background-color: rgb(30, 57, 50);
	    width: 80px;
	    height: 35px;
	    border-radius: 3px;
	    font-size: 0.6em;
	    color: white;
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
	$(".btn3").click(function(){
		alert('발주신청 되었습니다.');
	});
	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
});

</script>
</head>
<body>
<header>
	<div id="head_img"></div>
   <div id="headerText">PURCHASE</div>
</header>
<div class="main">
	<div id="name">발주하기 <button type="button"  onclick="location.href='purchase_Modify'" id="btn1">수정하기</button>
	<button type="button" id="btn2">취소하기</button>
				</div>
				<hr/>
	<div class="search_partner">
	<div class="search">
		<input type='text' id='myinput' placeholder='원하시는 상품을 검색하세요.' class='form-control'/>
		<table class='table table-hover table-active'>
			<thead>
			<tr>
				<td>상품번호</td>
				<td>제품명</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			</tbody>
		</table>
	</div>
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
	</div>
	<div class="purchase">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
               <td>상품번호</td>
               <td>제품명</td>
               <td>발주가격</td>
               <td>발주수량</td>
               <td>발주</td>
               <td>비고</td>
            </tr>
            </thead>
            <tbody>
              <tr>
               <td>2-1</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn3' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
             <tr>
               <td>2-2</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn3' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-3</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn3' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-4</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn3' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-5</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn3' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
         </tbody>
      </table>
	</div>
	<div class="purchase_ok">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
            	<td>발주번호</td>
                <td>상품번호</td>
                <td>제품명</td>
                <td>발주가격</td>
                <td>발주수량</td>
                <td>합계금액</td>
                <td>발주날짜</td>
                <td>발주상태</td>
            </tr>
            </thead>
            <tbody>
	             <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	            </tr>
	            <tr>
	             	<td>2</td>
	               	<td>2-2</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
               	 
	            </tr>
	            <tr>
	             	<td>3</td>
	               	<td>2-3</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	               </tr>
	            <tr>
	             	<td>4</td>
	               	<td>2-4</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                 </tr>
	            <tr>
	             	<td>5</td>
	               	<td>2-5</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	              </tr>
         </tbody>
      </table>
	</div>
</div>
<%@ include file="/inc/bottom.jspf" %>