<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>
<%@ include file="header.jsp"%>
<style type="text/css">
#showuserimg img{
	width:60px;
	height:60px;
	min-width:60px;
}
#showuserimg{
	width:63px;
	height:63px;
	background: #f1f1f1 none repeat scroll 0 0;
    margin-bottom: 8px;
    padding: 8px;
}
.toshowusername{
	height: 13px;
    margin-bottom: 5px;
    overflow: hidden;
    text-align:left;
}
.detailcontact{
	height: 90px;
    left: 86px;
    position: relative;
    top: -90px;
    width: 180px;
}
.detailcontent{
	border-top: 1px solid #cd1f25;
	height: 220px;
    left: 0px;
    position: relative;
    top: -90px;
    width: 250px;
}
#wishdetail{
   margin-top:15px;
	text-align:left;
	font:normal small-caps 120%/120% fantasy;
	color:#6a82a4;
	word-spacing:1px;
	letter-spacing:2px;
	/* font: 14px #6a82a4; */ 
}
#wishregtime{
	   position: relative;
	   left:0px;
	  height:10px;
	  text-align:left;
}
#beatifywish{
	/* background: rgba(0, 0, 0, 0) url("./images/ba1.png") repeat scroll 0 0; */
}
</style>
<div class="main">
	<div class="content">
		<div class="content_top">
			<label><font color="#CC0033" size="+1">看看求购墙，找找你的闲置宝贝的买家并快速联系上他</font></label>
		</div>

		<div class="clear"></div>
	</div>

<!-- 1.用户名   2.用户邮箱 3.心愿标题  4.心愿详细   5.联系方式 -->
	<s:iterator var="goods" value="#session.allwish.list" status="vs">
	<s:if test="#vs.count%4==1">
		<div class="section group">
	</s:if>
		<div class="grid_1_of_4 images_1_of_4" id="beatifywish">
			<div id="showuserimg" >
				<a href="showsaleusergoods_goods.action?userid=<s:property value="#goods.userid"/>"><img  src="./images/userimg/<s:property value="#goods.userheadimg"/>"/></a>
			</div>
			<div class="detailcontact">
			<p class="toshowusername">发布者:<s:property value="#goods.username"/></p>
			<p class="toshowusername">邮箱:<s:property value="#goods.useremail"/></p>
			<p class="toshowusername">联系方式:<s:property value="#goods.wishcontact"/></p>
			</div>
			<div class="detailcontent">
				<h2 style="color:#cd1f25"><font size="+2.5"><s:property value="#goods.wishtitle"/></font></h2>
				<p id="wishdetail">&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#goods.wishcontent"/> </p>
				<p id="wishregtime">发布时间：<s:property value="#goods.wishtime"/></p>
			</div>
		</div>
	<s:if test="#vs.count%4==0">
		</div>
	</s:if>
</s:iterator>






	<div class="section group">

		<div class="content_top">
			<div class="wrap">
				<!-- <hr />
共1页,当前:第1页
&nbsp&nbsp
<a href='showgoods.action?op=showspecies&speciesid=&currentpage=1'>第一页</a>
<a href='showgoods.action?op=showspecies&speciesid=&currentpage=1'>上一页</a>
<a href='showgoods.action?op=showspecies&speciesid=&currentpage=1'>下一页</a>
<a href='showgoods.action?op=showspecies&speciesid=&currentpage=1'>最后一页</a>
 -->
				<div class="page clearfix">
					<div id="J_bottomPage" class="p-wrap">
						<span class="p-num"> <a class="pn-prev" href="wish_showAllwish.action?currentpage=<s:property value="#session.allwish.prepage"/>">
								<i><</i> <em>上一页</em>
						</a> <a class=" curr" id="select_page_my"><s:property value="#session.allwish.currentpage"/></a> <a class="pn-next"
							href="wish_showAllwish.action?currentpage=<s:property value="#session.allwish.nextpage"/>"> 下一页 <i>></i>
						</a>
						</span> <span class="p-skip"> <em> 共 <b><s:property value="#session.allwish.totalpage"/></b> 页 到第
						</em> <input id="page_jump_num" class="input-txt" value=""> <em>页</em>
							<a class="btn btn-default" href="javascript:page_jump('');">确定</a>
						</span>
					</div>
				</div>
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
		
	function page_jump(speciesid){
		var jump=document.getElementById("page_jump_num").value;
		if(jump==""){
			
		}else{
			location.href="wish_showAllwish.action?currentpage="+jump;
		}
	}
	</script>
