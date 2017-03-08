<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>

<!DOCTYPE html >
<html>
<head>
<title>南华园二手交易平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<link href="./css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/layim.css" type="text/css" rel="stylesheet" />	
<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<link type="text/css" rel="stylesheet" href="css/comment.css" />
<link rel="stylesheet" href="css/ShopShow.css" type="text/css" />
<link rel="stylesheet" href="css/MagicZoom.css" type="text/css" />

<script src="js/MagicZoom.js" type="text/javascript"></script>
<script type="text/javascript" src="js/pagejs/preview_page.js"></script>

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
<body onload="startServer()">
<script src="./js/layer/layer.min.js"></script>
<script type="text/javascript" src="./js/pagejs/webSocket.js"></script>

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
              <script type="text/javascript" src="js/pagejs/chatIm.js"></script>
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

<div class="main">
	<div class="content">
		<div class="content_top" style="height: 70px;">
			<div class="back-links" style="border: #ebe8e8 solid 1px;">
				<a href="showsaleusergoods_goods.action?userid=<s:property value="#session.saleUser.userid"/>"
					target="_blank"><img id="headimg"
					src="./images/userimg/<s:property value="#session.saleUser.userheadimg"/>" title="点击查看该卖家信息" /></a>
				<p>卖家：<s:property value="#session.saleUser.username"/></p>
			</div>
			<div class="back-links" style="width: 20px; height: 20px;"></div>
			<div class="back-links"
				style="width: 106px; height: 90px; margin-top: 25px;">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<p>卖家邮箱：</p>
				<p><s:property value="#session.saleUser.useremail"/> </p>
			</div>
			<div class="back-links" style="width: 40px; height: 20px;"></div>
			<div class="back-links"
				style="width: 300px; height: 90px; margin-top: 25px;">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<p>商品最近编辑：</p>
				<p><s:property value="#session.oneGoods.goodsregtime"/></p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group">
			<div class="cont-desc span_1_of_2">
				<div class="product-details">
					<div class="grid images_3_of_2">
						<div id="tsShopContainer">
							<div id="tsImgS"><a href="" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" tsImgS="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" /></a></div>
							<div id="tsPicContainer">
								<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
								<div id="tsImgSCon">
									<ul>
									<s:iterator  var="goodsimage" value="#session.images.list" status="vs">
										<li onclick="showPic(<s:property value="#vs.index"/>)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="./images/goods/<s:property value="#goodsimage.imagename"/>" tsImgS="./images/goods/<s:property value="#goodsimage.imagename"/>" /></li>
									</s:iterator>
										<%-- <li onclick="showPic(1)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" tsImgS="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" /></li>
										<li onclick="showPic(2)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" tsImgS="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" /></li> --%>
									</ul>
								</div>
								<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
							</div>
							<img class="MagicZoomLoading" width="16" height="16" src="images/loading.gif" alt="Loading..." />
						</div>
						<%-- <div id="container">
							<div id="products_example">
								<div id="products">
									<div class="slides_container">
										<a href="" target="_blank"><img
											src="./images/goods/<s:property value="#session.oneGoods.goodsimg"/>" alt=" 图片无法显示哦 " /></a>
									</div>
									<ul class="pagination">
									</ul>
								</div>
							</div>
						</div> --%>
					</div>
					<div class="desc span_3_of_2">
						<h2><s:property value="#session.oneGoods.goodstitle"/></h2>
						<p>卖家所在地: <s:property value="#session.oneGoods.nowaddress"/></p>
						<div class="price">
							<p>
								<span> ￥: <s:property value="#session.oneGoods.goodsprice"/></span>
							</p>
						</div>
						<input id="needgoodsid" type="hidden" value="<s:property value="#session.oneGoods.goodsid"/>">
						<input id="needuserid" type="hidden" value="<s:property value="#session.onlinemallUser.userid"/>">
						<div class="available">
							<ol id="my_add">
								<li>成色：<s:property value="#session.oneGoods.goodsneworold"/></li>
								<br />
								<br />
								<li>联系方式： <a id="myButton" class="myButton">在线聊天</a></li>
								<br />
								<br />
								<li>电话或者qq联系：<s:property value="#session.oneGoods.goodstelphone"/></li>
							</ol>
						</div>
						<div class="share-desc">
							<div class="share">
								<p>分享这个商品 :</p>
								<ul>
									<li><a href="#"><img src="./images/qqzone.png" alt="" /></a></li>
									<li><a href="#"><img src="./images/weibo.png" alt="" /></a></li>
								</ul>
							</div>
							<!-- <div class="button"  style="color:#900" ><span><a href="#">购买</a></span></div>	 -->
							<div class="clear"></div>
						</div>
						<div class="wish-list"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="product_desc">
					<div id="horizontalTab">
						<ul class="resp-tabs-list">
							<li class="product-description">商品详细内容</li>
							<li class="product-message">留言</li>
							<div class="clear"></div>
						</ul>
						<div class="resp-tabs-container">
							<div class="product-desc" style="height:450px;background-color:  #fff;border:2px solid #ebe8e8">
								<s:property value="#session.oneGoods.goodsdetail"/></div>
							<!--留言部分-->
							<div id="strongajax" class="product-tags" style="height:450px;background-color:  #fff;border:2px solid #ebe8e8">
								<p>对商品有什么想说的？在这里留言吧</p>
								<h4>添加留言：</h4>

								<div class="input-box">
									<input id="leaveamessage" type="text" value="" />
								</div>
								<div class="button">
									<span><a
										href="javascript:leaveMessage('<s:property value="#session.onlinemallUser.userid"/>','<s:property value="#session.oneGoods.goodsid"/>')">留言</a></span>
								</div>
								<br />
								<div class="coment-reply" id="message_ajax">
									<div id="comment_total" class="coment-tips">共有<s:property value="#session.allTopic.total"/>条评论,当前第<s:property value="#session.allTopic.currentpage"/>页</div>
									<br />
