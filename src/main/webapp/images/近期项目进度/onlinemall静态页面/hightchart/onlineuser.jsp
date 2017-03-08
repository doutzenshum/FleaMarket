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
			$.getJSON("CreateChartServlet.action?op=useronline",function(e){
				//var obj = eval ("(" + e + ")");
				//alert(obj);
		       	createbarChart(e);
	
			});
		
		});
		
		
		
function createbarChart(e){

$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column',
            margin: 75,
            options3d: {
                enabled: true,
                alpha: 10,
                beta: 25,
                depth: 70
            }
        },
        title: {
            text: '用户人数统计'
        },
        subtitle: {
            text: '在线人数',
        },
        plotOptions: {
            column: {
                depth: 25
            }
        },
        xAxis: {
            categories:  ["总人数","在线人数"]
        },
        yAxis: {
            opposite: true
        },
        series: [{
            name: '人数',
            data: e,
        }]
    });
});				}
</script>
	</head>
	<body>

<script src="${basePath }js/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/highcharts-3d.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/modules/exporting.js"></script>
<div class="htmleaf-demo center">
			  <a href="${basePath}hightchart/userchart.jsp" >商品月成交额统计</a>
			  <a href="${basePath}hightchart/newuserchart.jsp" >用户注册统计</a>
			  <a href="${basePath}hightchart/goodsucchart.jsp">商品月发布、成交统计</a>
			  <a href="${basePath}hightchart/onlineuser.jsp"  class="current">在线用户统计</a>
			  <a href="${basePath}hightchart/speciespie.jsp">商品份额统计</a>
			  <!-- 
			  <a href="polar-area.html">最热商品统计</a>
			  <a href="pie.html" >商品新增统计</a>
			  -->
			 
			</div>
			<div style="text-align:center;clear:both">
<div id="container" style="height: 400px"></div>

	</body>
</html>
