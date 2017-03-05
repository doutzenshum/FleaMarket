<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="http://localhost:8080/SecondHandInfo/">
<meta charset="utf-8">
<title>登录-南华二手</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
<LINK rel="stylesheet" type="text/css" href="css/reg/loginreg.css">
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
									<input type="text" name="rCode" placeholder="验证码"
										id="verify_code">
									<div class="focus_text">按右图填写，不区分大小写</div>
									<div class="invalid">
										<i></i>
										<div class="msg"></div>
									</div>
								</div>
								<span id="change_verify_code"> <img id="showcode"
									src="code.jsp" /> <a href="javascript:showCodeAgain()">看不清</a>
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