<s:iterator var="item" value="#session.allTopic.list">
									<div class="coment-reply-list">
										<div id="coment_detail" class="list-item">
										 	<div class="item-left">
												<div class="userdiv">
													<div class="userimg">
														<center>
															<img src="images/userimg/<s:property value="#item.userheadimg"/>" />
														</center>
													</div>
													<div class="username"><s:property value="#item.username"/></div>
												</div>
											</div>
											<div  class="item-right">
												<div class="coment-text">
													<span><s:property value="#item.topicdetail"/></span>
													<div>
														<font size="2" color="#666666"><s:property value="#item.topictime"/><a href="#" style="display: none">&nbsp;&nbsp;&nbsp;回复</a>
														</font>
													</div>
												</div>

											</div> 
										</div>
									</div>
</s:iterator>
									<hr />
								</div>
								<div class="add-item">
									<a href="javascript:findpage('<s:property value="#session.allTopic.goodsid"/>','<s:property value="#session.allTopic.nextpage"/>')">点击加载更多</a>
								</div>
							</div>
							<!--留言结束标签-->
						</div>


					</div>
				</div>
			</div>
			<div class="rightsidebar span_3_of_1">
				<h2>热门分类</h2>
				<ul>

				<s:iterator var="species" value="#session.allSpecies">
					<s:if test="#species.parentid==0">
					<li><a href="showSpeciesGoods_goods.action?speciesid=<s:property value="#species.speciesid"/>"><s:property value="#species.speciesname"/></a></li>
					</s:if>
				</s:iterator>


				</ul>
			</div>
		</div>
		<div class="content_bottom">
			<div class="heading">
				<h3>推荐商品</h3>
			</div>
			<div class="see">
				<p>
					<a href="showSpeciesGoods_goods.action?speciesid=0">全部商品</a>
				</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group" id="recommandGoods">
		</div>
	</div>

