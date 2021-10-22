n<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
	.main{ 
		max-width: 1400px;
		margin:0 auto;
		overflow:auto;
		background-color:rgb(245, 240, 233);
	}
	.search{
		width:400px;
		height:500px;
		float:left;
		margin-left:10px;
		margin-right:10px;
		overflow: auto;
		box-shadow: 1px 1px 1px 1px grey;
	}
	.partner{
		width:400px;
		float:left;
		margin:10px; 
		box-shadow: 1px 1px 1px 1px grey;
	}
	.search_partner{
		width:400px;
	}
	.purchase{
		width: 965px;
		display:flex;
		margin:10px; 
		overflow: auto;
		box-shadow: 1px 1px 1px 1px grey;
		height: 200px;
		flex-direction: column;
	}

	.purchase_ok{
		width: 965px;
		height:585px;
		display:flex;
		margin:10px; 
		box-shadow: 1px 1px 1px 1px grey;
		
	}
	.text{
		width:100px;
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
	#name, #name2{
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
	.product{
		cursor:pointer;
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
	

	.items {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	border:1px solid gray;
	}
	#frm {
	display: flex;
	/*justify-content: space-evenly;*/
	}
	#frm>div{
	width:15%;
	}
	#frm>div:nth-of-type(1){
	margin-left:80px;
	}
	
	#status {
		
	}
</style>
<script defer>
var hq_num=0;
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

	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
	console.log($("#status"));
	
});

//서버에서 List컬렉션 객체 비동기식으로 가져오기 (상품정보->거래처정보, 발주)
$(()=>{
	
	    $(".product").on('click',function(){
	      var url = "/myapp/purchasePartner";
	      var hq_num = $(this).children(".first").text();
	      var params = {"hq_num": hq_num};
	      $.ajax({
	         url:url,
	         data:params,
	         success:function(r){
	        	 var rr = $(r)
	        	 var tag = "";
	            rr.each(function(idx,vo){
	           
	               $("#view1").html(vo.part_company);
	               $("#view2").html(vo.part_code_name);
	               $("#view3").html(vo.part_num);
	               $("#view4").html(vo.part_name);
	               $("#view5").html(vo.part_tel);
	               
	               tag = "<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>";
	               tag += "<div>" + vo.hq_num + "</div>"
	               tag += "<div>" + vo.hq_name + "</div>"
	               tag += "<div>" + (vo.ware_price - 2000) + "</div>"
	               tag += "<div><input id='pc_cnt' name='pc_cnt' type='text' class='text'/>개</div>";
	               tag += "<div><input id='hq_num' name='hq_num' value='"+ vo.hq_num  +"' type='hidden' /></div>"
	               tag += "<div><input type='submit' class='btn3' value='발주' /></div>";
	               tag += "<div><input type='text' class='text' /></div></form>";
	               $("#purchase").html(tag);
	               
	             
	             /*  $("#purchase").append("<form method='post' action='/myapp/Purchase_RegisterOk'>");
	               $("#purchase").append("<div>");
	               $("#purchase").append("<div name='hq_num'>" + vo.hq_num + "</div>");
	               $("#purchase").append("<div>" + vo.hq_name + "</div>");
	               $("#purchase").append("<div>" + (vo.ware_price - 2000) + "</div>");
	               $("#purchase").append("<div><input type='text' class='text' name='pc_cnt' />개</div>");
	               $("#purchase").append("<div><input type='submit' class='btn3' value='발주' /></div>");
	               $("#purchase").append("<div><input type='text' class='text' /></div>");
	               $("#purchase").append("</div>");
	             */
          
	    
	            });
	          
	         }
	      
	      
	      }); // ajax
	   });// 클릭
	});
</script>
</head>
<body>
<header>
	<div id="head_img"></div>
   <div id="headerText">PURCHASE</div>
</header>
<div class="main">
	<div id="name">발주하기 
				</div>
				<hr/>
	<div class="search_partner">
	<div class="search">
		<input type='text' id='myinput' placeholder='원하시는 상품을 검색하세요.' class='form-control'/>
		<table class='table table-hover table-active'>
			<thead>
			<tr>
				<td><b>상품번호</b></td>
				<td><b>제품명</b></td>
			</tr>
			</thead>
			<tbody id='searchList'>	
				<c:forEach var="ProductVO" items="${ProductList}">
					<tr class="product">
						<td class="first">${ProductVO.hq_num}</td>
						<td>${ProductVO.hq_name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="partner">
	<div id="name2">거래처정보</div>
		<table class='table'>
			<tr>
				<td><b>거래처명</b></td>
				<td id="view1"></td>
			</tr>
			<tr>
				<td><b>분류</b></td>
				<td id="view2"></td>
			</tr>
			<tr>
				<td><b>거래처번호</b></td>
				<td id="view3"></td>
			</tr>
			<tr>
				<td><b>담당자</b></td>
				<td id="view4"></td>
			</tr>
			<tr>
				<td><b>연락처</b></td>
				<td id="view5"></td>
			</tr>
		</table>
	</div>
	</div>
	
	
	<div class="purchase">
   	   	<div class="items">
   	   		<div>상품번호</div>
   	   		<div>제품명</div>
   	   		<div>발주가격</div>
   	   		<div>발주수량</div>
   	   		<div>발주</div>
   	   		<div>비고</div>
   	   	</div>
   	   	<div id="purchase"></div>
  	   	
	</div>
	<form method="post" id="form" action="/myapp/purchaseDel">
		<button type="button"  onclick="location.href='purchase_Modify'" id="btn1">수정하기</button>
		<button type="submit" id="btn2">취소하기</button>
		<div class="purchase_ok">
			 <table class="table table-hover table-active">
			  
	      	<thead>
	            <tr class="table-active">
	            	<td>선택</td>
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
	            	<c:forEach var="ProductVO" items="${purchaseList}">
		           <!-- <a href="/myapp/purchase_Modify"> -->  
		             <tr>
		             	<td><input type="checkbox" id="purchaseDel" name="purchaseDel" value="${ProductVO.pc_num }"/></td>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${ProductVO.ware_price*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td id="status"><c:if test="${ProductVO.order_status == 0}">대기</c:if>
		               	    <c:if test="${ProductVO.order_status == 1}">완료</c:if>
		               	</td>
		            </tr>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
	</form>
</div>
<%@ include file="/inc/bottom.jspf" %>