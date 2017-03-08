<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%@taglib prefix="s" uri="/struts-tags"%> --%>
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
        <script type="text/javascript" src="js/pagejs/post.js"></script>
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
					<font size="+2" color="#CC3366">今天你想卖啥闲置宝贝呢!<font size="-1" color="#CC3366" ></font></font>
				</h1>
                    <br />
                    <div id="mainmenu">
                        <ul id="tabs">
                            <li id="postgoods"><a><font color="#FFFFFF">发布闲置</font></a>
                                <li id="postswap"><a><font color="#FFFFFF">以物换物</font></a></li>
                        </ul>
                        <div>
                            <div class="bar">&nbsp;</div>
                            <div id="panel" style="display: block;">
                                <div class="wrap">
                                    <div class="desc-info">免费，快速，搞得定！</div>
                                    <ul class="flow clearfix sep-big">
                                        <li class="flow-item active">
                                            <label class="i-badge">1</label>
                                            选择类目</li>
                                        <i class="icon-arrow-right">></i>
                                        <li class="flow-item">
                                            <label class="i-badge">2</label>
                                            填写信息</li>
                                        <i class="icon-arrow-right">></i>
                                        <li class="flow-item">
                                            <label class="i-badge">3</label>
                                            完成发布</li>
                                    </ul>
                                    <!-- 二手物品类别信息 -->
                                    <div id="catelogs">
                                        <s:iterator var="species" value="#session.allSpecies">
										<s:if test="#species.parentid==0">
										 <a href="javascript:void(0);" onclick="handOver(this,'<s:property value="#species.speciesid"/>')"><s:property value="#species.speciesname"/></a>
										</s:if>
									</s:iterator>
                                    </div>
                                    <!-- 发布二手物品信息 -->
                                    <div id="publish">
                                        <div class="general-info">基本信息</div>
                                        <form method="post" id="releaseForm" action="goodsPost_postFreeGoods.action">
                                            <div class="g-line g-title">
                                                <label class="g-label"> <span class="required">*</span> 物品名称：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" class="input input-large" title="物品名称" name="goodstitle" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写物品名称(少于25个字)</span> <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <div class="g-line g-brand">
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
                                            </div>
                                            <div class="g-line g-new-old">
                                                <label class="g-label"> 新旧程度： </label>
                                                <div class="publish-item-detail">
                                                    <select class="input selector" title="新旧程度" name="goodsneworold">
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
                                                    <input type="text" class="input input-large" title="价格" maxlength="6" name="goodsprice" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" required="required" />
                                                </div>
                                                <span class="g-unit">元</span> <span class="g-span empty">请输入价格</span>
                                                <span class="g-span error">「价格」不符合要求，请输入数字</span> <span class="g-span note">明确价格，快速交易！</span>
                                            </div>
                                            <div class="g-line g-address">
                                                <label class="g-label"> <span class="required">*</span> 地址：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" class="input input-large" title="地址" name="nowaddress" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写地址</span> <span class="g-span note">例：xx大学xx栋xx宿舍</span>
                                            </div>
                                            <div class="g-line g-tel">
                                                <label class="g-label"> <span class="required">*</span> 联系电话：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" class="input input-large" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" title="联系电话" name="goodstelphone" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写联系电话</span> <span class="g-span note">例：手机号132********或者固定电话
												0746-*****75</span>
                                            </div>
                                            <div class="g-line g-details">
                                                <label class="g-label"> <span class="required">*</span> 详情描述：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <textarea class="input textArea" name="goodsdetail" cols="32" style="height: 150px;" maxlength="5000" type="text"></textarea>
                                                </div>
                                                <span class="g-span empty">请填写描述</span> <span class="g-span note">例如：交易方式、交易时间、具体物品信息。</span>
                                            </div>
                                            <div class="g-line g-photo">
                                                <label class="g-label"> <span class="required">*</span> 上传图片：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <div id="file-upload" style="width: 520px; height: 150px;"></div>
                                                </div>
                                                <span class="g-span empty">请选择上传物品照片</span> <span class="g-span note">请上传物品照片</span>
                                            </div>
                                            <p class="g-submit">
                                                <input type="submit" id="release-form-submit" class="form-submit" value="免费发布" />
                                            </p>
                                        </form>
                                    </div>
                                </div>
                            </div>

