<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>
<%@ include file="header.jsp"%>
<!-- 这个js函数是 对主页的除了广告位的数据的读取-->
<script type="text/javascript" src="./js/pagejs/index_page.js"></script>
<div class="header_slide">
	<div class="header_bottom_left">
		<div class="categories">
			<ul class="specieslist">
				<h3 >热门分类</h3>
				
			</ul>
		</div>
	</div>
	<div class="header_bottom_right">
		<div class="slider">
			<div id="slider">
				<div id="mover">
					<div id="slide-1" class="slide">
						<div class="slider-img">
							<a href="showgoodsid_goods.action?goodsid=30"><img
								src="./images/slide-1-image.png" alt="learn more" /></a>
						</div>
						<div class="slider-text">
							<h1>
								九成新<br>
								<span>吐血<br />大甩卖
								</span>
							</h1>
							<h2>折价20%</h2>
							<div class="features_list">
								<h4>国际名牌，品质保证，你值得拥有</h4>
							</div>
							<a href="showgoodsid_goods.action?goodsid=30" class="button">立即购买</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="slide">
						<div class="slider-text">
							<h1>
								九成新<br>
								<span>超低<br />价处理
								</span>
							</h1>
							<h2>折价 40% OFF</h2>
							<div class="features_list"></div>
							<a href="showgoodsid_goods.action?goodsid=32" class="button">立即去看</a>
						</div>
						<div class="slider-img">
							<a href="showgoodsid_goods.action?goodsid=32"><img
								src="./images/slide-3-image.jpg" alt="learn more" /></a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="slide">
						<div class="slider-img">
							<a href="showgoodsid_goods.action?goodsid=31"><img
								src="./images/slide-2-image.jpg" alt="learn more" /></a>
						</div>
						<div class="slider-text">
							<h1>
								九成新<br>
								<span>毕业<br />甩卖
								</span>
							</h1>
							<h2>折价 10% OFF</h2>
							<div class="features_list"></div>
							<a href="showgoodsid_goods.action?goodsid=31" class="button">立即去看</a>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
</div>
<div class="main">
	<div class="content">
		<div class="content_top">
			<div class="heading">
				<h3>上架新品</h3>
			</div>
			<div class="see">
				<p>
					<a href="showSpeciesGoods_goods.action?speciesid=0">查看所有商品</a>
				</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group" id="indexnewgoods">

			<!-- <div class="grid_1_of_4 images_1_of_4">
				<a href="smallspecies.jsp"><img
					src="./images/goods/20150727193522.jpg" alt="" /></a>
				<h2>狗</h2>
				<div class="price-details">
					<div class="price-number">
						<p>
							<span class="rupees">￥148</span>
						</p>
					</div>
					<div class="add-cart">
						<h4>
							<a href="smallspecies.jsp">瞅瞅</a>
						</h4>
					</div>
					<div class="clear">非全新</div>
				</div>
			</div>
 -->
			
		</div>
		<div class="content_bottom">
			<div class="heading">
				<h3>推荐商品</h3>
			</div>
			<div class="see">
				<p>
					<a href="showSpeciesGoods_goods.action?speciesid=0">查看所有商品</a>
				</p>
			</div>
			<div class="clear"></div>
			<div class="section group" id="recommandGoods">

				
				<!-- <div class="grid_1_of_4 images_1_of_4">
					<a href="smallspecies.jsp"><img
						src="./images/goods/bijiben6.png" alt="" /></a>
					<h2>苹果笔记本</h2>
					<div class="price-details">
						<div class="price-number">
							<p>
								<span class="rupees">￥3800</span>
							</p>
						</div>
						<div class="add-cart">
							<h4>
								<a href="smallspecies.jsp">瞅瞅</a>
							</h4>
						</div>
						<div class="clear">全新</div>
					</div>
				</div>

				<div class="grid_1_of_4 images_1_of_4">
					<a href="smallspecies.jsp"><img
						src="./images/goods/bijiben5.png" alt="" /></a>
					<h2>笔记本</h2>
					<div class="price-details">
						<div class="price-number">
							<p>
								<span class="rupees">￥2400</span>
							</p>
						</div>
						<div class="add-cart">
							<h4>
								<a href="smallspecies.jsp">瞅瞅</a>
							</h4>
						</div>
						<div class="clear">全新</div>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	$(function(){
		
		
	});
</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>


