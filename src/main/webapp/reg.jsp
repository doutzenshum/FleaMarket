<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="http://localhost:8080/SecondHandInfo/">
<meta charset="utf-8">
<LINK rel="stylesheet" type="text/css" href="css/reg/common.css">
<LINK rel="stylesheet" type="text/css" href="css/reg/i_sign.css">
<LINK rel="stylesheet" type="text/css" href="css/reg/signup.css">
<LINK rel="stylesheet" type="text/css" href="css/reg/loginreg.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>

<title>注册-南华二手</title>
</head>
<body>
	<div class="wrap">
		<div class="header_top">
			<div class="logo">
				<a href="index.html"></a>
			</div>
		</div>
		<div class="sign">
			<div class="loginWrap">
				<div class="loginPic">
					<img src="images/logo4.png" style='width: 300px; height: 400px;'>
					<!--<a href="" target="_blank" class="signup_link"></a>-->
					<div class="loginBord">
						<div class="loginTit">
							<div class="tosignup">
								已有账号<a href="login.jsp">在此登录</a>
							</div>
							<h1>
								<strong>用户注册</strong>
							</h1>
						</div>

						<form id="formpersonal" class="formpersonal" method="post"
							action="user_reg.action">
							<div class="line">
								<div class="textbox_ui">
									<input type="text" id="username" name="username"
										placeholder="请输入用户名" value="" datatype="s6-18"
										sucmsg="亲,您的用户名可以使用！" nullmsg="请输入用户名！"
										errormsg="6-18个字符, 请使用数字或字母" />
									<div class="focus_text"></div>
									<div class="invalid" style="display: block">
										<i></i>
										<div id="numberMessage" class="msg"></div>
									</div>
									<i class="valid"></i> <i class="loading"></i>
								</div>
							</div>

							<div class="line">
								<div class="textbox_ui">
									<input type="password" placeholder="密码" 
										id="password" datatype="*6-18" nullmsg="请输入密码！"
										errormsg="密码范围在6~18位之间！建议使用字母加数字或符号组合.">
									<div class="focus_text">
										<p class="default">6-18个字符，建议使用字母加数字或符号组合</p>
										<div class="safe">
											<div class="pw_isstrong clearfix">
												<div class="pw_level pw_success" data-class="pw_weak"
													data-strength="weak">弱</div>
												<div class="pw_level pw_success" data-class="pw_normal"
													data-strength="normal">中</div>
												<div class="pw_level pw_success" data-class="pw_strong"
													data-strength="strong" style="border-right: 0">强</div>
											</div>
										</div>
									</div>
									<i class="valid"></i>
									<div class="invalid">
										<i></i>
										<div class="msg"></div>
									</div>
								</div>
							</div>
							<div class="line">
								<div class="textbox_ui">
									<input max="18" min="5" type="password" id="password2"
										name="userpass" placeholder="重复密码" datatype="*"
										recheck="password" errormsg="您两次输入的密码不一致！">
									<div class="focus_text">请再次输入密码</div>
									<i class="valid"></i>
									<div class="invalid">
										<i></i>
										<div class="msg"></div>
									</div>
								</div>
							</div>

							<div class="line">
								<div class="textbox_ui">
									<input type="email" id="email" name="useremail"
										placeholder="请输入邮箱">
									<div class="focus_text">请输入邮箱,格式如:abc@163.com</div>
									<i class="valid"></i>
									<div class="invalid">
										<i></i>
										<div class="msg"></div>
									</div>
								</div>
							</div>



							<div class="line verityWrap">
								<div class="textbox_ui">
									<input type="text" placeholder="验证码" name="rCode"
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


							<!-- <div class="line verityWrap">
                        <div class="textbox_ui sms_verify_wrapper">
                            <input type="text" id="mobile_verify" placeholder="短信校验码">
                            <div class="focus_text">请输入6位短信校验码</div>
                            <div class="hint"></div>
                            <div class="invalid">
                                <i></i>
                                <div class="msg"></div>
                            </div>
                        </div>
                        <a href="javascript:;" id="getPhoneCode" class="phonecode"><strong>获取短信校验码</strong></a>
                    </div>-->

							<div class="act" style="margin-left: 0px;">
								<p>
									<input type="submit" class="submit_btn" value="同意协议并注册"
										name="mobileCommit" style="width: 100%;">
								</p>
								<p>
									<a href="" rel="nofollow" target="_blank"
										style="color: #ed145b;">《南华二手用户协议》</a>
								</p>
							</div>
							<br />
						</form>
						<div class="shadow_l"></div>
						<div class="shadow_r"></div>
					</div>
				</div>
			</div>





			<div id="footer_container" class="footer_white"
				style="padding-top: 5px; background: none; border-top: none;">
				<div class="footer_con" id="footer_copyright">
					<p class="footer_copy_con">
						Copyright &copy; 2010-2015 xxxxx 保留一切权利。客服热线：xxx-123-8888 <br />
						京公网安备 11010102001226 号 | <a href="http://www.miibeian.gov.cn"
							target="_blank" rel="nofollow">京ICP证111033号</a> | 食品流通许可证
						SP1101051110165515（1-1） | <a
							href="http://p2.jmstatic.com/activity/2013_chuangrui.jpeg"
							target="_blank" rel="nofollow">营业执照</a>
					</p>
					<p>
						<a href="javascript:void(0)" class="footer_copy_logo logo01"
							rel="nofollow"></a> <a
							href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1693268180"
							target="_blank" class="footer_copy_logo logo02" rel="nofollow"></a>
						<a href="javascript:void(0)" class="footer_copy_logo logo03"
							rel="nofollow"></a> <a href="javascript:void(0)"
							class="footer_copy_logo logo04" rel="nofollow"></a> <a
							href="https://ss.cnnic.cn/verifyseal.dll?sn=e12070911010031011307708&ct=df&pa=453163"
							target="_blank" class="footer_copy_logo logo05" rel="nofollow"></a>
					</p>


					<script type="text/javascript">
	function showCodeAgain() {
		var r = new Date();
		var img = document.getElementById("showcode");
		img.src = "code.html?d=" + r;
	}
