<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>

<%@ include file="header.jsp"%>
<div class="main">
	<div class="content">
		<div class="section group">
			<div class="col span_2_of_3">
				<div class="contact-form">
					<h2>联系我们</h2>
					<form method="post" action="postAdvice_species.action">
						<div>
							<span><label>你的名字</label></span> <span><input
								name="advicename" type="text" class="textbox"></span>
						</div>
						<div>
							<span><label>电子邮件</label></span> <span><input
								name="adviceemail" type="text" class="textbox"></span>
						</div>
						<div>
							<span><label>地址</label></span> <span><input
								name="adviceaddress" type="text" class="textbox"></span>
						</div>
						<div>
							<span><label>建议</label></span> <span><textarea
									name="advicecontent"> </textarea></span>
						</div>
						<div>
							<span><input type="submit" value="提交反馈" class="myButton"></span>
						</div>
					</form>
				</div>
			</div>
			<div class="col span_1_of_3">
				<div class="contact_info">
					<h3>公司地图</h3>
					<div class="map">
						<a href="ditu.html"> <img src="images/tidu.png" />
						</a>
					</div>
				</div>
				<div class="company_address">
					<h3>公司信息 :</h3>
					<p>位于湖南衡阳市</p>
					<p>南华大学</p>
					<p></p>

					<p>邮编: 421000</p>
					<p>电话:13429382345</p>
					<p></p>
					<p>Email: 1437786232@qq.com</p>

				</div>
			</div>
		</div>
	</div>
</div>
</div>


<div class="footer">
	<div class="wrap">
		<div class="section group">
			<div class="col_1_of_4 span_1_of_4">
				<h4>企业信息</h4>
				<ul>
					<li><a href="ditu.html">我们的位置</a></li>
					<li><a href="">合作商家</a></li>
					<li><a href="">招聘人才</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>为什么选择我们</h4>
				<ul>
					<li><a href="aboutus.html">关于我们</a></li>
					<li><a href="contact.html">联系我们</a></li>
					<li><a href="index.html">网站导航</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>友情链接</h4>
				<ul>
					<li><a href="http://2.taobao.com/">淘宝二手</a></li>
					<li><a href="http://2.zol.com.cn/">中关村二手</a></li>
					<li><a href="http://usc.edu.cn/">南华大学</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>联系方式</h4>
				<ul>
					<li><span>QQ：1952593993</span></li>
					<li><span>电话：15211497725</span></li>
				</ul>
				<div class="social-icons"></div>
			</div>
		</div>
	</div>
	<div class="copy_right">
		<p>
			源辰信息 © 保留所有权利 | 设计 <a href="http://www.hyycinfo.com/#page_2/">源辰信息</a>
		</p>
	</div>
</div>
<script type="text/javascript">
	/* 	$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
		}); */
	
	</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>
