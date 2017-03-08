$(function(){
    // 初始化插件
	$("#file-upload").zyUpload({
		width            :   "520px",                 // 宽度
		height           :   "150px",                 // 宽度
		itemWidth        :   "120px",                 // 文件项的宽度
		itemHeight       :   "100px",                 // 文件项的高度
		url              :   "",  // 上传文件的路径
		multiple         :   true,                    // 是否可以多个文件上传
		dragDrop         :   false,                    // 是否可以拖动上传文件
		del              :   true,                    // 是否可以删除文件
		finishDel        :   false,  				  // 是否在上传文件完成后删除预览
		/* 外部获得的回调接口 */
		/*onSelect: function(files, allFiles){                    // 选择文件的回调方法
			console.info("当前选择了以下文件：");
			console.info(files);
			
			console.info("之前没上传的文件：");
			console.info(allFiles);
		},
		onDelete: function(file, surplusFiles){                     // 删除一个文件的回调方法
			console.info("当前删除了此文件：");
			console.info(file);
			console.info("当前剩余的文件：");
			console.info(surplusFiles);
		},
		onSuccess: function(file){                    // 文件上传成功的回调方法
			console.info("此文件上传成功：");
			console.info(file);
		},
		onFailure: function(file){                    // 文件上传失败的回调方法
			console.info("此文件上传失败：");
			console.info(file);
		},
		onComplete: function(responseInfo){           // 上传完成的回调方法
			console.info("文件上传完成");
			console.info(responseInfo);
		}*/
	});
    //文本框提示
    $(".input").on({
        blur:function(){
            var reg = new RegExp("/^[0-9]+\.{0,1}[0-9]{0,2}$/g");
            if( $(this).parents(".g-line").hasClass("focus")){
                $(this).parents(".g-line").removeClass("focus");
            }
            if($(this).val() == null || $(this).val() == ''){
                $(this).parents(".g-line").addClass("error-empty");
                $(this).parents(".g-line").find("span.empty").show();
                return;
            }
            if($(this).attr("name")=="价格"){
                if($(this).val().match(reg)!=null){
                    //表示没匹配到，也就是说输入不是数字
                    $(this).parents(".g-line").find("span.error").show();   
                }
            }
           $(this).parents(".g-line").find("span.note").hide();
        }, focus:function(){
            if($(this).parents(".g-line").hasClass("error-empty")){
                $(this).parents(".g-line").removeClass("error-empty");   
            }            
            $(this).parents(".g-line").addClass("focus");
            $(this).parents(".g-line").find("span.note").show();
            $(this).parents(".g-line").find("span.error").hide();
            $(this).parents(".g-line").find("span.empty").hide();
        }
    });
    //提示信息
    $(".g-line").on({
        mouseenter:function(){
            var gl = $(this);
            var input = gl.find(".input");
            if(gl.hasClass("error-empty")){
                gl.find("span.note").hide();   
                return;
            }
            gl.find("span.note").show();
        }, mouseleave:function(){
            $(this).find("span.note").hide();
        }
    });
    //提交表单
    $("#release-form-submit").bind("click", function(){
        
        $(".input").each(function(i){
            if($(this).attr("required") != null && $(this).attr("required") == "required") {
                if($(this).val() == null || $(this).val() == ''){
                       $(this).parents("div.g-line").addClass("error-empty");
                       $(this).parents("div.g-line").find("span.empty").show();
                }
            }
        });
        if($("#preview").html()==null ||$("#preview").html()==undefined){
               $("#preview").parents(".g-line").find("span.empty").show();
        }
        info.generalInfo.name = $("#release-form .g-title .input").val();
        info.generalInfo.brand = $("#release-form .g-brand .input").val();
        info.generalInfo.condition = $("#release-form .g-new-old .input").val();
        info.generalInfo.price = $("#release-form .g-price .input").val();
        info.generalInfo.tel = $("#release-form .g-tel .input").val();
        info.generalInfo.details = $("#release-form .g-details .input").val();
        info.generalInfo.address = $("#release-form .g-address .input").val();
        console.info(info);
        $.post(url, info, function(data){
            data = $.trim(data);
            $("ul.flow > li:eq(1)").removeClass("active");
            $("ul.flow > li:eq(2)").addClass("active");
        });
    });
    $("#catelogs > a").on("click", function(){
        $("ul.flow > li:eq(0)").removeClass("active");
        $("ul.flow > li:eq(1)").addClass("active");
    });
    
});


var url = "";                       //请求地址 	
//封装好的数据对象
var info = {
    catalog         : "",           //类别信息
    generalInfo     : {             //物品基本信息
        name        : "",           //物品名称
        brand       : "",           //品牌
        condition   : "",           //新旧程度
        price       : "",           //价格
        tel         : "",           //联系电话
        details     : "",           //详细信息
        address     : "",           //地址
        photoes     : {             //图片
            
        }
    }
};

