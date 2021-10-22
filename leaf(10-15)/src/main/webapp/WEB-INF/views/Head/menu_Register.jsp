<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>
<style>
	body{
		margin: 0;
	}
	.container{
		max-width: 1400px;
		display: flex;
	    justify-content: center;
	    margin:0 auto;
	    background-color:rgb(245, 240, 233);
	}
	#memo{
		width: 542px;
		height:150px;
		background-color: rgb(245, 240, 233);
	}
	.form{
		background-color:rgb(245, 240, 233);
	}
	
	.row{
		width:131px;
		display: inline-block;
		font-weight:bold;
	}
	.Nutrition{
		position: relative;
	    margin-left: 105px;
	    top: -20px;
	}
	#fileimg>img{
		width:200px;
		height:200px;
		border-radius:100%;
		position: relative;
		top: -20px;
    	left: 24px;
	}
	#fileimg{
		position: relative;
		width: 300px;
		height:300px;
	    left: 400px;
	    top: -620px;
	}
	#reg, #submit{
		text-align:center;
		font-size:2em;
		color:rgb(30, 57, 50);
		
	}
	.nutname{
		width:100px;
		float:left;
		
	}
	.will-be-moved {
		top: -137px;
    	position: relative;
	}
	input{
		border:none;
		border-right:0px; 
		border-top:0px; 
		border-left:0px; 
		border-bottom:1px solid;
		outline:none;
	}
	.inputbox{
		margin:100px;
		
	}
	#submit>input{
	  background-color:rgb(30, 57, 50);
      width: 80px;
      height:30px;
      border-radius: 3px;
      transition-duration: 0.3s;
      font-size: .5em;
      color:white;
      opacity: 0.8;
	}
	#submit>input:hover{
		cursor: pointer;
	}
	#filebutton{
		color:rgb(30, 57, 50);
		font-weight:bold;
	}
	#filebutton:hover{
		cursor: pointer;
	}
	
	#filename {
		display: none;
	}
	
	#file {
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    width: 250px;
	}
	textarea{
		resize:none;
	}
		 /*head 이미지*/
   header{
   		height:330px;
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
		background-image:url(https://www.baristapaulbassett.co.kr/images/menu/subVisual_new.jpg);
		z-index:-1;
		width:100%;
		height:330px;
	}
</style>
<script>
	
	$(() => {
		$("input[type='file']").change(function(event){
			var imageFile = event.target.files[0];
			console.log(imageFile.name);
			var reader = new FileReader();
			reader.onload = (e) => {
				$("#fileimg").children().attr("src", e.target.result);
				$("#uploaded").html(imageFile.name);
			};
			reader.readAsDataURL(imageFile);
		});
		  $("#headerText").animate({
		       top: "-160px", opacity:1
		       }, 1200,);
	});
	
	$(function(){
		console.log("폼", $(".form"));
		$(".m_code").change(function(){
			var selectedCtg = $(".m_code:selected").val();
			if(selectedCtg == "coffee") {
				$(".s_code .coffee").css('display','block');
				$(".s_code :not(.coffee)").css('display','none');
			}else if(selectedCtg == "beverage"){
				$(".s_code .beverage").css('display','block');
				$(".s_code :not(.beverage)").css('display','none');
			}else if(selectedCtg == "food"){
				$(".s_code .food").css('display','block');
				$(".s_code :not(.food)").css('display','none');
			}else if(selectedCtg == "product"){
				$(".s_code .product").css('display','block');
				$(".s_code :not(.product)").css('display','none');
			}	
	
		});

		$("#headerText").animate({
		       top: "-160px", opacity:1
		       }, 1200,);
	});
	
</script>
<header>
	<div id="head_img"></div>
	<div id="headerText">MENU REGISTER</div>
</header>
	<form method="post" action="/myapp/menu_RegisterOk" >
		<div class="container">
			<div class="inputbox">
				<!-- <div id="reg">등록하기</div><br/><br/> -->
				<div class="row">분  류</div>
				    <select class="form m_code"  name="m_code">
					    <option value="">메뉴선택</option>
					    <option value="coffee" class="m_code coffee">coffee</option>
					    <option value="beverage" class="m_code beverage">beverage</option>
					    <option value="food" class="m_code food">food</option>
					    <option value="product" class="m_code product">product</option>
				    </select>
				    <select class="form s_code"  name="s_code">
					    <option value="" >상세분류</option>
					    <option value="shot" class="coffee">shot</option>
					    <option value="latte" class="coffee">latte</option>
					    <option value="espresso" class="coffee">espresso</option>
					    <option value="bakery" class="food">bakery</option>
					    <option value="cake" class="food">cake</option>
					    <option value="tea" class="beverage">tea</option>
					    <option value="ade" class="beverage">ade</option>
					    <option value="yogurt" class="beverage">yogurt</option>
					    <option value="Bean" class="product">Bean</option>
					    <option value="Tumbler" class="product">Tumbler</option>
					    <option value="product" class="product">mug</option>
				    </select><br/><br/>
		
				<div class="row">제품명</div>
					<input type="text" class="form" name="p_name"/><br/>
				<div class="row">제품명(영어)</div>	
					<input type="text" class="form" name="p_ename"/><br/>
				<div class="row">가격</div>	
					<input type="text" class="form"/><br/><br/>
				<div class="row">new/best</div>	
					<select class="form" name="new_best">
					    <option value="">없음</option>
					    <option value="new">new</option>
					    <option value="best">best</option>
				    </select>	
					<div><br/>
					<div class="row">영양정보</div>
						<div class="Nutrition">
							<div class="nutname">제공량(ml)</div><input type="text" class="form" name="p_info1"/><br/>
							<div class="nutname">열 량(kcal)</div><input type="text" class="form"  name="p_info2"/><br/>
							<div class="nutname">당 류(g) </div><input type="text" class="form"  name="p_info3"/><br/>
							<div class="nutname">나트륨(mg) </div><input type="text" class="form"  name="p_info4"/><br/>
							<div class="nutname">단백질(g) </div><input type="text" class="form"  name="p_info5"/><br/>
							<div class="nutname">포화지방(g) </div><input type="text" class="form"  name="p_info6"/><br/>
							<div class="nutname">카페인(mg) </div><input type="text" class="form"  name="p_info7"/><br/><br/>
						</div>	
				<div class="row will-be-moved">제품설명</div>
					<textarea id="memo" placeholder="글내용을 입력하는 곳" name="p_desc"></textarea><br/>
				</div><br/>
				<div id="submit"><input type="submit" value="등록하기"/></div>
				<div id="fileimg"><img src="img/menuregister.png"/>
					 <div id="file"><label for="filename" id="filebutton">파일선택</label><div id="uploaded"></div><input type="file" name="p_img" id="filename" /></div>
				</div>
			</div>	
		</div>
	</form>
<%@ include file="/inc/bottom.jspf" %>