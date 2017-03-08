$(function(){
    //open popup
    $('.cd-popup-trigger').on('click', function (event) {
        event.preventDefault();
        $('.cd-popup').addClass('is-visible');
    });

    //close popup
    $('.cd-popup').on('click', function (event) {
        if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup')) {
            event.preventDefault();
            $(this).removeClass('is-visible');
        }
    });
    //close popup when clicking the esc keyboard button
    $(document).keyup(function (event) {
        if (event.which == '27') {
            $('.cd-popup').removeClass('is-visible');
        }
    });
    
    

});

/* 价值评估封装数据对象  map<title, value> */
var choose = {
    map: [{
        title: "",
        value: ""
    }],
    getProperties: function (title, value) {
        if (arguments.length < 2) {
            //TODO:异常处理
            return;
        }
        choose.map.push({
            title: title,
            value: value
        });
    },
    toString: function () {
        var str = "";
        for (var i = 1; i < choose.map.length; i++) {
            str += choose.map[i].title + "\t" + choose.map[i].value + "\t";
        }
        return str;
    }
};



$(".property_value").on("click", function () {
    var dl = $(this).parents("dl").find("h3");
    var title = dl.html();
    var value = $(this).html();
    //更改界面样式
    var dl = $(this).parents("dl");
    var li = dl.find("li");
    var reg = new RegExp("checked");
    $.each(li, function (i, item) {
        var className = $(this).prop("className");
        if (reg.test(className)) {
            $(this).removeClass("checked");
        }
    });
    $(this).parents("li").addClass("checked");
    //判断map中的大标题是否已经做了选择
    for (var i = 0; i < choose.map.length; i++) {
        if (choose.map[i].title == title) {
            //已经选择了，想改选的话直接更改map中的value
            choose.map[i].value = value;
            //alert(choose.toString());
            return;
        }
    }
    choose.getProperties(title, value);
    //alert(choose.toString());
});

$(".property_value").hover(   function () {
    var parentLi = $(this).parents("li");
    var title = parentLi.prop("title");
    var className = parentLi.prop("className");
    if (title == '') {
        return;
    }
    tips = layer.tips(title, this, {
        tips: [1, '#0FA6D8'] //还可配置颜色   
    });
});
function confirm() {
    //TODO:检测是否全部选完
    var length = $(".property-body > dl").size();
    var tipMessage = "";
    if (choose.map == null || choose.map.length < length) {
        tipMessage = '请选择完所有的评估并输入数量后再提交哦!';
        layer.msg(tipMessage);
    }
};
