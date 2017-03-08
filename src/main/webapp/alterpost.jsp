<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 	<%@taglib prefix="s" uri="/struts-tags"%> --%>
    <!DOCTYPE HTML>
    <html>
    <head>
        <title>南华园二手交易平台</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/post.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/bater.css" rel="stylesheet" type="text/css" />
        <link href="css/zyUpload.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="js/zyUpload/zyFile.js"></script>
        <script type="text/javascript" src="js/zyUpload/zyUpload.js"></script>
        <script type="text/javascript" src="js/layer/layer.js"></script>
    </head>
    <style type="text/css">
	 #bg{ display: none; position: absolute; top: 0%; left: 0%; width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.7; opacity:.70; filter: alpha(opacity=70);}
	 #show{display: none; position: absolute; top: 25%; left: 22%; width: 53%; height: 49%; padding: 8px; border: 8px solid #E8E9F7; background-color: white; z-index:1002; overflow: auto;}
 	</style>
    <body>
    
    <%
    if(session.getAttribute("onlinemallUser")==null){
    	request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    
    %>
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
                    <!-- <script type="text/javascript" src="js/pagejs/chatIm.js"></script> -->
                    <div class="clear"></div>
                </div>
               <div class="header_bottom">
	     	<div class="menu" >
	     		<ul>
			    	 <li ><a href="index.jsp" >浏览主页</a></li>
			    	<li ><a href="lately.jsp">换物专区</a></li>
			    	<li ><a href="hotly.jsp">求购墙</a></li>
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
            </div>
            <!--发布闲置部分-->
            <div class="post_goods">
                <div id="container">
                    <h1>
					<font size="+2" color="#CC3366">修改你的商品让他更快找到买家(<font size="-1" color="#CC3366" >本站对二手手机提供价值评估,帮您定出最合适的价格迅速找到买家</font>)</font>
				</h1>
                    <br />
                    <div id="mainmenu">
                        <ul id="tabs">
                            <li id="postgoods"><a><font color="#FFFFFF">修改商品</font></a>
                        </ul>
                        <div>
                            <div class="bar">&nbsp;</div>
                            <div id="panel" style="display: block;">
                                <div class="wrap">
                                    <div class="desc-info">免费，快速，搞得定！</div>
                                    <ul class="flow clearfix sep-big">
                                        <li class="flow-item" active>
                                            <label class="i-badge">0</label>
                                            修改商品信息</li>
                                        <i class="icon-arrow-right"></i>
                                    </ul>
                                    <!-- 二手物品类别信息 -->
                                    <!-- 发布二手物品信息 -->
                                    <div id="publish" style="display: block;">
                                        <div class="general-info">基本信息</div>
                                        <form method="post" id="releaseForm" action="alterGoods_goods.action">
                                            <div class="g-line g-title">
                                                <label class="g-label"> <span class="required">*</span> 物品名称：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" value="<s:property value="#session.alterGoods.goodstitle"/>" class="input input-large" title="物品名称" name="goodstitle" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写物品名称(少于25个字)</span> <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <input type="hidden" name="goodsid" value="<s:property value="#session.alterGoods.goodsid"/>">
                                           <%--  <div class="g-line g-brand">
                                                <label class="g-label">类别: </label>
                                                <div class="publish-item-detail">
                                                    <select class="input selector" title="品牌" id="smallspecies" name="speciesid" >
                                                    	<option   selected  value="请选择类别"  ></option>
                                                      <!--   <option value="nokia">诺基亚</option>
                                                        <option value="apple">苹果</option>
                                                        <option value="sumsun">三星</option> -->
                                                        
                                                    </select>
                                                </div>
                                                <span class="g-span error">请选择小类别</span> <span class="g-span note">正确选择品牌，有助于让信息更容易被查找到，让效果更好！</span>
                                            </div> --%>
                                            <div class="g-line g-new-old">
                                                <label class="g-label"> 新旧程度： </label>
                                                <div class="publish-item-detail">
                                                    <select class="input selector" title="新旧程度" name="goodsneworold">
                                                    	<option value="<s:property value="#session.alterGoods.goodsneworold"/>" selected="true" ></option>
                                                        <option value="全新">全新</option>
                                                        <option value="99新">99新</option>
                                                        <option value="8成新">8成新</option>
                                                    </select>
                                                </div>
                                                <span class="g-span error">请选择新旧程度</span>
                                            </div>
                                            <input id="toparentid" type="hidden" name="parentid" />
                                            <div class="g-line g-price">
                                                <label class="g-label"> <span class="required">*</span> 价格：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" value="<s:property value="#session.alterGoods.goodsprice"/>" class="input input-large" title="价格" maxlength="6" name="goodsprice" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" required="required" />
                                                </div>
                                                <span class="g-unit">元</span> <span class="g-span empty">请输入价格</span>
                                                <span class="g-span error">「价格」不符合要求，请输入数字</span> <span class="g-span note">明确价格，快速交易！</span>
                                            </div>
                                            <div class="g-line g-address">
                                                <label class="g-label"> <span class="required">*</span> 地址：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" value="<s:property value="#session.alterGoods.nowaddress"/>" class="input input-large" title="地址" name="nowaddress" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写地址</span> <span class="g-span note">例：xx大学xx栋xx宿舍</span>
                                            </div>
                                            <div class="g-line g-tel">
                                                <label class="g-label"> <span class="required">*</span> 联系电话：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" value="<s:property value="#session.alterGoods.goodstelphone"/>" class="input input-large" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" title="联系电话" name="goodstelphone" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写联系电话</span> <span class="g-span note">例：手机号132********或者固定电话
												0746-*****75</span>
                                            </div>
                                            <div class="g-line g-details">
                                                <label class="g-label"> <span class="required">*</span> 详情描述：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <textarea class="input textArea" name="goodsdetail" cols="32" style="height: 150px;" maxlength="5000" type="text"><s:property value="#session.alterGoods.goodsdetail"/> </textarea>
                                                </div>
                                                <span class="g-span empty">请填写描述</span> <span class="g-span note">例如：交易方式、交易时间、具体物品信息。</span>
                                            </div>
                                          <%--   <div class="g-line g-photo">
                                                <label class="g-label"> <span class="required">*</span> 上传图片：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <div id="file-upload" style="width: 520px; height: 150px;"></div>
                                                </div>
                                                <span class="g-span empty">请选择上传物品照片</span> <span class="g-span note">请上传物品照片</span>
                                            </div> --%>
                                            <p class="g-submit">
                                                <input type="submit" id="release-form-submit" class="form-submit" value="修改商品" />
                                            </p>
                                        </form>
                                    </div>
                                </div>
                            </div>

<!-- ------------------------------------------------------------------------------------ -->

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--尾部-->
        <div class="copy_right">
            <p>源辰信息 © 保留所有权利 | 设计 源辰信息</p>
        </div>
        
 <!-- 发布求购心愿的模块 -->      
 <div id="bg"></div>
  <div id="show"><h1>发布求购，发布你想购买的物品，快速让卖家找到你</h1><br />

 		<div class="section group">
			<div class="col span_2_of_3">
				<div class="contact-form">
					<form method="post" action="wish_postwish.action">
						<div>
							<span><label>求购标题</label></span> <span><input
								name="wishtitle" type="text" class="textbox"><p >这里填写你想求购的物品名称</p></span>
						</div>
						<div>
							<span><label>联系方式</label></span> <span><input
								name="wishcontact" type="text" class="textbox"><p >联系方式让卖家能快速联系到你</p></span>
						</div>
						<div>
							<span><label>详细内容</label></span> <span><textarea
									name="wishcontent"> </textarea><p >这里填写你对这个求购商品的细节要求</p></span>
						</div>
						<div>
							<span><input type="submit" value="发布求购" class="myButton"></span>
						</div>
					</form>
					<input id="btnclose" type="button" value="Close" onclick="hidediv();"/>
				</div>
			</div>
		</div>
 </div>
    </body>
    </html>
    <script type="text/javascript">
    function showdiv() {
    	 document.getElementById("bg").style.display ="block";
    	 document.getElementById("show").style.display ="block";
    	 }
    	 function hidediv() {
    	 document.getElementById("bg").style.display ='none';
    	 document.getElementById("show").style.display ='none';
    	}
        //这个js是点击发布和以物换物的Li的切换
        $("#panel").show();
        $("#panel_swap").hide();
        $("#postgoods").on("click", function() {
            $("#panel").show();
            $("#panel_swap").hide();
        });
        $("#postswap").on("click", function() {
            $("#panel_swap").show();
            $("#panel").hide();
        });
    </script>