</script>
					<script>
         function change_urlknet(eleId){
             var str=document.getElementById(eleId).href;
             var str1=str.substring(0,(str.length-6));
             str1+=RndNum(6);
             document.getElementById(eleId).href=str1;
         }
         function RndNum(k){
             var rnd="";
             for (var i=0;i<k;i++) {
                 rnd+=Math.floor(Math.random()*10);
             }
             return rnd;
         }
        </script>
				</div>
			</div>



		</div>
	</div>

	<script type="text/javascript">
	
	var checkUser = $("#username").blur(function(){
		var reg = /[a-zA-Z0-9_]{4,12}/;
		var value = $(this).val();
			if(  value.length<1 	){
				//用户名为空
				$(this).parent().find(".invalid").children(".msg").html("用户名不能为空");
				$(this).parent().find(".invalid").css("display","block");
				$(this).parent().attr("class","textbox_ui error_ui");	
				return false;
			}
			if(  !reg.test( value ) ){
				//输入不符合要求
				$(this).parent().find(".invalid").children(".msg").html("要求4-12个字符, 请使用数字或字母");	
				$(this).parent().find(".invalid").css("display","block");
				$(this).parent().attr("class","textbox_ui error_ui");
				
				return false;
			}else{
				//输入正确
				$(this).parent().find(".invalid").css("display","none");
				$(this).parent().find(".valid").css("display","inline");
				var username=$("#username").val();
				//验证用户名是否重名的操作
				$.ajax({ 
					url: "user_ajaxcheck.action", 
					dataType:"json",
					data:{"username":username},
					success: function(data){
						if(data.useracticode==null){
							$("#username").next(".invalid").find("#numberMessage").text("");
							
						}else{
							$("#username").parent().find(".invalid").css("display","block");
							$("#username").parent().attr("class","textbox_ui error_ui");
							$("#username").parent().find(".valid").css("display","none");
							$("#numberMessage").text(data.useracticode);
						}
						
					}
				});	
				return true;
			}
			
	});
	
	$("#username").focus(function(){
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().attr("class","textbox_ui");
			$(this).parent().find(".valid").css("display","none");	
	});
	
	var checkPwd = $("#password").blur(function(){
		var reg = /((?=.*\d)(?=.*\D)|(?=.*[a-zA-Z])(?=.*[^a-zA-Z]))^.{6,32}$/;
		var value = $(this).val();
		if(  value.length<1 	){
			//用户名为空
			$(this).parent().find(".invalid").children(".msg").html("密码不能为空");
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");	
			return false;
		}
		if(  !reg.test( value ) ){
			//输入不符合要求
			$(this).parent().find(".invalid").children(".msg").html("要求6-32个字符, 请使用数字、符合或字母");	
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");
			return false;
		}else{
			//输入正确
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().find(".valid").css("display","inline");
			return true;
		}	
	});
	
	$("#password").focus(function(){
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().attr("class","textbox_ui");
			$(this).parent().find(".valid").css("display","none");	
	});
	
	var checkPwd2 = $("#password2").blur(function(){
		
		var value = $(this).val();
		var pwd = $("#password").val();
		if(  value.length<1 	){
			//用户名为空
			$(this).parent().find(".invalid").children(".msg").html("两次输入的密码不一致");
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");	
			return false;
		}
		if(  value!=pwd ){
			//输入不符合要求
			$(this).parent().find(".invalid").children(".msg").html("两次输入的密码不一致");	
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");
			return false;
		}else{
			//输入正确
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().find(".valid").css("display","inline");
			return true;
		}	
	});
	
	$("#password2").focus(function(){
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().attr("class","textbox_ui");
			$(this).parent().find(".valid").css("display","none");	
	});
	
	var checkEmail = $("#email").blur(function(){
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		var value = $(this).val();
		if(  value.length<1 	){
			//邮箱为空
			$(this).parent().find(".invalid").children(".msg").html("邮箱不能为空");
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");	
			return false;
		}
		if(  !reg.test( value ) ){
			//输入不符合要求
			$(this).parent().find(".invalid").children(".msg").html("邮箱地址不符合要求");	
			$(this).parent().find(".invalid").css("display","block");
			$(this).parent().attr("class","textbox_ui error_ui");
			return false;
		}else{
			//输入正确
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().find(".valid").css("display","inline");
			return true;
		}	
	});
	
	$("#email").focus(function(){
			$(this).parent().find(".invalid").css("display","none");
			$(this).parent().attr("class","textbox_ui");
			$(this).parent().find(".valid").css("display","none");	
	});
	
</script>
</body>
</html>
