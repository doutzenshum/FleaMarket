<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
<%
	//将相对路径，全部替换成绝对路径
	String path = request.getContextPath();  //  /duoban 
	String basePath = request.getScheme()+ "://" +request.getServerName() + ":" +request.getServerPort() +path +"/";   
%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>登录-南华二手</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
<LINK rel="stylesheet" type="text/css" href="css/loginreg.css">

<script type="text/javascript">
	//刷验证码
	function loadImage(){
		var img = document.getElementById("randImg");
		img.src="imageCode.jsp?r="+Math.random();
	}
</script>
	
</head>

<body>

	<div class="wrap">
		<div class="header_top">
			<div class="logo">
				<a href="index.jsp"><img src="./images/logo.png" alt="" /></a>
			</div>
		</div>
		<div class="sign">
			<div class="loginForm">
				<div class="loginPic">
					<img src="images/login1.png">
					<div class="loginBord">
						<div class="loginTit">
							<div class="toregist">
								还没有账户<a href="reg.jsp">在此注册</a>
							</div>
							<h1>
								<strong>用户登录</strong>
							</h1>
							
						</div>
						
						<c:if test="${errmsg!='' }">
							<font style="color:red"><c:out value="${errmsg }"></c:out></font>
						</c:if>

						<form id="formpersonal" class="formpersonal" method="post"
							action="user_login.action">
							<div class="line">
								<div class="textbox_ui">
									<input type="text" name="username" id="username"
										placeholder="请输入用户名" value="" />
								</div>
							</div>


							<div class="line">
								<div class="textbox_ui">
									<input type="password" name="userpass" id="userpass"
										placeholder="请输入密码" value="" />
								</div>
							</div>


							<div class="line verityWrap">
								<div class="textbox_ui">
									<input type="text" name="rCode" placeholder="验证码" id="verify_code">
									<div class="invalid">
									</div>
								</div>
								<span id="change_verify_code"> 
										<img id="randImg" src="imageCode.jsp" /> 
										 <a href="javascript:loadImage()">看不清</a>
								</span>
							</div>



							<div class="act" style="margin-left: 0px;">
								<p>
									<input type="submit" class="submit_btn" value="登录"
										style="width: 100%;" />
								</p>
							</div>


						</form>
						<div class="shadow_l"></div>
						<div class="shadow_r"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
