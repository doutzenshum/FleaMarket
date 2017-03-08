<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>

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