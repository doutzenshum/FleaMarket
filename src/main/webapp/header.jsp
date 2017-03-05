<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />

<head>
<title>跳蚤市场</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/slider.css"   rel="stylesheet" type="text/css" media="all"/>
<link href="./images/java.png"  rel="Bookmark" />
<link href="./css/style.css"    rel="stylesheet" type="text/css" media="all"/>
<link href="./css/head.show.css" rel="stylesheet" type="text/css" media="all"/>
<link href="./css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript" src="./js/startstop-slider.js"></script>
<script src="./js/slides.min.jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script> 
<link rel="stylesheet" href="css/fenye.css" type="text/css"></link>
<link href="css/layim.css" type="text/css" rel="stylesheet" />
</head>
 
  <div class="wrap">
	<div class="header">
		<div class="headertop_desc">
			<div class="call">
				 <p><span>需要帮助?</span> 联系我们 <span class="number">QQ：1952593993</span></span></p>
			</div>
			<div class="account_desc">
				<ul>
						<c:if test="${show}>0">
						<li><a href="reg.jsp">注册</a></li>
						<li><a href="login.jsp">登陆</a></li>
						</c:if>
						<c:forEach items="${type}" var="info">
							<li>欢迎你:</li>
							<li><a href="javascript:void;">注销</a></li>
							<li><a href="javascript:void;">我的信息</a></li>
						</c:forEach>
					</ul>
					<input id="checkuser" type="hidden" value=""/>
			</div>
		</div>
		<div class="header_top">
			<div class="logo">
				<a href="index.jsp"><img src="./images/logo.png" alt="" /></a>
			</div>
			  <div class="cart">
			  	   <p><font size="+2">欢迎来到湖工二手市场!!!</font> </p>
			  	   <div id="post_wish"><a href="javascript:showdiv()"><font color="#CC0033">发布求购</font></a></div>
			  	   <div id="post_goods"><a href="post.jsp"><font color="#CC0033">我要卖闲置</font></a></div>
                   <div id="my_goods">
                        <p><div id="goods_status" class="wrapper-dropdown-2"> 我的闲置&nbsp;&nbsp;&nbsp;
			  	   	      <ul class="dropdown">
			  	   	     <c:if test="${show}>0">
							<li ><a href="saling_sale.action?userid=1&goodsstatus=1">出售中</a></li>
							<li><a href="saling_sale.action?userid=1&goodsstatus=0">已下架</a></li>
                            <li><a href="saling_sale.action?userid=1&goodsstatus=3">已出售</a></li>
                            </c:if>
                         <c:if test="#session.onlinemallUser==null">    
                             <li ><a href="login.jsp">出售中</a></li>
							 <li><a href="login.jsp">下架中</a></li>
                            <li><a href="login.jsp">已出售</a></li>
                           </c:if>
					      </ul>
                         </div></p>
                   </div>
			</div>
         <script type="text/javascript">
         function DropDown(el) {
				this.goods_status= el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.goods_status.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}
			$(function() {

				var dd = new DropDown( $('#goods_status') );

				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-2').removeClass('active');
				});
			});
         </script>     
		<div class="clear"></div>
  </div>
	<div class="header_bottom">
	     	<div class="menu" >
	     		<ul>
			    	 <li ><a href="index.jsp" >浏览主页</a></li>
			    	<li ><a href="swap_showsmallspeciesSwap.action?speciesid=0&currentpage=1">换物专区</a></li>
			    	<li ><a href="wish_showAllwish.action">求购墙</a></li>
			    	<li ><a href="aboutus.jsp">关于我们</a></li>
			    	<li ><a href="contact.jsp">联系我们</a></li>
     			</ul>
	     	</div>
	     	<div class="search_box">
	     		<form>
	     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
	     		</form>
	     	</div>
	     	<div class="clear"></div>
	     </div>
	     
<!-- 这个是遮罩显示特效 -->	     
 <div id="bg"></div>
 <div id="show">
 <p><font color="red">发布一个你想购买的物品,让卖家主动联系你哦！</font></p>
 		<div class="section group">
 		<input id="btnclose" type="button" value="Close" onclick="hidediv();"/>
			<div id="wishdiv" class="col span_2_of_3">
				<div class="contact-form">
					<form method="post" action="wish_postwish.action">
						<div>
							<span><label>求购标题</label></span> <span><input
								name="wishtitle"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '求购xxx物品(不超过10字)';}" value="求购xxx物品(不超过10字)" type="text" class="textbox"></span>
						</div>
						<div>
							<span><label>联系方式</label></span> <span><input
								name="wishcontact" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'qq：xxx或者tel:xxx';}" value="qq：xxx或者tel:xxx" type="text" class="textbox"></span>
						</div>
						<div>
							<span><label>详细内容</label></span> <span><textarea
									name="wishcontent" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '填写你对物品的详细描述';}" > 填写你对物品的详细描述</textarea></span>
						</div>
						<div>
							<span><input type="submit" value="发布求购" class="myButton"></span>
						</div>
					</form>
					
				</div>
			</div>
		</div>
 </div>
 <script language="javascript" type="text/javascript">
 function showdiv() {
	 var username=$("#checkuser").val();
	
	 if(username==null||username==""){
		 alert("检测到你没有登陆哦！去登陆吧");
		 location.href="login.jsp";
	 }else{
		 document.getElementById("bg").style.display ="block";
		 document.getElementById("show").style.display ="block";
	 }
 
 }
 function hidediv() {
 document.getElementById("bg").style.display ='none';
 document.getElementById("show").style.display ='none';
}
 </script>