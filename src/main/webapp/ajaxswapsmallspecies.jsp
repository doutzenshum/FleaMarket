<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>

<div class="main" id="toshowswap">
	<div class="content" style="border: solid #CCC 1px;">
		<div class="content_top1" >
			 <h4>
				个人闲置 : <a href="swap_showsmallspeciesSwap.action?speciesid=0">全部  </a><span class="pipe-gt">&gt;</span>
				<s:iterator id="species" value="#session.allSpecies" >
					<s:if test="#species.speciesid==#session.allGoods.speciesid">
						<span><s:property value="#species.speciesname"/></span>
					</s:if> 
				</s:iterator>
			</h4> 
		</div>
		<div class="content_top1">
			<div id="J_CategoryFilters" class="category-filters">
				<div class="category-subs">
					<dl class="category-filter" data-spm="">
						<dt class="category-name">
							<!-- 这是点击后的大分类 -->
							<s:iterator id="species" value="#session.allSpecies" >
								<s:if test="#species.speciesid==#session.allGoods.speciesid">
									<font color="#335"><s:property value="#species.speciesname"/><span class="comma">：</span></font>
								</s:if> 
							</s:iterator>
							<s:if test="#session.allGoods.speciesid==0">
									<font color="#335">全部<span class="comma">：</span></font>
							</s:if>
						</dt>

						<dd class="J_HiddenArea">
							<ul class="J_HiddenAreaContent sub-category-list clearfix">
						
									<!-- <font color="#335">全部<span class="comma">：</span></font> -->
								<s:iterator id="species" value="#session.allSpecies" >
									<s:if test="#species.parentid==#session.allGoods.speciesid">
										<li class="clearfix"><a class="sub-category"
										href="swap_showsmallspeciesSwap.action?speciesid=<s:property value="#species.speciesid"/>"> <em
											class="sub-category-name"><s:property value="#species.speciesname"/></em> <span
											class="sub-category-item-num"><span class="number"></span></span>
									</a></li>
									</s:if> 
								</s:iterator>
							</ul>
						</dd>
					</dl>
					<dl class="category-filter" data-spm="2007.1000337.2">
						<s:if test="#session.allGoods.speciesid!=0">
						<dt class="category-name">
							其他<span class="comma">：</span>
						</dt>
						<dd class="J_HiddenArea">
							<ul class="J_HiddenAreaContent sub-category-list clearfix">
								<!-- 这是点击后的大分类 其他的大分类-->
								<s:iterator id="species" value="#session.allSpecies" >
									<s:if test="#species.speciesid!=#session.allGoods.speciesid">
										<s:if test="#species.parentid==0">
										<li class="clearfix"><a class="sub-category"
									href="swap_showsmallspeciesSwap.action?speciesid=<s:property value="#species.speciesid"/>"> <em
										class="sub-category-name"><s:property value="#species.speciesname"/></em> <span
										class="sub-category-item-num"><span class="number"></span></span>
								</a></li>
								</s:if>
									</s:if> 
								</s:iterator>
							</ul>
						</dd>
						</s:if>
					</dl>
				</div>
			</div>
		</div>
		<div class="content_top">
			<a href="" class="content_top" track="prop:筛选条件:综合">综合</a> <a href=""
				class="content_top" title="" track="prop:筛选条件:新品">新品</a> <a href=""
				class="content_top" title="点击后评价数从高到低排序" track="prop:筛选条件:评价">评论</a>
		</div>
		<div class="clear"></div>
	</div>
<s:iterator id="goods" value="#session.allGoods.list" status="vs">
	<s:if test="#vs.count%4==1">
		<div class="section group">
	</s:if>
		<div class="grid_1_of_4 images_1_of_4">
			<a href="swap_findOneSwap.action?swapid=<s:property value="#goods.swapid"/>"> <img
				src="./images/goods/<s:property value="#goods.swapimg"/>" alt="" /></a>
			<h2><s:property value="#goods.swaptitle"/></h2>
			<div class="price-details">
				<div class="price-number">
					<p>
						<span class="rupees">目标换物：<s:property value="#goods.swapaim"/></span>
					</p>
				</div>
				<div class="add-cart">
					<h4>
						<a href="swap_findOneSwap.action?swapid=<s:property value="#goods.swapid"/>">瞅瞅</a>
					</h4>
				</div>
				<div class="clear">
					<span><s:property value="#goods.swapneworold"/></span>
				</div>
			</div>
		</div>
	<s:if test="#vs.count%4==0">
		</div>
	</s:if>
</s:iterator>
</div>
</div>
</div>
</div>
<div>
	<!--  分页 这里根据最大的父类别的类别id来判断使用什么方法进行查询分页-->



	<div class="wrap">
		<div class="content_top">
			<!-- <hr />
共4页,当前:第1页
&nbsp&nbsp
<a href='showgoods.action?op=showspecies&speciesid=1&currentpage=1'>第一页</a>
<a href='showgoods.action?op=showspecies&speciesid=1&currentpage=1'>上一页</a>
<a href='showgoods.action?op=showspecies&speciesid=1&currentpage=2'>下一页</a>
<a href='showgoods.action?op=showspecies&speciesid=1&currentpage=4'>最后一页</a>
 -->
			<div class="page clearfix">
				<div id="J_bottomPage" class="p-wrap">
					<span class="p-num"> <a class="pn-prev"
						href="swap_showsmallspeciesSwap.action?currentpage=<s:property value="#session.allGoods.prepage"/>&speciesid=<s:property value="#session.allGoods.speciesid"/>">
							<i><</i><em>上一页</em>
					</a> <a class=" curr" id="select_page_my"><s:property value="#session.allGoods.currentpage"/></a> <a class="pn-next"
						href="swap_showsmallspeciesSwap.action?currentpage=<s:property value="#session.allGoods.nextpage"/>&speciesid=<s:property value="#session.allGoods.speciesid"/>">
							下一页<i>></i>
					</a>
					</span> <span class="p-skip"> <em>共<b><s:property value="#session.allGoods.totalpage"/></b>页 到第
					</em> <input id="page_jump_num" class="input-txt" value=""><em>页</em>
						<a class="btn btn-default" href="javascript:page_jump('<s:property value="#session.allGoods.speciesid"/>');">确定</a>
					</span>
				</div>
			</div>
		</div>
	</div>


</div>
</div>
