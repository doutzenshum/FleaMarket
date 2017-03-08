$(function(){

	//热门分类
	$.post("showAllSpecies_species.action",function(json){
		var obj=$.parseJSON(json);
		for( var i=0;i<obj.length;i++){
			//obj是json数组     [{},{}]
			var o=obj[i];
			$(".specieslist").append(
					"<li><a href='showSpeciesGoods_goods.action?speciesid="+o.speciesid+"'>"
					+ o.speciesname    + "</a></li>")
		}
	});
	
	//上架
	$.post("showIndexGoods_goods.action",function(json){
		var obj=$.parseJSON(json);
		$("#indexnewgoods").html("");
		for( var i=0;i<obj.length;i++){
			//obj是json数组     [{},{}]
			var o=obj[i];
			$("#indexnewgoods").append(
					" <div class='grid_1_of_4 images_1_of_4'>"+
					"<a href='showgoodsid_goods.action?goodsid="+o.goodsid+"'><img "+
					"src='./images/goods/"+o.goodsimg+"' alt='图片无法显示哦' /></a>"+
					"<h2>"+o.goodstitle+"</h2>"+
					"<div class='price-details'>"+
					"<div class='price-number'>"+
					"<p>"+
					"<span class='rupees'>￥"+o.goodsprice+"</span>"+
					"</p>"+
					"</div>"+
					"<div class='add-cart'>"+
					"<h4>"+
					"<a href='showgoodsid_goods.action?goodsid="+o.goodsid+"'>瞅瞅</a>"+
					"</h4>"+
					"</div>"+
					"<div class='clear'>"+o.goodsneworold+"</div>"+
					"</div>"+
			"</div>")
		}
	});

	//推荐
	$.post("showRecommandGoods_goods.action",function(json){
		var obj=$.parseJSON(json);
		$("#recommandGoods").html("");
		//obj是json数组     [{},{}]
		for( var i=0;i<obj.length;i++){
			var o=obj[i];
			$("#recommandGoods").append(
					"  <div class='grid_1_of_4 images_1_of_4'>"+
					"<a href='showgoodsid_goods.action?goodsid="+o.goodsid+"'><img "+
					"src='./images/goods/"+o.goodsimg+"' alt='图片无法显示哦' /></a>"+
					"<h2>"+o.goodstitle+"</h2>"+
					"<div class='price-details'>"+
					"<div class='price-number'>"+
					"<p>"+
					"<span class='rupees'>￥"+o.goodsprice+"</span>"+
					"</p>"+
					"</div>"+
					"<div class='add-cart'>"+
					"<h4>"+
					"<a href='showgoodsid_goods.action?goodsid="+o.goodsid+"'>瞅瞅</a>"+
					"</h4>"+
					"</div>"+
					"<div class='clear'>"+o.goodsneworold+"</div>"+
					"</div>"+
			"</div>")
		}
	});


});