var goPre = function(obj){
    var li = '<li class="flow-item"><label class="i-badge">1</label>选择类目</li>';
    console.info($(obj).html());
    var className = $(obj).parents(".flow").parent().prop("class");
    if(  className == 'wrap'  ){
        $('#publish').hide();
        $(obj).parent().replaceWith(li);
        $('.wrap > #catelogs').show();
    }else if( className == 'swap-main'){
        $('.swap-pubish').hide();
        $(obj).parent().replaceWith(li);
        $('.swap-main > #catelogs').show();
        $('.swap-main .swap-publish').hide();
    }
}
//点击第一个大分类的函数
var handOver = function(obj,speciesid){
    var preStep = '<li class="flow-item"><label class="i-badge">1</label>选择类目 (<a href="javascript:void(0)" onclick="goPre(this);">重新选择</a>)</li>';   
    var className = $(obj).parents('#catelogs').parent().prop('class');
    console.info(className);
    var reg = new RegExp("手机");
    if( className == 'swap-main'){
        $(".swap-main").find(".i-badge").each(function(i){
            if($(this).text() == 1|| $(this).text() == '1'){
                $(this).parent().replaceWith(preStep);
            }
        });
        if(reg.test($(obj).text())){
            $(".div-assess").show();   
        }
    }else{
        $(".wrap").find(".i-badge").each(function(i){
            if($(this).text() == 1 || $(this).text() == '1'){
                $(this).parent().replaceWith(preStep);
            }
        });                                    
    }
    info.catalog = $(obj).html();
    //点击分类后的切换事件
    if( $(obj).parents("#catelogs").parent().prop('class') == 'swap-main'){
        $(obj).parents("#catelogs").hide();
        $('.swap-publish').show();
        $.ajax({ 
    		url: "showsmallspecies_species.action", 
    		dataType:"json",
    		data:{"speciesid":speciesid},
    		success: function(data){
    				 $("#smallspeciesswap").empty();
    				 $.each(data.speciesList, function(i, item) {
    			            $("#smallspeciesswap").append(
    			            	 "<option value='"+item.speciesid+"'>"+item.speciesname+"</option>"
    			            );
    			           
    			     });
    				 $("#toswapparentid").val(data.speciesList[0].parentid); 
    		}
    	});	
    }else{
    	$.ajax({ 
    		url: "showsmallspecies_species.action", 
    		dataType:"json",
    		data:{"speciesid":speciesid},
    		success: function(data){
    				 $("#smallspecies").empty();
    				 $.each(data.speciesList, function(i, item) {
    			            $("#smallspecies").append(
    			            	 "<option value='"+item.speciesid+"'>"+item.speciesname+"</option>"
    			            );
    			     });
    				 $("#toparentid").val(data.speciesList[0].parentid);
    		}
    	});	
        $(obj).parents("#catelogs").hide();
        $("#publish").show();
    }
};
function toassess(){
	var result=confirm("检测到你选择的是手机，是否需要网站帮你设计您的手机价格呢？")
	if(result==true){
		alert("价值评估按钮");
	}else{
		
		
	}
	
	
}
/*var handOverswap = function(obj,speciesid){
    var preStep = '<li class="flow-item"><label class="i-badge">1</label>选择类目 (<a href="javascript:void(0)" onclick="goPre(this);">重新选择</a>)</li>';   
    var className = $(obj).parents('#catelogs').parent().prop('class');
    console.info(className);
    var reg = new RegExp("手机");
    if( className == 'swap-main'){
        $(".swap-main").find(".i-badge").each(function(i){
            if($(this).text() == 1|| $(this).text() == '1'){
                $(this).parent().replaceWith(preStep);
            }
        });
        if(reg.test($(obj).text())){
            $(".div-assess").show();   
        }
    }else{
        $(".wrap").find(".i-badge").each(function(i){
            if($(this).text() == 1 || $(this).text() == '1'){
                $(this).parent().replaceWith(preStep);
            }
        });                                    
    }
    info.catalog = $(obj).html();
    //点击分类后的切换事件
    if( $(obj).parents("#catelogs").parent().prop('class') == 'swap-main'){
        $(obj).parents("#catelogs").hide();
        $('.swap-publish').show();
    }else{
    	$.ajax({ 
    		url: "showsmallspecies_species.action", 
    		dataType:"json",
    		data:{"speciesid":speciesid},
    		success: function(data){
    				 $("#smallspeciesswap").empty();
    				 $.each(data.speciesList, function(i, item) {
    			            $("#smallspeciesswap").append(
    			            	 "<option value='"+item.speciesid+"'>"+item.speciesname+"</option>"
    			            );
    			           
    			     });
    				 $("#toswapparentid").val(data.speciesList[0].parentid); 
    		}
    	});	
        $(obj).parents("#catelogs").hide();
        $("#publish").show();
    }
};*/



