<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출현황</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/adminjs/core.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/adminjs/charts.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/adminjs/frozen.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/adminjs/animated.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// 구글 파이차트
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChartpie); // 기간별 인기상품
      google.charts.setOnLoadCallback(drawChartbar);
      function drawChartpie() {
        var datapie = google.visualization.arrayToDataTable([
          ['Good', 'good'],
          ['아메리카노', 11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);
        
        var optionspie = {
          title: '인기 판매 순위',
          pieHole: 0.5,
          width:'100%',
          height:'100%',          
          colors:['#0088ff','#3399ff','#66b2ff','#99ccff','#cce5ff'],
          animation:{duration:1000, easing:'in', startup:true},
          chartArea:{
        	  width:600, height:400, left:250, top:40},
          legend:'right',          
        };

        var chartpie = new google.visualization.PieChart(document.getElementById('donutchart'));
        chartpie.draw(datapie, optionspie);
        window.addEventListener('resize',donutchart,true);
      }
      
      function drawChartbar() {
          var databar = google.visualization.arrayToDataTable([
            ["Element", "천", { role: "style" } ],
            ["1호점", 32122, "#3399ff"],
            ["2호점", 30979, "#66b2ff"],
            ["3호점", 28898, "cce5ff"],
            ["4호점", 30529, "#99ccff"],
            ["5호점", 32511, "#0088ff"]
          ]);

          var viewbar = new google.visualization.DataView(databar);
          viewbar.setColumns([0, 1,
                           { calc: "stringify",
                             sourceColumn: 1,
                             type: "string",
                             role: "annotation" },
                           2]);

          var optionsbar = {
            title: "가맹점별 매출현황 (천)",
            width: '100%',
            height: 500,
            bar: {groupWidth: "95%"},
            legend: { position: "none" },
            animation:{
            	startup:true
            	
            	
            }
          };
          var chartbar = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
          chartbar.draw(viewbar, optionsbar);
          window.addEventListener('resize',columnchart_values,false);
      }
    </script>
        
<!-- Chart code -->
<script>
// 월간차트
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_frozen);
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv", am4charts.XYChart);
chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

chart.data = [{
    "date": "2021-10-01",
    "steps": 4561
}, {
    "date": "2021-10-02",
    "steps": 5687
}, {
    "date": "2021-10-03",
    "steps": 6348
}, {
    "date": "2021-10-04",
    "steps": 4878
}, {
    "date": "2021-10-05",
    "steps": 9867
}, {
    "date": "2021-10-06",
    "steps": 7561
}, {
    "date": "2021-10-07",
    "steps": 1287
}, {
    "date": "2021-10-08",
    "steps": 3298
}, {
    "date": "2021-10-09",
    "steps": 5697
}, {
    "date": "2021-10-10",
    "steps": 4878
}, {
    "date": "2021-10-11",
    "steps": 8788
}, {
    "date": "2021-10-12",
    "steps": 9560
}, {
    "date": "2021-10-13",
    "steps": 11687
}, {
    "date": "2021-10-14",
    "steps": 5878
}, {
    "date": "2021-10-15",
    "steps": 9789
}, {
    "date": "2021-10-16",
    "steps": 3987
}, {
    "date": "2021-10-17",
    "steps": 5898
}, {
    "date": "2021-10-18",
    "steps": 9878
}, {
    "date": "2021-10-19",
    "steps": 13687
}, {
    "date": "2021-10-20",
    "steps": 6789
}, {
    "date": "2021-10-21",
    "steps": 4531
}, {
    "date": "2021-10-22",
    "steps": 5856
}, {
    "date": "2021-10-23",
    "steps": 5737
}, {
    "date": "2021-10-24",
    "steps": 9987
}, {
    "date": "2021-10-25",
    "steps": 16457
}, {
    "date": "2021-10-26",
    "steps": 7878
}, {
    "date": "2021-10-27",
    "steps": 6845
}, {
    "date": "2021-10-28",
    "steps": 4659
}, {
    "date": "2021-10-29",
    "steps": 7892
}, {
    "date": "2021-10-30",
    "steps": 7362
}, {
    "date": "2021-10-31",
    "steps": 3268
}];

chart.dateFormatter.inputDateFormat = "YYYY-MM-dd";
chart.zoomOutButton.disabled = true;

var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
dateAxis.renderer.grid.template.strokeOpacity = 0;
dateAxis.renderer.minGridDistance = 10;
dateAxis.dateFormats.setKey("day", "d");
dateAxis.tooltip.hiddenState.properties.opacity = 1;
dateAxis.tooltip.hiddenState.properties.visible = true;


dateAxis.tooltip.adapter.add("x", function (x, target) {
    return am4core.utils.spritePointToSvg({ x: chart.plotContainer.pixelX, y: 0 }, chart.plotContainer).x + chart.plotContainer.pixelWidth / 2;
})

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.renderer.inside = true;
valueAxis.renderer.labels.template.fillOpacity = 0.3;
valueAxis.renderer.grid.template.strokeOpacity = 0;
valueAxis.min = 0;
valueAxis.cursorTooltipEnabled = false;

// goal guides
var axisRange = valueAxis.axisRanges.create();
axisRange.value = 6000;
axisRange.grid.strokeOpacity = 0.1;
axisRange.label.text = "하한선";
axisRange.label.align = "right";
axisRange.label.verticalCenter = "bottom";
axisRange.label.fillOpacity = 0.8;

valueAxis.renderer.gridContainer.zIndex = 1;

var axisRange2 = valueAxis.axisRanges.create();
axisRange2.value = 12000;
axisRange2.grid.strokeOpacity = 0.1;
axisRange2.label.text = "상한선";
axisRange2.label.align = "right";
axisRange2.label.verticalCenter = "bottom";
axisRange2.label.fillOpacity = 0.8;

var series = chart.series.push(new am4charts.ColumnSeries);
series.dataFields.valueY = "steps";  //값 
series.dataFields.dateX = "date"; //날짜
series.tooltipText = "{valueY.value}";
series.tooltip.pointerOrientation = "vertical";
series.tooltip.hiddenState.properties.opacity = 1;
series.tooltip.hiddenState.properties.visible = true;
series.tooltip.adapter.add("x", function (x, target) {
    return am4core.utils.spritePointToSvg({ x: chart.plotContainer.pixelX, y: 0 }, chart.plotContainer).x + chart.plotContainer.pixelWidth / 2;
})

var columnTemplate = series.columns.template;
columnTemplate.width = 30;
columnTemplate.column.cornerRadiusTopLeft = 20;
columnTemplate.column.cornerRadiusTopRight = 20;
columnTemplate.strokeOpacity = 0;

columnTemplate.adapter.add("fill", function (fill, target) {
    var dataItem = target.dataItem;
    if (dataItem.valueY > 6000) {
        return chart.colors.getIndex(0);
    }
    else {
        return am4core.color("#a8b3b7");
    }
})

var cursor = new am4charts.XYCursor();
cursor.behavior = "panX";
chart.cursor = cursor;
cursor.lineX.disabled = true;

// x축 한번에 볼 수있는 일수
let nowday = new Date();
let startday = new Date(nowday.getFullYear(),nowday.getMonth()+1,11);
let endday = new Date(nowday.getFullYear(),nowday.getMonth()+1,18);

chart.events.on("datavalidated", function () {
    dateAxis.zoomToDates(startday,endday, false, true); 
});

var middleLine = chart.plotContainer.createChild(am4core.Line);
middleLine.strokeOpacity = 1;
middleLine.stroke = am4core.color("#000000");
middleLine.strokeDasharray = "2,2";
middleLine.align = "center";
middleLine.zIndex = 1;
middleLine.adapter.add("y2", function (y2, target) {
    return target.parent.pixelHeight;
})

cursor.events.on("cursorpositionchanged", updateTooltip);
dateAxis.events.on("datarangechanged", updateTooltip);

function updateTooltip() {
    dateAxis.showTooltipAtPosition(0.5);
    series.showTooltipAtPosition(0.5, 0);
    series.tooltip.validate(); // otherwise will show other columns values for a second
}

let text = "10월 총매출";
var label = chart.plotContainer.createChild(am4core.Label);
label.text = text;
label.x = 350;
label.y = 10;

}); // end am4core.ready()
</script>
<script>
	$(()=>{
		$('.headerText').html('SALES STATUS');
		
		setInterval(function(){
			$('#rank-one').toggle();
		},800);	
		
		$('#chainjum-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#total-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#day-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#top-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});		
	});
</script>

<style>
	.top-banner-nav>.tbn-menu1{border-bottom:4px solid rgb(0, 163, 239);}
	
	/* 일별 그래프 */
	#dayCont{width:1400px; margin:50px auto 0;}
	#chartdiv{width:100%; height:500px;}
	#dayCont:before{display:block; width:1400px; border-bottom:2px solid rgb(0,128,192); content:''; margin:80px auto 0;}		
	#dayCont:after{display:block; width:1400px; border-bottom:2px solid rgb(0,128,192); content:''; margin:80px auto 0;}
	
	/* 파이 그래프 */	
	#pieCont{width:1400px; margin:50px auto 0;}
	#pieLeftCon{width:900px; height:500px; display:inline-block;}
	#donutchart{width:900px; height:500px;}
	#pieRightCon{width:494px; height:500px; position:relative; display:inline-block; left:49px;}
	#pieDayBg{position:absolute; top:80px; left:87px;}
	#gigan-date{position: absolute; top: -66px; display: inline-block; width: 400px; font-size: 25px; left: -50px; text-align: center;}
	#pieDayBg>button{width:100px; height:40px; border: 0px solid; font-size:1.1em;}
	#pieCont:after{display:block; width:1400px; border-bottom:2px solid rgb(0,128,192); content:''; margin:0 auto;}
		/* 매출 날짜 버튼 */
	.activebg{background:rgb(0,128,192);}
	.activefont{color:black;}
		/* 매출 파이차트 심플 리스트*/
	#psCon{width:400px; height:300px; position:absolute; top:170px;}
	#piechart-saleList-top>li{float:left; width:15%; text-align:center;border-top:2px solid gray; border-bottom:1px solid gray; background:#e5e9eb; font-size:1.2em; padding:5px 0 5px;}	
	#piechart-saleList-top>li:nth-child(2){width:37%;}
	#piechart-saleList-top>li:nth-child(3){width:48%;}
	
	#piechart-saleList-body{margin-top: 10px;display: inline-block; border-bottom: 1px solid gray;}
	#piechart-saleList-body>li{float:left; width:15%; text-align:center; padding-bottom:10px; font-size:1.1em;}
	#piechart-saleList-body>li:nth-child(3n+2){width:37%;}
	#piechart-saleList-body>li:nth-child(3n+3){width:48%;}
	/*--------------------*/
	
	/* 매출 리스트 */
	#saleListCon{width:1400px; margin:50px auto;}	
	#saleList{width:1400px; margin-top:30px;}	
		/* 매출날짜버튼, 검색입력폼 */	
	#sale-date-con{text-align:center; position:relative; height:40px; margin-top:30px;}
	#sale-date{display:inline-block; font-size:1.8em; height:30px; position:absolute; left:450px; width:500px; text-align:center;}
	#sd-group-con{display:inline-block; position:absolute; left:1177px; top:7px;}
	.sgc-list-button{width:70px; height:30px; border:0px solid;}
	
		
	#sl-top>form{display:inline-block; margin-left:975px; margin-top:30px;}
	#sl-top input[name="saleSearch"]{height:40px; width:310px; font-size:1em;text-align: center}
	#sl-top input[value="search"]{height:43px; width:100px; border:0px solid; background:rgb(0,128,192); position:absolute; margin-left:10px; color:white;}
	
		/* 리스트 내용 */
	#sl-ul-top{overflow:auto; text-align:center; padding:0; background-color:#e5e9eb; height:50px; font-size:1.13em; line-height:45px;}
	#sl-ul-top>li{float:left; width:15%; border-top:3px solid black;}
	#sl-ul-top>li:nth-child(6n+1){width:10%;}
	#sl-ul-top>li:nth-child(6n+3){width:20%;}
	#sl-ul-top>li:nth-child(6n+6){width:25%;}
		
	#sl-ul-body{overflow:auto; text-align:center; padding:0;}
	#sl-ul-body>li{float:left; width:15%; border-bottom: 1px solid black; height:50px; font-size:1.1em; line-height:50px;}
	#sl-ul-body>li:nth-child(6n+1){width:10%;}
	#sl-ul-body>li:nth-child(6n+3){width:20%;}
	#sl-ul-body>li:nth-child(6n+6){width:25%;}
	
	/* 페이징 버튼 */
	.page_wrap {text-align:center; font-size:0; height:30px; margin:30px auto; position:relative;}
	.page_nation {display:inline-block; position:relative;}
	.page_nation a {display:block; margin:0 3px; float:left; border:1px solid #e6e6e6; width:28px;
					height:28px; line-height:28px; text-align:center; background-color:#fff; font-size:13px;
					color:#999999; text-decoration:none;}
	.page_nation .arrow {border:1px solid #ccc;}
	.page_nation .pprev {background:#f8f8f8 url('img/page_pprev.png') no-repeat center center; margin-left:0;}
	.page_nation .prev {background:#f8f8f8 url('img/page_prev.png') no-repeat center center; margin-right:7px;}
	.page_nation .next {background:#f8f8f8 url('img/page_next.png') no-repeat center center; margin-left:7px;}
	.page_nation .nnext {background:#f8f8f8 url('img/page_nnext.png') no-repeat center center; margin-right:0;}
	.page_nation a.active {background-color:#42454c; color:#fff; border:1px solid #42454c;}	
</style>
<style>
	/* 인기상품 3개 */
	#bestConn{margin:50px auto 80px; width:1400px;}
	.amount{display: flex; width:100%; margin: auto; justify-content: space-around;}
	.amount > li {height: 400px; width:400px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); background:white;}
	.amount > li >.bc-inner {box-sizing: border-box; height:400px; width:400px; position:relative; text-align:center;}
	.bc-inner>.bc-img{border-sizing:border-box;background-repeat: no-repeat;width:100%; height:100%; background-size:cover;}	
	
	.bc-con-bg{position:absolute; height:180px; background:#333; width:400px; bottom:0px; background:#888; opacity:0.3;}
	.bc-contentdiv{position: absolute; bottom: 0px; width:400px; height:160px; color:white;}
	.bc-inner>.rank1{background-image:url(img/rankproduct1.jpg);}
	.bc-inner>.rank2{background-image:url(img/rankproduct2.jpg);}
	.bc-inner>.rank3{background-image:url(img/rankproduct3.jpg);}
	.bc-amount{padding-top:30px;}
	
	#rank-Con{height:60px; position:relative; width:1400px;}
	.rank-num{font-size:25px; display:inline-block; padding-top:20px; margin-left:207px; position:absolute;}
	#rank-one{color:red; font-weight:600;}
	#rank-two{color:blue;font-weight:500; left:470px;}
	#rank-three{color:#111;font-weight:400; left:942px;}
</style>
<style>
	/* 본사 상단 네비게이션 사진 */
	#nav-Con{width:100%;min-width:1400px; background:#ddd;}
	#nc-imgCon{width:1400px; height:450px; margin:50px auto; position:relative;}
	#nc-imgCon>.nc-imgbg{width:400px;height:350px; display:inline-block; position:absolute;box-sizing: border-box;}
	#nc-imgCon>.nc-imgbg-content{width:300px; position:absolute; height:150px; display:inline-block;}
	/*이미지 위치*/
	#imgbg-month{top:50px; left:185px;}
	#imgbg-total{top:130px; left:500px; z-index:1;}
	#imgbg-day{top:30px; left:800px;}
	/*이미지 설명 위치*/
	.nc-imgbg-content{font-size:1.2em; text-align:center;}
	#nic-month{top:270px; left:-65px;}
	#nic-total{top:40px; left:530px; z-index:2;}
	#nic-day{top:170px; left:1185px;}	
	/* 스팬 */
	.nic-title{font-size:1.5em; position:absolute; display:block; height:30px;left:22px;}	
	.nic-title:after{display:inline-block; width:500px; border-bottom:5px solid rgb(0,128,192); content:'';position:absolute; left:0px; top:45px;}
	#nic-month-total:after{display:inline-block; width:650px; border-bottom:5px solid rgb(0,128,192); content:'';position:absolute; left:-230px; top:45px;}
	#nic-month-content:after{display:inline-block; width:500px; border-bottom:5px solid rgb(0,128,192); content:'';position:absolute; left:-290px; top:45px;}	
	#nic-month-title{left:0px;}
	#nic-month-total{left:70px;}
	#nic-month-content{left:70px;}	
	/* a태그*/
	.nic-title+a{position:absolute; font-size:1.2em;}
	#nic-month-title+a{top:60px; left:2px;}
	#nic-month-total+a{top:53px; left:125px;}
	#nic-month-content+a{top:60px; left:188px;}
	
	.nc-imgbg{border-sizing:border-box;background-repeat: no-repeat;width:100%; height:100%; background-size:cover; border: 20px solid white;}
	#imgbg-month{background-image:url(img/monthimg.jpg);}
	#imgbg-total{background-image:url(img/totalimg.jpg);}
	#imgbg-day{background-image:url(img/sea.jpg);}	
	
	#dayCont>h1{text-align:center; height:100px;margin: 50px auto;}
	#pieCont>h1{text-align:center; hegiht:100px;}
	#barCont>h1{text-align:center; hegiht:100px;}
	#saleListCon>h1{text-align:center;height:50px;}
</style>
<style>
	/* 지점별 매출현황 */
		/* 가맹점별 매출현황 */	
	#barCont{width:1400px; margin:50px auto 0;}
	#barLeftCon{width:900px; height:500px; display:inline-block;}
	#columnchart_values{width:900px; height:500px;}
	#barRightCon{width:494px; height:500px; position:relative; display:inline-block;}
	#barDayBg{position:absolute; top:100px; left:137px;}
	#chain-date{position: absolute; top: -66px; display: inline-block; width: 400px; font-size: 25px; left: -50px; text-align: center;}
	#barDayBg>button{width:100px; height:40px; border: 0px solid; font-size:1.1em;}
	#barCont:after{display:block; width:1400px; border-bottom:2px solid rgb(0,128,192); content:''; margin:0 auto;}

		/* 매출 막대차트 심플 리스트*/
	#bsCon{width:450px; height:250px; position:absolute; top:190px;}
	#barchart-saleList-top>li{float:left; width:10%; text-align:center;border-top:2px solid gray; border-bottom:1px solid gray; background:#e5e9eb; font-size:1.2em; padding:5px 0 5px;}	
	#barchart-saleList-top>li:nth-child(2){width:20%;}
	#barchart-saleList-top>li:nth-child(3){width:30%;}
	#barchart-saleList-top>li:nth-child(4){width:40%;}
	
	#barchart-saleList-body{margin-top: 10px;display: inline-block; border-bottom: 1px solid gray;}
	#barchart-saleList-body>li{float:left; width:10%; text-align:center; padding-bottom:10px; font-size:1.1em;}
	#barchart-saleList-body>li:nth-child(4n+2){width:20%;}
	#barchart-saleList-body>li:nth-child(4n+3){width:30%;}
	#barchart-saleList-body>li:nth-child(4n+4){width:40%;}

</style>
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="adminSalesChart.jsp">매출현황</a></div>	   	   	   
	</nav>
	<main>
		<a id="top-go" style="display:scroll;position:fixed;bottom:10px;right:30px;" href="#nc-top" title="맨위로"><img src="img/topbutton.png"></a>

		<div class="notice-con" id="nc-top">
			<div class="page-main-notice">
				<h3>매출확인</h3>
				<p>LEAF커피 매출 내용을 보실 수 있습니다.</p>
			</div>	
		</div>
		<nav>
			<div id="nav-Con">
				<div id="nc-imgCon">
					<div class="nc-imgbg" id="imgbg-month">						
					</div>
					<div class="nc-imgbg" id="imgbg-total">						
					</div>
					<div class="nc-imgbg" id="imgbg-day">
					</div>
					<div class="nc-imgbg-content" id="nic-month"><span class="nic-title" id="nic-month-title">가맹별 매출현황</span><a href="#barCont" id="chainjum-go">확인하기</a></div>
					<div class="nc-imgbg-content" id="nic-total"><span class="nic-title" id="nic-month-total">전체 매출 목록</span><a href="#saleListCon" id="total-go">확인하기</a></div>
					<div class="nc-imgbg-content" id="nic-day"><span class="nic-title" id="nic-month-content">기간별 인기상품</span><a href="#pieCont" id="day-go">확인하기</a></div>
				</div>
			</div>
		</nav>
		
		<div id="bestConn">
			<ul class="amount">
				<li>
					<div class="bc-inner">
					    <div class="bc-img rank1"></div>
					    <div class="bc-con-bg"></div>
					    <div class="bc-contentdiv">
						    <h1 class="bc-title">아메리카노</h1>
					      	<h2 class="bc-amount">1,231잔</h2>
					      	<h2 class="bc-price">301,327,000원</h2>
					    </div>  	
				    </div>
				</li>
			  	<li>
				    <div class="bc-inner">
				    	<div class="bc-img rank2"></div>
				    	<div class="bc-con-bg"></div>
				    	<div class="bc-contentdiv">
						    <h1 class="bc-title">녹차라떼</h1>
					      	<h2 class="bc-amount">1,131잔</h2>
					      	<h2 class="bc-price">201,327,000원</h2>
					    </div>
				    </div>
			  	</li>
			  	<li>
			    	<div class="bc-inner">
				        <div class="bc-img rank3"></div>
				        <div class="bc-con-bg"></div>
				        <div class="bc-contentdiv">
						    <h1 class="bc-title">오렌지주스</h1>
					      	<h2 class="bc-amount">631잔</h2>
					      	<h2 class="bc-price">161,327,000원</h2>
					    </div>
			    	</div>
			  	</li>				  	
			</ul>
			<div id="rank-Con">
				<span id="rank-one" class="rank-num">1위</span>
				<span id="rank-two" class="rank-num">2위</span>
				<span id="rank-three" class="rank-num">3위</span>
			</div>	
		</div>
		
		<!-- 일별 차트 -->
		<div id="dayCont">
			<h1>당월 매출현황</h1>
			<div id="chartdiv"></div>
		</div>
		<div id="pieCont">
			<h1>기간별 인기상품</h1>
			<div id="pieLeftCon">	
				<div id="donutchart"></div>
			</div>	
			<div id="pieRightCon">
				<div id="pieDayBg">
					<span id="gigan-date">2021-10-25</span>
					<button class="pdb activebg" style="color:white;">오늘</button>
					<button class="pdb">주간</button>
					<button class="pdb">월간</button>
				</div>
				<div id="psCon">
					<ul id="piechart-saleList-top">
						<li class="ps-rank">순위</li>
						<li class="ps-product">제품명</li>
						<li class="ps-total">총판매액</li>						
					</ul>
					<ul id="piechart-saleList-body">
						<li class="ps-rank">1</li>
						<li class="ps-product">아메리카노</li>
						<li class="ps-total">32,122,543원</li>
						<!--  -->
						<li class="ps-rank">1</li>
						<li class="ps-product">아메리카노</li>
						<li class="ps-total">32,122,543원</li>
						<!--  -->
						<li class="ps-rank">1</li>
						<li class="ps-product">아메리카노</li>
						<li class="ps-total">32,122,543원</li>
						<!--  -->
						<li class="ps-rank">1</li>
						<li class="ps-product">아메리카노</li>
						<li class="ps-total">32,122,543원</li>
						<!--  -->
						<li class="ps-rank">1</li>
						<li class="ps-product">아메리카노</li>
						<li class="ps-total">32,122,543원</li>
						<!--  -->						
					</ul>
				</div>	
			</div>
		</div>
		
		<!-- 가맹점 매출 현황 -->
		<div id="barCont">
			<h1>가맹점별 매출현황</h1>
			<div id="barLeftCon">	
				<div id="columnchart_values"></div>
			</div>	
			<div id="barRightCon">
				<div id="barDayBg">
					<span id="chain-date">2021-10-25</span>
					<button class="bdb activebg" style="color:white;">오늘</button>
					<button class="bdb">주간</button>
					<button class="bdb">월간</button>
				</div>
				<div id="bsCon">
					<ul id="barchart-saleList-top">
						<li class="bs-rank">순위</li>
						<li class="bs-product">가맹번호</li>
						<li class="bs-location">지역</li>
						<li class="bs-total">총판매액</li>						
					</ul>
					<ul id="barchart-saleList-body">
						<li class="bs-rank">1</li>
						<li class="bs-product">10001</li>
						<li class="bs-location">서울시 마포구</li>
						<li class="bs-total">32,122,543원</li>
						<!--  -->
						<li class="bs-rank">1</li>
						<li class="bs-product">10001</li>
						<li class="bs-location">서울시 마포구</li>
						<li class="bs-total">32,122,543원</li>
						<!--  -->
						<li class="bs-rank">1</li>
						<li class="bs-product">10001</li>
						<li class="bs-location">서울시 마포구</li>
						<li class="bs-total">32,122,543원</li>
						<!--  -->
						<li class="bs-rank">1</li>
						<li class="bs-product">10001</li>
						<li class="bs-location">서울시 마포구</li>
						<li class="bs-total">32,122,543원</li>
						<!--  -->
						<li class="bs-rank">1</li>
						<li class="bs-product">10001</li>
						<li class="bs-location">서울시 마포구</li>
						<li class="bs-total">32,122,543원</li>
						<!--  -->
											
					</ul>
				</div>	
			</div>
		</div>
				
		<div id="saleListCon">
			<h1>전체 매출 목록</h1>
			<div id="sl-top">
				<div id="sale-date-con"><!-- 큰한줄 -->
					<span id="sale-date">2021-09-27</span>
					<div id="sd-group-con"><!-- 버튼그룹 -->
						<button class="sgc-list-button activebg" style="color:white;">오늘</button>
						<button class="sgc-list-button">주간</button>
						<button class="sgc-list-button">월간</button>
					</div>
				</div>
				<form action="">
					<input type="text" name="saleSearch" placeholder="메뉴명을 입력해주세요."/>
					<input type="submit" value="search"/>
				</form>
			</div>
			<div id="saleList">
				<ul id="sl-ul-top">
					<li>순위</li>
					<li>메뉴명</li>
					<li>제품명</li>
					<li>판매수량</li>
					<li>가격</li>
					<li>총액</li>
				</ul>
				<ul id="sl-ul-body">	
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
					<!--  -->
					<li>1</li>
					<li>음료</li>
					<li>아메리카노</li>
					<li>10,321</li>
					<li>4,000</li>
					<li>332,231,000</li>
				</ul>
			</div>
			<div class="page_wrap">				
				<div class="page_nation">
					<a class="arrow pprev" href="#"></a>
					<a class="arrow prev" href="#"></a>
					<a class="active" href="#">1</a> 
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a class="arrow next" href="#"></a>
					<a class="arrow nnext" href="#"></a>
				</div>
			</div>
		</div>
	</main>		
	<%@ include file="/inc/bottom3.jspf" %>
<script>
	// 날짜버튼 클릭 시 버튼색상 변경
	$('.sgc-list-button').click(function(){
		$('.sgc-list-button').removeClass("activebg");
		$('.sgc-list-button').css('color','black');
		$(this).addClass('activebg');
		$(this).css('color','white');
	});
	
	$('.bdb').click(function(){
		$('.bdb').removeClass("activebg");
		$('.bdb').css('color','black');
		$(this).addClass('activebg');
		$(this).css('color','white');
	});
	
	$('.pdb').click(function(){
		$('.pdb').removeClass("activebg");
		$('.pdb').css('color','black');
		$(this).addClass('activebg');
		$(this).css('color','white');
	});
</script>
</body>
</html>