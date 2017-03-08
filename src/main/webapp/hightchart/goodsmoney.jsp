<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	
    <base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>商品成交发布、成交统计</title>
		<link rel="stylesheet" type="text/css" href="hightchart/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="hightchart/css/default.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<style type="text/css">
${demo.css}
		</style>
		<script type="text/javascript">
		$(document).ready(function(){
			var d=new Date();
			var nowYear=d.getFullYear();
			$.getJSON("BackChart_goodsmoney.action?year="+nowYear,function(e){
				//var obj = eval ("(" + e + ")");
				//alert(obj);
		       	createbarChart(e);
	
			});
		
		});
		
		
		
function createbarChart(e){
	var d=new Date();
	var nowYear=d.getFullYear();
$('#container').highcharts({
        chart: {
            type: 'line'
        },
        title: {
            text: nowYear+'商品月成交额'
        },
        subtitle: {
            text: '商品成交走势'
        },
        xAxis: {
            categories:  ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
        },
        yAxis: {
            title: {
                text: '元'
            }
        },
        tooltip: {
            enabled: false,
            formatter: function() {
                return '<b>'+ this.series.name +'</b><br/>'+this.x +': '+ this.y +'°C';
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: e,
    });

}
</script>
	</head>
	<body>

<script src="js/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="js/Highcharts-4.1.5/js/highcharts-3d.js"></script>
<script src="js/Highcharts-4.1.5/js/modules/exporting.js"></script>
<div class="htmleaf-demo center">
			    <a href="hightchart/goodsmoney.jsp" class="current">商品月成交额统计</a>
			  <a href="hightchart/newuserchart.jsp"  >用户注册统计</a>
			  <a href="hightchart/goodsucchart.jsp">商品月发布、成交统计</a>
			  <a href="hightchart/onlineuser.jsp">在线用户统计</a>
			  <a href="hightchart/speciespie.jsp"  >商品份额统计</a>
			  <!-- 
			  <a href="polar-area.html">最热商品统计</a>
			  <a href="pie.html" >商品新增统计</a>
			  -->
			 
			</div>
			<div style="text-align:center;clear:both">
<div id="container" style="height: 400px"></div>

	</body>
</html>