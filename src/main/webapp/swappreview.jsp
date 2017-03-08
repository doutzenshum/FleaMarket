<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>南华园二手交易平台</title>
<link type="text/css" rel="stylesheet" href="css/comment.css" />
<link rel="stylesheet" href="css/ShopShow.css" type="text/css" />
<link rel="stylesheet" href="css/MagicZoom.css" type="text/css" />

<script src="js/MagicZoom.js" type="text/javascript"></script>
<style>
.myadd {
	margin-left: 0px;
}
</style>
<%@ include file="header.jsp"%>
<script type="text/javascript" src="js/pagejs/preview_page.js"></script>
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
							<div id="tsImgS"><a href="" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="./images/goods/<s:property value="#session.oneswap.swapimg"/>" tsImgS="./images/goods/<s:property value="#session.oneswap.swapimg"/>" /></a></div>
							<div id="tsPicContainer">
								<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
								<div id="tsImgSCon">
									<ul>
										<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="./images/goods/<s:property value="#session.oneswap.swapimg"/>" tsImgS="./images/goods/<s:property value="#session.oneswap.swapimg"/>" /></li>
									
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
						<h2><s:property value="#session.oneswap.swaptitle"/></h2>
						<p>卖家所在地: <s:property value="#session.oneswap.swaparea"/></p>
						<div class="price">
							<p>
								<span> 目标交换物: <s:property value="#session.oneswap.swapaim"/></span>
							</p>
						</div>
						<input id="needgoodsid" type="hidden" value="<s:property value="#session.oneGoods.goodsid"/>">
						<input id="needuserid" type="hidden" value="<s:property value="#session.onlinemallUser.userid"/>">
						<div class="available">
							<ol id="my_add">
								<li>成色：<s:property value="#session.oneswap.swapneworold"/></li>
								<br />
								<br />
								<li>联系方式： <a id="myButton" class="myButton">在线聊天</a></li>
								<br />
								<br />
								<li>电话或者qq联系：<s:property value="#session.oneswap.swaptelphone"/></li>
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
							<div class="clear"></div>
						</ul>
						<div class="resp-tabs-container">
							<div class="product-desc" style="height:450px;background-color:  #fff;border:2px solid #ebe8e8">
								<s:property value="#session.oneswap.swapdetail"/></div>
							<!--留言部分-->
							<%-- <div class="product-tags" style="height:450px;background-color:  #fff;border:2px solid #ebe8e8">
								<p>对商品有什么想说的？在这里留言吧</p>
								<h4>添加留言：</h4>

								<div class="input-box">
									<input id="leaveamessage" type="text" value="" />
								</div>
								<div class="button">
									<span><a
										href="javascript:leaveMessage('<s:property value="#session.onlinemallUser.username"/>','<s:property value="#session.oneGoods.goodsid"/>')">留言</a></span>
								</div>
								<br />
								<div class="coment-reply" id="message_ajax">
									<div id="comment_total" class="coment-tips">共有<s:property value="#session.allTopic.total"/>条评论</div>
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
									<a href="#">点击加载更多</a>
								</div>
							</div> --%>
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
	      		document.getElementById("message_ajax").innerHTML=s;
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
</script>
