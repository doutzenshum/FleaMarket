<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>
<link href="./css/saleuserinfo.css" rel="stylesheet" type="text/css"
	media="all" />
<%@ include file="header.jsp"%>
<div id="wrapper">
	<div class="contBox box-mg">
		<ul class="user-b-info clearfix">
			<li class="w1">卖 家 名： <b></b><s:property value="#session.IdUser.username"/>
			</li>
			<li>注册时间：<s:property value="#session.IdUser.userregtime"/></li>
			<li><label class="fl">用户邮箱：<s:property value="#session.IdUser.useremail"/></label> <span
				class="mr15 fc-green rz-tp"> <i class="dl-i-phone"
					title="手机已认证"></i> 手机:<s:property value="#session.IdUser.usertelephone"/>
			</span> <span class="rz-tp"> <i class="dl-i-g-id" title="身份证未认证"></i>
					身份证未认证
			</span></li>
			<!-- <li>
<label>当前号码：</label>
<span class="mr5">
<img align="absmiddle" src="/tel_img/?c=Ex2LKzh2e6ZA4S5MD3ow0h36lANHw__PtQyW">
</span>
<a target="_blank" gjalog="/wu/user_post/phone_post@atype=click" href="http://www.ganji.com/site/u/_oJ6kl21WlahXbWpknl50ZJqVoQ==">该号码发布的信息>></a>
</li> -->
		</ul>
	</div>
	<div class="contBox01">
		<div class="infoTab">
			<ul class="clearfix">
				<li><a class="active"
					href="/user/wu/?user_id=40287674&phone=1522albjvbjvpddkv"
					gjalog="/wu/user_post/tab2@atype=click"> 卖家的商品 <i class="f12">(<s:property value="#session.saleUserGoods.total"/>条)</i>
				</a></li>
			</ul>
		</div>
		<div class="infoBox">
			<div class="infoBox-in">
				<div class="profile-name">
					<span class="n1">标题</span> <span class="n2">信息状态</span> <span
						class="n3">发布时间</span>
				</div>

<s:iterator id="goods" value="#session.saleUserGoods.list">
				<dl class="profile-infolist">
					<dt>
						<span class="info-tt"> <a target="_blank"
							href="showgoodsid_goods.action?goodsid=<s:property value="#goods.goodsid"/>"
							gjalog="/wu/user_post/title@atype=click"><s:property value="#goods.goodstitle"/></a>
						</span> <i class="pf-lm"> </i>
					</dt>
					<s:if test="#goods.goodsstatus==1">
					<dd>正在出售</dd>
					</s:if>
					<s:if test="#goods.goodsstatus==3">
					<dd>已经出售</dd>
					</s:if>
					<dd><s:property value="#goods.goodsregtime"/></dd>
				</dl>
</s:iterator>


			</div>
			<div class="fenye">
				<!-- <hr />
共20页,当前:第1页
&nbsp&nbsp
<a href='UserServlet.action?op=showsaleuser&userid=1&currentpage=1'>第一页</a>
<a href='UserServlet.action?op=showsaleuser&userid=1&currentpage=1'>上一页</a>
<a href='UserServlet.action?op=showsaleuser&userid=1&currentpage=2'>下一页</a>
<a href='UserServlet.action?op=showsaleuser&userid=1&currentpage=20'>最后一页</a>
-->
				<div class="page clearfix">
					<div id="J_bottomPage" class="p-wrap">
						<span class="p-num"> <a class="pn-prev"
							href="showsaleusergoods_goods.action?userid=<s:property value="#session.saleUser.userid"/>&currentpage=<s:property value="#session.saleUserGoods.prepage"/>">
								<i><</i> <em>上一页</em>
						</a> <a class=" curr" id="select_page_my"><s:property value="#session.saleUserGoods.currentpage"/></a> <a class="pn-next"
							href="showsaleusergoods_goods.action?userid=<s:property value="#session.saleUser.userid"/>&currentpage=<s:property value="#session.saleUserGoods.nextpage"/>">
								下一页 <i>></i>
						</a>
						</span> <span class="p-skip"> <em> 共 <b><s:property value="#session.saleUserGoods.totalpage"/></b> 页 到第
						</em> <input id="page_jump_num" class="input-txt" value=""> <em>页</em>
							<a class="btn btn-default" href="javascript:page_jump('<s:property value="#session.saleUser.userid"/>');">确定</a>
						</span>
					</div>
				</div>
				<ul class="pageLink">
					<li class="linkOn"></li>
				</ul>
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
			function page_jump(speciesid){
			var jump=document.getElementById("page_jump_num").value;
			location.href="showsaleusergoods_goods.action?currentpage="+jump+"&userid="+speciesid;
			}
	</script>



