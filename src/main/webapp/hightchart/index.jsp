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
		<title>Highcharts Example</title>
		<link rel="stylesheet" type="text/css" href="hightchart/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="hightchart/css/default.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<style type="text/css">
${demo.css}
		</style>
		
</head>
<body>
<div class="htmleaf-demo center">
				  <a href="hightchart/goodsmoney.jsp" >商品月成交额统计</a>
			  <a href="hightchart/newuserchart.jsp" >用户注册统计</a>
			  <a href="hightchart/goodsucchart.jsp">商品月发布、成交统计</a>
			  <a href="hightchart/onlineuser.jsp">在线用户统计</a>
			  <a href="hightchart/speciespie.jsp">商品份额统计</a>
			  <!-- 
			  <a href="polar-area.html">最热商品统计</a>
			  <a href="pie.html" >商品新增统计</a>
			  -->
			 
			</div>
			<div style="text-align:center;clear:both">
<div id="container" style="height: 400px"></div>
	</body>
</html>
