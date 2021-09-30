<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	body{
		margin:0px;
		padding:0px;
	}
	#container{
		width:100%;
		height:700px;
		background-color:rgb(245, 240, 233);
		display: flex;
   		justify-content: space-evenly;
   		align-items: center;
	}

	img{
		width:500px;
		height:500px;
		border-radius:100%;
	}
	#container>div{
		display: flex;
		justify-content: center;	
	}
	
	.content_1{
		color:rgb(0, 163, 239);
	}
	.content_2{
		font-size:2.5em;
	}
	.content_4{
		font-size:1.1em;
	}
	.content_5{
		font-size:0.9em;
	}
	.content_6{
		font-size:0.9em;
	}
	span{
		text-align:center;
		margin-left:40px;
		color:rgb(0, 163, 239);
		font-size:1.1em;
	}
	
	
	
	
	#left_content{
		width:400px;
		flex-direction: column;
	}
	#right_content{
		width:400px;
		flex-direction: column;
	}
	.fa-mug-hot,.fa-flask{
    	font-size: 50px;
    	color:gray;
    	display:flex;
	}
	
</style>
</head>
<meta charset="UTF-8">

<body>
<div id="container">
	<div id="left_content">
		<div class= "content_1">Iced Americano</div><br/>
		<div class= "content_2">  아이스아메리카노</div><br/>
		<div class= "content_3">LEAF 시그니처 블렌드로 추출한 에스프레소로 만든 부드럽고 깔끔한 가장 대중적인 커피 메뉴입니다.
		<br/><br/><br/><br/><br/>
		구분 : Ice <br/><br/>
		제공사이즈 : Standard
	</div>
	</div>
	<div><img src="img/americano.png" id="img"/></div>
	<div id="right_content">
	<i class="fas fa-flask"></i>
	<!-- <i class="fas fa-mug-hot"></i> -->
		<div class= "content_4"> 영양 정보 </div><br/>
		<div class= "content_5">1회제공량기준 standard</div><br/>
		<div class= "content_6">제공량(ml) <span> 360 </span>
			<hr/><br/>열량(kcal)  <span> 10 </span> 당류(g) <span> 10 </span><br/><br/>
					  나트륨(mg)  <span> 10 </span> 단백질(g) 	<span> 1 </span><br/><br/>
					  포화지방(g)  <span> 10 </span> 카페인(mg) <span> 160 </span>
		</div>
	</div>
</div>