<!-- ------------------------------------------------------------------------------------ -->

                            <!-- 以物换物模块的发布 -->
                            <div id="panel_swap">
                                <div class="swap-main">
                                    <div class="desc-info">免费，快速，搞得定！</div>
                                    <ul class="flow clearfix sep-big">
                                        <li class="flow-item active">
                                            <label class="i-badge">1</label>
                                            选择类目
                                        </li>
                                        <i class="icon-arrow-right">></i>
                                        <li class="flow-item">
                                            <label class="i-badge">2</label>
                                            填写信息
                                        </li>
                                        <i class="icon-arrow-right">></i>
                                        <li class="flow-item">
                                            <label class="i-badge">3</label>
                                            完成发布
                                        </li>
                                    </ul>
                                    <!-- 二手物品类别信息 -->
                                    <div id="catelogs">
                                     <s:iterator var="species" value="#session.allSpecies">
										<s:if test="#species.parentid==0">
										 <a href="javascript:void(0);" onclick="handOver(this,'<s:property value="#species.speciesid"/>')"><s:property value="#species.speciesname"/></a>
										</s:if>
									</s:iterator>
                                    </div>
                                    <div class="swap-publish">
                                        <div class="general-info">交换物品信息</div>
                                        <form method="post" id="swap-releaseForm" enctype="multipart/form-data" action="swap_postswap.action">
                                            <div class="g-line g-swaptitle">
                                                <label class="g-label">
                                                    <span class="required">*</span> 拥有物品名称：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" class="input input-large" title="物品名称" required="required" name="swaptitle"/>
                                                </div>
                                                <span class="g-span empty">请填写物品名称</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <div class="g-line g-swapneworold">
                                                <label class="g-label">
                                                    <span class="required">*</span> 拥有物品新旧：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <select name="swapneworold" class="input selector" type="text">
                                                        <option>全新</option>
                                                        <option>8成新</option>
                                                        <option>5成新</option>
                                                    </select>
                                                </div>
                                                <span class="g-span empty">请填选择新旧程度</span>
                                                <span class="g-span note"></span>
                                            </div>
                                             <div id="toswapparentid" class="g-line g-brand">
                                                <label class="g-label">类别: </label>
                                                <div class="publish-item-detail">
                                                    <select class="input selector" title="品牌" id="smallspeciesswap" name="speciesid" >
                                                    	<option   selected  value="请选择类别"  ></option>
                                                      <!--   <option value="nokia">诺基亚</option>
                                                        <option value="apple">苹果</option>
                                                        <option value="sumsun">三星</option> -->
                                                        
                                                    </select>
                                                </div>
                                                <span class="g-span error">请选择小类别</span> <span class="g-span note">正确选择品牌，有助于让信息更容易被查找到，让效果更好！</span>
                                            </div>
                                            <input id="toswapparentid" type="hidden" name="parentid" />
                                            <div class="g-line g-swaptelphone">
                                                <label class="g-label">
                                                    <span class="required">*</span> 联系电话：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input name="swaptelphone" type="text" class="input input-large" title="物品名称" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写联系电话</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                           <%--  <div class="g-line g-swapregtime">
                                                <label class="g-label">
                                                    <span class="required">*</span> ：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" class="input input-large" title="物品名称" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写物品名称</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div> --%>
                                            <div class="g-line g-swapimg">
                                                <label class="g-label">
                                                    <span class="required">*</span> 物品图片：
                                                </label>
                                                <div class="publish-item-detail">
                                                
                                                   <!--  <input type="text" class="input input-large" title="物品名称" required="required" /> -->
                                                    <input  type="file"  name="swapfile"  id="goodsimg" onchange="javascript:setImagePreview();" />
                           					 <div id="localImag"><img id="previewimg" width=-1  height=-1  style="diplay:none"  /></div>
                              <!--  这里的js用来显示上传的图片预览效果 -->
                              <script type="text/javascript">
                              function setImagePreview() {
                                  var docObj=document.getElementById("goodsimg");
                           
                                  var imgObjPreview=document.getElementById("previewimg");
                                          if(docObj.files &&    docObj.files[0]){
                                                  //火狐下，直接设img属性
                                                  imgObjPreview.style.display = 'block';
                                                  imgObjPreview.style.width = '200px';
                                                  imgObjPreview.style.height = '200px';                    
                                                  //imgObjPreview.src = docObj.files[0].getAsDataURL();

                                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
                                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);

                                          }else{
                                                  //IE下，使用滤镜
                                                  docObj.select();
                                                  var imgSrc = document.selection.createRange().text;
                                                  var localImagId = document.getElementById("localImag");
                                                  //必须设置初始大小
                                                  localImagId.style.width = "300px";
                                                  localImagId.style.height = "120px";
                                                  //图片异常的捕捉，防止用户修改后缀来伪造图片
                          try{
                                                          localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                                                          localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                                                  }catch(e){
                                                          alert("您上传的图片格式不正确，请重新选择!");
                                                          return false;
                                                  }
                                                  imgObjPreview.style.display = 'none';
                                                  document.selection.empty();
                                          }
                                          return true;
                                  }
                              </script>
                                                </div>
                                                <span class="g-span empty">请上传物品图片</span>
                                                <span class="g-span note"></span>
                                            </div>
                                            <div class="g-line g-swapdetail">
                                                <label class="g-label">
                                                    <span class="required">*</span> 拥有物品描述：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <textarea class="input textArea" name="swapdetail" required="required" cols="49" style="height:115px;" maxlength="5000" type="text"></textarea>
                                                </div>
                                                <span class="g-span empty">请填写物品描述</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <div class="g-line g-swaparea">
                                                <label class="g-label">
                                                    <span class="required">*</span> 地址：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" name="swaparea" class="input input-large" title="物品名称" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写地址</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <div class="g-line g-swapaim">
                                                <label class="g-label">
                                                    <span class="required">*</span> 目标交换物品：
                                                </label>
                                                <div class="publish-item-detail">
                                                    <input type="text" name="swapaim" class="input input-large" title="物品名称" required="required" />
                                                </div>
                                                <span class="g-span empty">请填写目标交换物品</span>
                                                <span class="g-span note">例：青春靓丽小雨伞</span>
                                            </div>
                                            <p class="g-submit">
                                                <input id="release-form-submit" class="form-submit" type="submit" value="免费发布">
                                            </p>
                                        </form>
                                    </div>
                                </div>
                                <div class="div-assess">
                                    <a href="#0" class="cd-popup-trigger">价值评估</a>

                                    <div class="cd-popup" role="alert">
                                        <div class="cd-popup-container">
                                            <div class="container">
                                                <div class="remain-text">请如实勾选以下选项，以获得最准确的报价！</div>
                                                <div class="property-body">
                                                    <input type="hidden" name="ids[]" data="0" id="id25900" value="" />
                                                    <dl>
                                                        <dt class="property-title">
                                                <span class="square"></span>
                                                <h3>购买渠道</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li class="span258992 checked" data="258992,258993" title="" data-placement="top" data-toggle="tooltip" data-id="258993" data-original-title="有“进网许可”标签">
                                                                    <span class="property_value">大陆国行</span>
                                                                    <span class="spanend gou"></span>
                                                                </li>
                                                                <li class="span258992" data="258992,258994" title="" data-placement="top" data-toggle="tooltip" data-id="258994" data-original-title="香港购买，全球联保">
                                                                    <span class="property_value">香港行货</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li class="span258992" data="258992,258995" title="" data-placement="top" data-toggle="tooltip" data-id="258995" data-original-title="日/韩/美等非特殊机，需要“卡贴”解锁">
                                                                    <span class="property_value">水货有锁</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li class="span258992" data="258992,258996" title="" data-placement="top" data-toggle="tooltip" data-id="258996" data-original-title="非国行/港行，其他国家">
                                                                    <span class="property_value">水货无锁</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <dl>
                                                        <dt class="property_title first">
                                                <span class="square"></span>
                                                <h3>版本</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258998" class="span258997" data-toggle="tooltip" data-placement="top" title="" data="258997,258998">
                                                                    <span class="property_value">移动版</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258999" class="span258997" data-toggle="tooltip" data-placement="top" title="" data="258997,258999">
                                                                    <span class="property_value">联通版</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258999" class="span258997" data-toggle="tooltip" data-placement="top" title="" data="258997,258999">
                                                                    <span class="property_value">电信版</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id259000" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <span class="square"></span>
                                                <h3>存储容量</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="259001" class="span259000" data-toggle="tooltip" data-placement="top" title="" data="259000,259001">
                                                                    <span class="property_value">16G</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="259002" class="span259000" data-toggle="tooltip" data-placement="top" title="" data="259000,259002">
                                                                    <span class="property_value">64G</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="259003" class="span259000" data-toggle="tooltip" data-placement="top" title="" data="259000,259003">
                                                                    <span class="property_value">128G</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id259004" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <div class="square">
                                                    <span class="gou2"></span>
                                                </div>
                                                <h3>颜色</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="259005" class="span259004" data-toggle="tooltip" data-placement="top" title="" data="259004,259005">
                                                                    <span class="property_value">金色</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="259006" class="span259004" data-toggle="tooltip" data-placement="top" title="" data="259004,259006">
                                                                    <span class="property_value">白色</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="259007" class="span259004" data-toggle="tooltip" data-placement="top" title="" data="259004,259007">
                                                                    <span class="property_value">黑色</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258965" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <span class="square"></span>
                                                <h3>开机情况</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258966" class="span258965" data-toggle="tooltip" data-placement="top" title="" data="258965,258966">
                                                                    <span class="property_value">正常开机</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258967" class="span258965" data-toggle="tooltip" data-placement="top" title="开机无反应，连接电脑、充电器等外置USB接口无任何反应，屏幕不亮。" data="258965,258967">
                                                                    <span class="property_value">无法开机</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258968" class="span258965" data-toggle="tooltip" data-placement="top" title="开机出现重启、死机、定屏、发烫、无法进入桌面等现象" data="258965,258968">
                                                                    <span class="property_value">无法正常开机使用</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258986" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <div class="square">
                                                    <span class="gou2"></span>
                                                </div>
                                                <h3>新旧程度</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258987" class="span258986" data-toggle="tooltip" data-placement="top" title="未开封或仅打开过包装，机器未激活，配件齐全未使用" data="258986,258987">
                                                                    <span class="property_value">全新</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258988" class="span258986" data-toggle="tooltip" data-placement="top" title="边框外壳完好无划痕磨损、无磕碰" data="258986,258988">
                                                                    <span class="property_value">外壳完好</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258989" class="span258986" data-toggle="tooltip" data-placement="top" title="边框外壳有轻微划痕或轻微磨损" data="258986,258989">
                                                                    <span class="property_value">外壳有划痕或磨损</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258990" class="span258986" data-toggle="tooltip" data-placement="top" title="边框外壳有磕碰或出现掉漆现象" data="258986,258990">
                                                                    <span class="property_value">外壳有磕碰或掉漆</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258991" class="span258986" data-toggle="tooltip" data-placement="top" title="" data="258986,258991">
                                                                    <span class="property_value">外壳有裂痕或破损</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258982" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <span class="square"></span>
                                                <h3>功能状况</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258983" class="span258982" data-toggle="tooltip" data-placement="top" title="没有出现任何故障" data="258982,258983">
                                                                    <span class="property_value">无故障</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258984" class="span258982" data-toggle="tooltip" data-placement="top" title="按键、声音、接口、卡槽、震动、屏幕进灰等出现不正常现象" data="258982,258984">
                                                                    <span class="property_value">小故障</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258985" class="span258982" data-toggle="tooltip" data-placement="top" title="通话、照相、wifi、蓝牙、信号、感光、无法充电、机身变形、进过水/受潮、指纹功能、iCloud无法注销等不正常情况" data="258982,258985">
                                                                    <span class="property_value">大故障</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258969" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <div class="square">
                                                    <span class="gou2"></span>
                                                </div>
                                                <h3>触摸及功能</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258970" class="span258969" data-toggle="tooltip" data-placement="top" title="" data="258969,258970">
                                                                    <span class="property_value">触摸功能正常</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258971" class="span258969" data-toggle="tooltip" data-placement="top" title="屏幕有划痕或印记" data="258969,258971">
                                                                    <span class="property_value">触摸屏有划痕</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258972" class="span258969" data-toggle="tooltip" data-placement="top" title="屏幕外屏损坏，内部液晶屏未损坏。或者触摸功能失灵" data="258969,258972">
                                                                    <span class="property_value">触摸屏损坏或失灵</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258973" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <span class="square"></span>
                                                <h3>液晶显示</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258974" class="span258973" data-toggle="tooltip" data-placement="top" title="" data="258973,258974">
                                                                    <span class="property_value">正常</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258975" class="span258973" data-toggle="tooltip" data-placement="top" title="纯色背景下显示有斑点，颜色有深浅、彩线、显示错乱等" data="258973,258975">
                                                                    <span class="property_value">不正常</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258976" class="span258973" data-toggle="tooltip" data-placement="top" title="液晶屏损坏无法显示" data="258973,258976">
                                                                    <span class="property_value">不显示</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                    <input type="hidden" name="ids[]" data="0" id="id258977" value="" />
                                                    <dl>
                                                        <dt class="property_title first">
                                                <div class="square">
                                                    <span class="gou2"></span>
                                                </div>
                                                <h3>维修拆机史</h3>
                                            </dt>
                                                        <dd class="first">
                                                            <ul>
                                                                <li data-id="258978" class="span258977" data-toggle="tooltip" data-placement="top" title="" data="258977,258978">
                                                                    <span class="property_value">无拆机无修理</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258979" class="span258977" data-toggle="tooltip" data-placement="top" title="拆过机器但没有维修过" data="258977,258979">
                                                                    <span class="property_value">有拆机但未维修</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258980" class="span258977" data-toggle="tooltip" data-placement="top" title="有拆机维修听筒、话筒、、主板、接口、更换屏幕等" data="258977,258980">
                                                                    <span class="property_value">拆机维修过</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                                <li data-id="258981" class="span258977" data-toggle="tooltip" data-placement="top" title="内部缺损，无法使用" data="258977,258981">
                                                                    <span class="property_value">报废</span>
                                                                    <span class="spanend"></span>
                                                                </li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>

                                            <ul class="cd-buttons">
                                                <li>
                                                    <a href="javascript:void(0)" onclick="confirm()">确定</a>
                                                </li>
                                            </ul>
                                            <a href="#" class="cd-popup-close img-replace">Close</a>
                                            </form>
                                        </div>
                                        <!-- cd-popup-container -->
                                    </div>
                                    <!-- cd-popup -->
                                    <script src="js/assess.js"></script>
                                </div>
                            </div>

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

