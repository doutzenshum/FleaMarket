$(document).ready(function() {
		$('.menu li a').each(function() {
			if ($($(this))[0].href == String(window.location))
				$(this).parent().addClass('active');
		});
});

	var ws = null;
	var paramObj;
	var userParam;
	var ip = returnCitySN["cip"];
    
	function startServer() {
		// 设定WebSocket,注意协议是ws，请求是指向对应的WebSocketServlet的
		var url = "ws://localhost:8080/SecondHandInfo/echo.ws";
		// 创建WebSocket实例，下面那个MozWebSocket是Firefox的实现
		if ('WebSocket' in window) {   
			ws = new WebSocket(url);
		} else if ('MozWebSocket' in window) {
			ws = new MozWebSocket(url);
		} else {
			alert('Unsupported.');
			return;
		}

		// WebSocket握手完成，连接成功的回调
		// 有个疑问，按理说new WebSocket的时候就会开始连接了，如果在设置onopen以前连接成功，是否还会触发这个回调
		ws.onopen = function() {
			//alert('Opened!');
		};

		// 收到服务器发送的文本消息, event.data表示文本内容
		ws.onmessage = function(event) {
			//TODO: 处理返回数据
			//TODO: 聊天信息保存至cookie
			var chatbox = $('#layim_chatbox');
			var str = event.data;
			userParam = {
				type : str.split("^")[3],
				id : str.split("^")[2],
				toAppendStr : str.split("^")[4],
				name : str.split("^")[1],
				headimg : str.split("^")[0],
				time : 1
			};
			paramObj = {
				type : userParam.type,
				id : userParam.id,
				name : userParam.name,
				url : "",
				face : 'images/userimg/' + userParam.headimg
			};
			if (chatbox[0]) {
				//表示聊天窗口已经打开
				var curChatName = $(".layim_names").text();
				if(paramObj.name != curChatName){
					//如果当前聊天人的名字和收到信息的名字不相同
					$('#layim_min').text(userParam.name).show('slow');
					return;
				}
				$('#layim_min').hide('slow');
				chatbox.parents('.xubox_layer').show('slow');
				var keys = userParam.type+userParam.id;
				var area = $('#layim_area'+keys);
				
				area.append(userParam.toAppendStr);
				area.scrollTop(area[0].scrollHeight);
			} else {
				//还没打开也有两种情况，只需要做下判断。看layim_min是否是隐藏的。
				var l_min = $('.layim_min');
				if(  l_min.css("display") == "none"){
					//1. 只有一个人的信息
					$('#layim_min').text(userParam.name).show('slow');
					chatbox.parents('.xubox_layer').hide('slow');
				}else{
					//2. 有两个或两个以上的信息，都没打开
					var str = '<div class="layim_min" style="display: block;">'+paramObj.name+'</div>';
					$('.xxim_bottom').append(str);
				}
			}
		};

		// 关闭WebSocket的回调
		ws.onclose = function() {
			//alert('Closed!'); 
			
		};
	}

	function sendMyMessage() {
		var currentUserid = '';
        var currentUser;
		$.ajax({
			type : 'post',
			url : 'chat_getUserFromSession.action',
			success : function(data) {
				console.info(data);
				if (data != null) {
					currentUserid = data.userid;
                    currentUser = data;
				} else {
					currentUserid = "";
                    currentUser = null;
				}
			},
		});

		var toChatUsername = $('.layim_names').html();
		var toChatUserid = $('.layim_chatnow').attr('data-id');
		if (!toChatUserid) {
			toChatUserid = $('xxim_nowchat').attr('data-id');
		}
		var type = $('.layim_chatnow').attr('type');
		if (!type) {
			type = $('xxim_nowchat').attr('type');
		}
		var textMessage = $('#layim_write').val();

		if (ws != null && textMessage != '') {
			// 通过WebSocket想向服务器发送一个文本信息
			ws.send(textMessage + '---' + toChatUserid + '===' + type);
		
		}
	}
	