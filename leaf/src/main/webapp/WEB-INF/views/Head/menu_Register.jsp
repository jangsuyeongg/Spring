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
		width:100px;
		display: inline-block;
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
		top: -143px;
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
	});
	
</script>
	<form method="post" action="/myapp/menu_RegisterOk">
		<div class="container">
			<div class="inputbox">
				<div id="reg">등록하기</div><br/><br/>
				<div class="row">분  류</div>
					<select class="form" name="l_ctg">
					    <option value="">대분류</option>
					    <option value="10">food</option>
					    <option value="20"> product</option>
				    </select>
				    <select class="form"  name="m_ctg">
					    <option value="">중분류</option>
					    <option value="11">coffee</option>
					    <option value="12">beverage</option>
					    <option value="13">food</option>
				    </select>
				    <select class="form"  name="s_ctg">
					    <option value="">소분류</option>
					    <option value="110">coffee</option>
					    <option value="111">espresso</option>
					    <option value="112">latte</option>
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
					    <option value="">new</option>
					    <option>best</option>
				    </select>	
					<div><br/>
					<div class="row">영양정보</div>
						<div class="Nutrition">
							<div class="nutname">제공량(ml)</div><input type="text" class="form" name="p_info"/><br/>
							<div class="nutname">열 량(kcal)</div><input type="text" class="form"/><br/>
							<div class="nutname">당 류(g) </div><input type="text" class="form"/><br/>
							<div class="nutname">나트륨(mg) </div><input type="text" class="form"/><br/>
							<div class="nutname">단백질(g) </div><input type="text" class="form"/><br/>
							<div class="nutname">포화지방(g) </div><input type="text" class="form"/><br/>
							<div class="nutname">카페인(mg) </div><input type="text" class="form"/><br/><br/>
						</div>	
				<div class="row will-be-moved">제품설명</div>
					<textarea id="memo" placeholder="글내용을 입력하는 곳" name="p_desc"></textarea><br/>
				</div><br/>
				<div id="submit"><input type="submit" value="등록하기"/></div>
				<div id="fileimg"><img src="img/menu_image.png"/>
					 <div id="file"><label for="filename" id="filebutton">파일선택</label><div id="uploaded"></div><input type="file" name="p_img" id="filename" /></div>
				</div>
			</div>	
		</div>
	</form>
<%@ include file="/inc/bottom.jspf" %>