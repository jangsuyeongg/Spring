<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="ckeditor/ckeditor.js"></script>
<script>
	$(()=>{	
		$("#headerText").animate({
		    top: "-160px", opacity:1
		    }, 1200,);
		$("#menu1").click(function(){
			$(this).css('border-bottom','4px solid rgb(0, 163, 239)');
			$("#menu2").css('border','none');
		});
		$("#menu2").click(function(){
			$(this).css('border-bottom','4px solid rgb(0, 163, 239)');
			$("#menu1").css('border','none');
		});
	    $("input[type='file']").change(function(event){
	        var imageFile = event.target.files[0];
	        console.log(imageFile.name);
	        var reader = new FileReader();
	        reader.onload = (e) => {
	           $("#fu").children().attr("src", e.target.result);
	           $("#uploaded").html(imageFile.name);
	        };
	        reader.readAsDataURL(imageFile);	        
	     });
	    
	});
</script>
<style>
	body{margin:0;}
	a{color:gray}
	a:link, a:hover a:visited{text-decoration: none;}
	ul,li{list-style-type: none;padding:0;margin:0;}
	header img{width:100%;height:250px;}
	header{height:250px;position:relative;}
	#headerText{position:relative;top:-100px;left:790px;font-size:3em;color:white;z-index:100;opacity:0.5}
	nav{display:flex;justify-content:center;width:100%;border-bottom:1px solid gray;}
	nav>div{padding:15px 40px;}
	#menu1{border-bottom:4px solid rgb(0, 163, 239);}
	.title{width:1200px;margin:0 auto;text-align:center;padding:20px 0px;color:#382E2C;font-size:1.5em;}
	#boardTitle:focus{outline:none;}
	.container{background-color:#F5F0E9;}
	.form{width:900px;margin:0 auto;}	
	.form>li:first-child input{width:900px;height:30px;margin-top:20px;border:none}
	.form>li:first-child input::placeholder{padding-left:10px}
	.form>li:nth-child(2) textarea::placeholder{padding:10px 0 0 10px}
	.form>li textarea{width:900px;height:400px;margin-top:7px;resize:none;border:none}
	.form>li textarea:focus{outline:none}
	.form>li:nth-child(3){padding-top:7px}
	#fileTitle{padding:0 15px 0px 5px;color:#664E49}
	#fileUpload{background-color:#9F8362;padding:4px 11px;text-align:center;line-height:35px;font-size:0.9em;color:white;cursor:pointer;}	
	#uploaded{padding-left:10px;color:gray;}
	.form>li:nth-child(4){display:none}
	.form>li:last-child{text-align:end}
	.form>li:last-child input{margin:0 0 40px 15px;padding:10px 25px;background-color:#9F8362;border:none;color:white;cursor:pointer}
</style>
</head>
<body>
<header>
	<img src="img/social2.jpg"/>
	<div id="headerText">WHAT'S NEW</div>
</header>
<nav> 
	<div id="menu1"><a href="leafCafe/noticeList">공지사항</a></div>
	<div id="menu2"><a href="social.jsp">사회공헌</a></div>
</nav>
<div class="title">글 수정하기</div>
<div class="container">
<form method="post" action="/leafCafe/noticeList" enctype="multipart/form-data">
	<ul class="form">
		<li><input type="text" name="title" id="boardTitle" placeholder="제목을 입력하세요."/></li>
		<li><textarea name="content" id="content" placeholder="글내용을 입력하세요."></textarea></li>
		<li id="fu"><span id="fileTitle">파일첨부</span><label for="filename" id="fileUpload">파일 선택</label>
		<sapn id="uploaded"></span></li>
		<li><input type="file" name="filename" id="filename"/></li>
		<li><input type="submit" value="수정"/><a href="/leafCafe/noticeList">취소</a></li>
	</ul>
</form>
</div>
</body>
</html>