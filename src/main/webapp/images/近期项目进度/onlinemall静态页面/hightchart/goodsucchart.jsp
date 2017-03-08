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
			$.getJSON("CreateChartServlet.action?op=goodsline",function(e){
				//var obj = eval ("(" + e + ")");
				//alert(obj);
		       	createbarChart(e);
	
			});
		
		});
		
		
		
function createbarChart(e){


	  $('#container').highcharts({
        title: {
            text: '月成交量',
            x: -20 //center
        },
        subtitle: {
            text: '商品成交量走势图',
            x: -20
        },
        xAxis: {
            categories: ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
        },
        yAxis: {
            title: {
                text: '件'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '件'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series:e
    });

}
</script>
	</head>
	<body>

<script src="${basePath }js/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/highcharts-3d.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/modules/exporting.js"></script>
<div class="htmleaf-demo center">
			  <a href="${basePath}hightchart/goodsmoney.jsp" >商品月成交额统计</a>
			  <a href="${basePath}hightchart/newuserchart.jsp"  >用户注册统计</a>
			  <a href="${basePath}hightchart/goodsucchart.jsp" class="current">商品月发布、成交统计</a>
			  <a href="${basePath}hightchart/onlineuser.jsp" >在线用户统计</a>
			  <a href="${basePath}hightchart/speciespie.jsp"  >商品份额统计</a>
			  <!-- 
			  <a href="polar-area.html">最热商品统计</a>
			  <a href="pie.html" >商品新增统计</a>
			  -->
			 
			</div>
			<div style="text-align:center;clear:both">
<div id="container" style="height: 400px"></div>

	</body>
</html>