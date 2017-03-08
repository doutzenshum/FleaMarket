	var xmlHttp;
	//创建了一个HttpREquest对象
function createXMLHttpRequest() {
    if (window.XMLHttpRequest) { // 如果可以取得XMLHttpRequest
        xmlHttp = new XMLHttpRequest();  // Mozilla、Firefox、Safari 
    }
    else if (window.ActiveXObject) { // 如果可以取得ActiveXObject
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer
    }
    
}
//对外提供的请求方法
function startRequest(urlString,handleStateChange) {
    createXMLHttpRequest(); // 建立非同步請求物件
    xmlHttp.onreadystatechange = handleStateChange;  // 設定callback函式
    xmlHttp.open("GET", urlString);  // 開啟連結
    xmlHttp.send(null);  // 傳送請求
}
function startRequestByPost(urlString,params,handleStateChange){
	    createXMLHttpRequest();    
	    xmlHttp.onreadystatechange = handleStateChange;   
	     xmlHttp.open("POST", urlString);  
	       xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");   
	        xmlHttp.send(params);

}

