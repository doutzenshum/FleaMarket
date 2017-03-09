<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all"/>
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
 <style type="text/css">
 #bg{ display: none; position: absolute; top: 0%; left: 0%; width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.7; opacity:.70; filter: alpha(opacity=70);}
 #show{display: none; position: absolute; top: 20%; left: 35%; width: 25%; height: 60%; padding: 8px; border: 8px solid #E8E9F7; background-color: white; z-index:1002; overflow: auto;}
 #btnclose{
 	margin-right:10px;
 }
 #show input[type="text"] {
 	font-size:12px;
 	color:#acacac;
 }
 #show textarea{
 	font-size:12px;
 	color:#acacac;
 }
 </style>
  <div class="wrap">
	<div class="header">
		<div class="headertop_desc">
			<div class="call">
				 <p><span>需要帮助?</span> 联系我们 <span class="number">QQ：1952593993</span></span></p>
			</div>
			<div class="account_desc">
				<ul>
						<s:if test="#session.onlinemallUser==null">
						<li><a href="reg.jsp">注册</a></li>
						<li><a href="login.jsp">登陆</a></li>
						</s:if>
						<s:if test="#session.onlinemallUser!=null">
							<li>欢迎你:<s:property value="#session.onlinemallUser.username"/></li>
							<li><a href="user_logout.action">注销</a></li>
							<li><a href="my_userInfo.action?userid=<s:property value="#session.onlinemallUser.userid"/>">我的信息</a></li>
						</s:if>
					</ul>
					<input id="checkuser" type="hidden" value="<s:property value="#session.onlinemallUser.username"/>"/>
			</div>
		</div>
		<div class="header_top">
			<div class="logo">
				<a href="index.jsp"><img src="./images/logo.png" alt="" /></a>
			</div>
			  <div class="cart">
			  	   <p><font size="+2">欢迎来到南华园二手市场!</font> </p>
			  	   <div id="post_wish"><a href="javascript:showdiv()"><font color="#CC0033">发布求购</font></a></div>
			  	   <div id="post_goods"><a href="post.jsp"><font color="#CC0033">我要卖闲置</font></a></div>
                   <div id="my_goods">
                        <p><div id="goods_status" class="wrapper-dropdown-2"> 我的闲置&nbsp;&nbsp;&nbsp;
			  	   	      <ul class="dropdown">
			  	   	      <s:if test="#session.onlinemallUser!=null">
							<li ><a href="saling_sale.action?userid=<s:property value="#session.onlinemallUser.userid"/>&goodsstatus=1">出售中</a></li>
							<li><a href="saling_sale.action?userid=<s:property value="#session.onlinemallUser.userid"/>&goodsstatus=0">已下架</a></li>
                            <li><a href="saling_sale.action?userid=<s:property value="#session.onlinemallUser.userid"/>&goodsstatus=3">已出售</a></li>
                            </s:if>
                         <s:if test="#session.onlinemallUser==null">    
                             <li ><a href="login.jsp">出售中</a></li>
							 <li><a href="login.jsp">下架中</a></li>
                            <li><a href="login.jsp">已出售</a></li>
                           </s:if>
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