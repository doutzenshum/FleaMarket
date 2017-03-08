var xmlHttp;
function createXMLHttpRequest() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
function validate() {
	var username = document.getElementById("username").value;
	var url = "UserServlet.action?op=check&username=" + escape(username);
	createXMLHttpRequest();
	xmlHttp.onreadystatechange = handleStateChange;
	xmlHttp.open("GET", url);
	xmlHttp.send(null);
	
}
function handleStateChange() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var pass = xmlHttp.responseXML.getElementsByTagName("pass")[0].firstChild.data;
			var message = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
			if (pass === "false") {
				color = "green";
				
				//document.getElementById("numberMessage").innerHTML = "<font color='red'>"
				//		+ message + " </font>";
				$("#username").parent().find(".invalid").children(".msg").html("用戶名已经存在");	
				$("#username").parent().find(".invalid").css("display","block");
				$("#username").parent().find(".valid").css("display","none");
				$("#username").parent().attr("class","textbox_ui error_ui");
				
			} else {
				document.getElementById("numberMessage").innerHTML = "";
				
			}
		}
	}
}
