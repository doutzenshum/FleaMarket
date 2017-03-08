<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>


<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>
<link rel="stylesheet" href="./css/mai.css" type="text/css">
<%@ include file="header.jsp"%>
<div id="page">
	<div id="content">
		<div id="J_Sidebar" class="leftside">
			<div class="user-info">
				<div class="user-avatar">
					<a href="my_userInfo.action?userid=<s:property value="#session.onlinemallUser.userid"/>"><img src="./images/userimg/<s:property value="#session.onlinemallUser.userheadimg"/>"
						alt="图片无法显示哦" /></a>
				</div>
				<a href="my_userInfo.action?userid=<s:property value="#session.onlinemallUser.userid"/>" class="user-nick"><s:property value="#session.onlinemallUser.username"/></a>
				<p class="user-credits">
					<img src="http://pics.taobaocdn.com/newrank/b_red_4.gif"
						title="91－150个买家信用积分" class="tb-rank"> <a title="vip1"
						class="sh-user-vip sh-vip-icon1" rel="nofollow"></a>
				</p>
				<p class="alipay">
					<a href="" target="_blank"><i></i>注册时间:</a>
				</p>
				<p class="records">
					<a href="" target="_blank"><i></i><s:property value="#session.onlinemallUser.userregtime"/></a>
				</p>
			</div>
			<ul class="navigations">
			<input id="nvai-userid" value="<s:property value="#session.onlinemallUser.userid"/>" type="hidden"/>
				<li class="selected" id="myinfo_mygoods"><a
					href="saling_sale.action?goodsstatus=1&userid=<s:property value="#session.onlinemallUser.userid"/>"
					class="nav-links">在售宝贝</a></li>
				<li><a
					href="saling_sale.action?userid=<s:property value="#session.onlinemallUser.userid"/>&goodsstatus=0"
					class="nav-links">下架宝贝</a></li>
				<li><a
					href="saling_sale.action?userid=<s:property value="#session.onlinemallUser.userid"/>&goodsstatus=3"
					class="nav-links">已售出的</a></li>
				<li><a href="" class="nav-links">我的消息</a></li>
			</ul>

		</div>
		<div id="main-content" class="main-content my-items-main">
			<div class="filter">
				<form class="checkboxes" action="" method="get"
					enctype="multipart/form-data">
					<input id="J_OnSoldCheckBox" class="checkbox" type="checkbox"
						name="onSale" value="true" />
						<s:if test='%{pageModel.goodsstatus=="1"}'>
						 <label for="J_OnSoldCheckBox">在售宝贝（<em><s:property value="#session.pageModel.total"/></em>）</label>
						</s:if>
						<s:if test='%{pageModel.goodsstatus=="0"}'>
						 <label for="J_OnSoldCheckBox">下架宝贝（<em><s:property value="#session.pageModel.total"/></em>）</label>
						</s:if>
						<s:if test='%{pageModel.goodsstatus=="3"}'>
						 <label for="J_OnSoldCheckBox">已售宝贝（<em><s:property value="#session.pageModel.total"/></em>）</label>
						</s:if>
				</form>
			</div>
			
