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
// 留言的ajax
function leaveMessage(nowuserid, goodsid) {
	var topicdetail = document.getElementById("leaveamessage").value;
	if ("".equal(topicdetail)||topicdetail==null) {
		alert("你未登录，请登录!");
	}else if(nowuserid==null){
		alert("内容不能为空!");
	}else {
		/*$.ajax({
			url : "showRecommandGoods_goods.action",
			dataType : "json",
			data:{"userid":nowuserid,"goodsid":goodsid,"topicdetail":topicdetail},
			success : function(data) {
				$("#comment_total").text("共有"+data.total+"条评论");
				$.each(data.list, function(i, item) {
					$("#coment_detail").append(
							"<div class='coment-text'>"+
							"<span>"+item.topicdetail+"</span>"+
							"<div>"+
								"<font size='2' color='#666666'>"+item.topictime+"<a href='#' style='display: none'>&nbsp;&nbsp;&nbsp;回复</a>"+
								"</font></div></div>"
					)
				});
			}
		});*/
	}
}
$.ajax({
	url : "showRecommandGoods_goods.action",
	dataType : "json",
	success : function(data) {
		$.each(data.list, function(i, item) {
			$("#recommandGoods").append(
					" <div class='grid_1_of_4 images_1_of_4'>"
							+ "<a href='smallspecies.jsp'><img "
							+ "src='./images/goods/"
							+ item.goodsimg
							+ "' alt='图片无法显示哦' /></a>"
							+ "<h2>"
							+ item.goodstitle
							+ "</h2>"
							+ "<div class='price-details'>"
							+ "<div class='price-number'>"
							+ "<p>"
							+ "<span class='rupees'>￥"
							+ item.goodsprice
							+ "</span>"
							+ "</p>"
							+ "</div>"
							+ "<div class='add-cart'>"
							+ "<h4>"
							+ "<a href='smallspecies.jsp'>瞅瞅</a>"
							+ "</h4>"
							+ "</div>"
							+ "<div class='clear'>"
							+ item.goodsneworold
							+ "</div>"
							+ "</div>"
							+ "</div>");
		});
	}

});


$.extend({
    /**  
     1. 设置cookie的值，把name变量的值设为value    
    example $.cookie(’name’, ‘value’); 
     2.新建一个cookie 包括有效期 路径 域名等 
    example $.cookie(’name’, ‘value’, {expires: 7, path: ‘/’, domain: ‘jquery.com’, secure: true}); 
    3.新建cookie 
    example $.cookie(’name’, ‘value’); 
    4.删除一个cookie 
    example $.cookie(’name’, null); 
    5.取一个cookie(name)值给myvar 
    var account= $.cookie('name'); 
    **/
    cookieHelper: function (name, value, options) {
        if (typeof value != 'undefined') { // name and value given, set cookie 
            options = options || {};
            if (value === null) {
                value = '';
                options.expires = -1;
            }
            var expires = '';
            if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
                var date;
                if (typeof options.expires == 'number') {
                    date = new Date();
                    date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
                } else {
                    date = options.expires;
                }
                expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE 
            }
            var path = options.path ? '; path=' + options.path : '';
            var domain = options.domain ? '; domain=' + options.domain : '';
            var secure = options.secure ? '; secure' : '';
            document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
        } else { // only name given, get cookie 
            var cookieValue = null;
            if (document.cookie && document.cookie != '') {
                var cookies = document.cookie.split(';');
                for (var i = 0; i < cookies.length; i++) {
                    var cookie = jQuery.trim(cookies[i]);
                    // Does this cookie string begin with the name we want? 
                    if (cookie.substring(0, name.length + 1) == (name + '=')) {
                        cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                        break;
                    }
                }
            }
            return cookieValue;
        }
    }

});

// 对Date的扩展，将 Date 转化为指定格式的String
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
// 例子： 
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
Date.prototype.Format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "h+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}