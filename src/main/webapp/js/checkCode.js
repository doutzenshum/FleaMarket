// JavaScript Document
			
			var code ; //在全局定义验证码 
			//产生验证码
			window.onload = function createCode(){
				 code = ""; 
				 var codeLength = 4;//验证码的长度
				 var checkCode = document.getElementById("createCode"); 
				 var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//随机数
				 for(var i = 0; i < codeLength; i++) {//循环操作
					var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）
					code += random[index];//根据索引取得随机数加到code上
				}
				checkCode.value = code;//把code值赋给验证码
			}
			//校验验证码
			function validate(){
				var inputCode = document.getElementById("valiCode").value.toUpperCase(); //取得输入的验证码并转化为大写      
				if(inputCode.length <= 0) { //若输入的验证码长度为0
					$("clr_val").html("亲,请输入验证码."); //则弹出请输入验证码
				}       
				else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时
					$("valiCode_error").html("亲,您输入的验证码有误."); //则弹出验证码输入错误
					createCode();//刷新验证码
					document.getElementById("valiCode").value = "";//清空文本框
				}       
				else { //输入正确时
					$("valiCode_succed").html("亲,验证码正确."); //弹出^-^
				}           
			}	
			
			function $(obj){
				return document.getElementById(obj);	
			}