</div>
</div>
</div>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>
<script src="js/ShopShow.js"></script>
<script   charset="utf-8 "   type="text/javascript" >  	
$(".product-desc").show();
$(".product-tags").hide();
$(".product-description").on("click", function() {
	$(".product-desc").show();
	$(".product-tags").hide();
});
$(".product-message").on("click", function() {
	$(".product-desc").hide();
	$(".product-tags").show();
});

		
	function handledelorderitem(){
		if (xmlHttp.readyState == 4) { // 測試狀態是否請求完成
		 	//http响应码
	 		if (xmlHttp.status == 200) { // 如果伺服端回應O
	      		var s= xmlHttp.responseText ;
	      		document.getElementById("strongajax").innerHTML=s;
	 		}
		}	
	}
	function leaveMessage(nowuserid,goodsid){
	   var topicdetail=document.getElementById("leaveamessage").value;
	   if(topicdetail==null||(""==topicdetail)){
		   alert("不能填空值");
		  
	   }else{
		   if(nowuserid==null||(""==nowuserid)){
	  			alert("你未登录，请登录!");
	  			location.href="login.jsp";
		   }else{
			  startRequest( "topic_reply.action?userid="+nowuserid+"&goodsid="+goodsid+"&topicdetail="+topicdetail,  handledelorderitem);
		   } 
	   }
	   
	}
	function findpage(goodsid,currentpage){
		startRequest( "topic_showall.action?goodsid="+goodsid+"&currentpage="+currentpage,  handledelorderitem);
	}
	$.ajax({ 
		url: "showRecommandGoods_goods.action", 
		dataType:"json",
		success: function(data){     
				 $.each(data.list, function(i, item) {
					$("#recommandGoods").append(" <div class='grid_1_of_4 images_1_of_4'>"+
						"<a href='showgoodsid_goods.action?goodsid="+item.goodsid+"'><img "+
							"src='./images/goods/"+item.goodsimg+"' alt='图片无法显示哦' /></a>"+
						"<h2>"+item.goodstitle+"</h2>"+
						"<div class='price-details'>"+
							"<div class='price-number'>"+
								"<p>"+
									"<span class='rupees'>￥"+item.goodsprice+"</span>"+
								"</p>"+
							"</div>"+
							"<div class='add-cart'>"+
								"<h4>"+
									"<a href='showgoodsid_goods.action?goodsid="+item.goodsid+"'>瞅瞅</a>"+
								"</h4>"+
							"</div>"+
							"<div class='clear'>"+item.goodsneworold+"</div>"+
						"</div>"+
					"</div>");
			     });
		}
	
	});	
	
	$(function(){
		$("#myButton").on('click', function(){
			$.ajax({
					type: 'post',
					url: 'chat_toChat.action',
					dataType: "json",
					success: function(data){					//回传code，1  -->  登录了，  0  -->  没登陆
							var code = data.code;
							if(code === 0){
									location.href= data.msg;
							}
							var user = data.obj;
							var userid = user.userid;
							var username = user.username;
							var userheadimg = user.userheadimg;
							
							var array = $('.xxim_parentnode:eq(0)').find('.xxim_childnode');
							var flag = 1;  		//表示没有
							for( var i = 0 ; i<array.length; i++){
								if(   array.eq(i).attr('data-id') == userid   ){	
										flag =0;
										break;
								}
							}
							if(  flag === 1){
								  	//表示没有，进行添加
								  	var str = '<li class="xxim_childnode xxim_nowchat" type="one" data-id="'+userid+'">'
															+'<img class="xxim_oneface" src="${basePath}images/userimg/'+userheadimg+'">'
															+'<span class="xxim_onename">'+username+'</span>'
														+'</li>';
									$('.xxim_chatlist:eq(0)').append(str);
							}
							var tochatobj = array.eq(0);
							for( var i = 0 ; i<array.length; i++){
									//已经存在则直接展开聊天
									if(  array.eq(i).attr('data-id') == userid  ){
											tochatobj = array.eq(i);
											break;
									}
							};		
							tochatobj.click();	
					}
			});
		});
	});

</script>
