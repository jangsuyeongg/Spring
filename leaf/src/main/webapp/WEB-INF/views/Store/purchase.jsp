<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
	.main{ 
		max-width: 1400px;
		margin:0 auto;
		overflow:auto;
		
	}
	.search{
		width:400px;
		float:left;
		margin-left:10px;
		margin-right:10px;
		overflow: auto;
		box-shadow: 0px 1px 2px 1px lightslategrey;
		border-radius: 5px;
		height: 850px;
		background-color:rgb(242, 242, 242);
	}
	.partner{
		width: 463px;
		float:left;
		margin-right:10px;
		box-shadow: 0px 1px 2px 1px lightslategrey;
		border-radius: 5px;
		background-color:rgb(242, 242, 242);
	}
	.purchase{
		width: 490px;
		display:flex;
		margin:10px; 
		overflow: auto;
		height: 214px;
		flex-direction: column;
    	box-shadow: 0px 1px 2px 1px lightslategrey;
		border-radius: 5px;
		background-color:rgb(242, 242, 242);
	
	}

	.purchase_ok{
		width: 965px;
		height:557px;
		display:flex;
		margin:10px; 
		box-shadow: 0px 1px 2px 1px lightslategrey;
		border-radius: 5px;
		background-color:rgb(242, 242, 242);
		
	}
	.text{
		width:100px;
	}
	table,td{
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
	.name, #name2{
		font-size:1.5em;
		font-weight:bold;
		margin:10px;
		
	}
	.name{
		float:left;
		color:rgb(30, 57, 50);
	}
	#name2{
		margin-left:424px;
		color:white;
	}
	#pc_cnt{
		width: 150px;
		display: inline-block;
		height: 30px;

	background-color: rgb(236, 236, 236);
	}
	#delBtn{
		background-color: rgb(30, 57, 50);
	    width: 80px;
	    height: 35px;
	    border-radius: 3px;
	    font-size: 0.6em;
	    color: white;
	    margin-left:722px;
	    font-size:1em;
	}
	.btn3{
		background-color: rgb(30, 57, 50);
	    width: 80px;
	    height: 35px;
	    border-radius: 3px;
	    font-size: 0.6em;
	    color: white;
	    position: relative;
	    top: 20px;
	    left: -58px;
	    font-size:1em;
}
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
	
.items{
	display: flex;
    justify-content: space-evenly;
    line-height: 2;
    margin: 8px;
}
	
	#status {
		
	}
		input{
		border:none;
		border-right:0px; 
		border-top:0px; 
		border-left:0px; 
		border-bottom:1px solid;
		outline:none;
		background-color:rgb(236, 236, 236);
	}
	#delBtnText{
		font-size:0.5em;
		color:gray;
		position: relative;
	    left: 572px;
	    top: 5px;
	}

	.purchaseTable td{
	background-color:rgb(30, 57, 50);
	color:white;
	}
</style>
<script>

$(document).ready(function() {

	console.log($(".status").text());
    $('.form').submit(function() {
    	
        if ($(".status").text() == "대기") {
            alert('발주취소성공');
            return true;
        }
        alert('발주취소실패');
        return false;
    }); 
});

</script>
<script>
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
	
	
	
});

//서버에서 List컬렉션 객체 비동기식으로 가져오기 ajax (상품정보->거래처정보, 발주)
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
	               $("#view6").html(vo.part_email);
	               
	               tag = "<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>";
	               tag += "<div>" + vo.hq_num + "</div>"
	               tag += "<div>" + vo.hq_name + "</div>"
	               tag += "<div>" + (vo.ware_price + 2000) + "원</div>"
	               tag += "<select name='pc_cnt' id='pc_cnt'>"
	               tag += "<option value=''>수량선택</option>"
	               tag += "<option value='100'>100</option>"
	               tag += "<option value='200'>200</option>"
	               tag += "<option value='300'>300</option>"
	               tag += "<option value='400'>400</option>"
	               tag += "<option value='500'>500</option>"
	               tag += "<option value='1000'>1000</option> </select>"
	               tag += "<div><input id='hq_num' name='hq_num' value='"+ vo.hq_num  +"' type='hidden' /></div>"
	               tag += "<div><input type='submit' class='btn3' value='발주' /></div></form>";
	               $("#purchase").html(tag);
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
	<div class="name">LIST</div> <div id="name2">거래처</div>
				<hr/>
	<div class="search">
		<input type='text' id='myinput' placeholder='원하시는 상품을 검색하세요.' class='form-control'/>
		<table class='table table-hover'>
			<thead>
			<tr class="purchaseTable">
				<td>상품번호</td>
				<td>제품명</td>
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
			<tr>
				<td><b>이메일</b></td>
				<td id="view6"></td>
			</tr>
		</table>
	</div>

	<div class="purchase">
   	   	<div class="items">
   	   	<div>
   	   		<div><b>상품번호</b></div>
   	   		<div><b>제품명</b></div>
   	   		<div><b>발주가격</b></div>
   	   		<div><b>발주수량</b></div>
   	   		
   	   	</div>
   	   	<div id="purchase"></div>
   	   	</div>
  	   	
	</div>
	<form method="post" class="form" name="delsubmit" action="/myapp/purchaseDel">
	<div class="name">발주내역확인</div>
		<input type="submit" id="delBtn" value="발주취소">
		<span id="delBtnText">화면의 발주상태가 대기일때만 취소가 가능합니다.</span>
		<div class="purchase_ok">
			 <table class="table table-hover">
			  
	      	<thead>
	            <tr class="purchaseTable">
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
		             <tr>
		             	<td><input type="checkbox" id="purchaseDel" name="purchaseDel" value="${ProductVO.pc_num }"/></td>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${ProductVO.ware_price*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td class="status" name="status"><c:if test="${ProductVO.order_status == 1}">대기</c:if>
		               	    <c:if test="${ProductVO.order_status == 2}">완료</c:if>
		               	</td>
		            </tr>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
	</form>
</div>
<%@ include file="/inc/bottom.jspf" %>