<s:iterator id="goods" value="#session.pageModel.list">
			<div class="myitem-lists" data-token="vCa1C76abJlXgX6">
				<ul id="J_ItemLists" class="item-lists">
					<li class="item-main item-ershou" data-id="45465021549">
						<div class="hd">
							<div class="pubtime">发布时间:<s:property value="#goods.goodsregtime "/></div>
							<div class="lastmodified">最后编辑:<s:property value="#goods.goodsregtime "/></div>
						</div>
						<div class="bd">
							<!-- 宝贝信息 -->
							<div class="item-info">
								<div class="item-title">
									<a target="_blank"><s:property value="#goods.goodstitle"/></a>
								</div>
								<div class="item-pic tb-pic">
								<s:if test="#goods.goodsstatus!=3 ">
									<a
										href="showgoodsid_goods.action?goodsid=<s:property value="#goods.goodsid"/>"
										target="_blank"><img
										src="./images/goods/<s:property value="#goods.goodsimg"/>" title="" /></a>
								</s:if>
								<s:if test="#goods.goodsstatus==3 ">
								<img
										src="./images/goods/<s:property value="#goods.goodsimg"/>" title="" />
								
								</s:if>
								</div>
								<div class="price-info clearfix">
									<div class="item-price price-block">
										<p class="small price">
											<b>&yen;</b><em><s:property value="#goods.goodsprice"/></em>
										</p>
									</div>
								</div>
								<ul class="item-statistics">

								</ul>
							</div>
							<!-- 评分信息 -->

							<div class="item-status-box status-onsale score-level-1 "
								data-url="http://trade.2.taobao.com/grade_detail.htm?item_id=45465021549">
								<div class="item-score-box">

									 <s:if test="#goods.goodsstatus==1">
	    	          					<em class="item-status">在售</em>
	    	        				</s:if>
	    	        				<s:if test="#goods.goodsstatus==0">
	    	          					<em class="item-status">下架</em>
	    	        				</s:if>
	    	        				<s:if test="#goods.goodsstatus==3">
	    	          					<em class="item-status">已出售</em>
	    	        				</s:if>

								</div>
								<div class="score-tips" data-gg="11">
								<s:if test="#goods.goodsstatus!=3 ">
									<p class="score-common-tips">
										亲,商品卖不出去吗？ <a
											href="showonlyGoods_goods.action?goodsid=<s:property value="#goods.goodsid"/>"
											target="_blank">去完善信息或者修改价格吧</a>
									</p>
									</s:if>



								</div>
							</div>

							<!-- 操作区 -->
							<div class="operations">
								<div class="caliang">

									<s:if test="#goods.goodsstatus==1">
									<a	href="javascript:dosold('<s:property value="#goods.goodsid" />','<s:property value="#session.onlinemallUser.userid"/>','1');"
										class="operation caliang-item">下架</a> 
									<a	href="javascript:deletegoods('<s:property value="#goods.goodsid" />','<s:property value="#session.onlinemallUser.userid"/>','3');"
										class="operation caliang-item">交易</a>
										
									</s:if>
									<s:if test="#goods.goodsstatus==0">
									<a	href="javascript:dosold('<s:property value="#goods.goodsid" />','<s:property value="#session.onlinemallUser.userid"/>','0');"
										class="operation caliang-item">上架</a> 
										
									</s:if>
									<s:if test="#goods.goodsstatus==3">
									
									<a	href="javascript:void(0)"
										class="operation caliang-item">交易完成</a> 
									</s:if>

								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
</s:iterator>
			<div class="paginator-wrapper">
				<div class="wrapper">
					<div id="J_Pages" class="paginator">
						<!--      <hr />
共1页,当前:第1页
&nbsp&nbsp
<a href='showmygoods.action?op=showmygoods&userid=65997875-6113-4434-9158-0cacb8f0b6bd&currentpage=1'>第一页</a>
<a href='showmygoods.action?op=showmygoods&userid=65997875-6113-4434-9158-0cacb8f0b6bd&currentpage=1'>上一页</a>
<a href='showmygoods.action?op=showmygoods&userid=65997875-6113-4434-9158-0cacb8f0b6bd&currentpage=1'>下一页</a>
<a href='showmygoods.action?op=showmygoods&userid=65997875-6113-4434-9158-0cacb8f0b6bd&currentpage=1'>最后一页</a>
-->
						<span class="paginator-curr">当前第<s:property value="#session.pageModel.currentpage" />页</span>

						<form class="dpl-paginator-skip" method="post"
							action="saling_sale.action">
							<span>共<s:property value="#session.pageModel.totalpage" /> 页&nbsp;到第</span> 
						 	<input class="J_Dpl_Paginator_JumpTo" maxlength="3" name="currentpage" size="3" type="text" 
						 	value=""/>
							<span>页</span> 
							<input type="hidden" name="goodsstatus" value="<s:property value="#session.pageModel.goodsstatus" />"/>
							<input type="hidden" name="userid" value="<s:property value="#session.onlinemallUser.userid"/>" />
							
							<input type="hidden" name="" value="saling_sale.action"/>
								 
							<button type="submit">确定</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	/* 	$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
		}); */
	
	</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>
<script type="text/javascript">
		function handledelorderitem(){
			if (xmlHttp.readyState == 4) { // 测试状态是否请求完成
			 	//http响应码
		 		if (xmlHttp.status == 200) { // 如果服务端回应ok，则执行以下操作
		      		var s= xmlHttp.responseText ;
		      		document.getElementById("main-content").innerHTML=s;
		 		}
			}
		}
		function deletegoods(goodsid,userid,goodsstatus){
			 startRequest( "saling_daletegoods.action?goodsid="+goodsid+"&userid="+userid+"&goodsstatus="+goodsstatus,  handledelorderitem);
		}
		 function dosold(goodsid,userid,goodsstatus){
		 	 startRequest( "saling_altergoods.action?goodsid="+goodsid+"&userid="+userid+"&goodsstatus="+goodsstatus,  handledelorderitem);
		 }
</script>

