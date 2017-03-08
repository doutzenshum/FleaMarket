<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="s" uri="/struts-ta --%>gs"%>
<!DOCTYPE HTML>
<head>
<title>南华园二手交易平台</title>
<link href="./css/xinxi.css" rel="stylesheet" type="text/css"
	media="all" />
<%@ include file="header.jsp"%>
<div class="main">
	<div class="content">
		<div class="uc_new_top"></div>
		<div class="cont-top">
			<div class="conttop-box">
				<div class="cont-top-headphoto">
					<img alt="头像" src="./images/userimg/<s:property value="#session.onlinemallUser.userheadimg" />"> <a href=""
						style="opacity: 0;">编辑</a>
				</div>
				<div class="conttopbox-left">
					<span class="cont-top-name"></span> <span class="cont-top-level">
					</span> <span class="cont-top-word" style="color: rgb(94, 94, 94);">个人资料</span>
				</div>
			</div>
		</div>
		<div class="wbox">

			<div class="cont-middle">
				<div class="side-nav"
					style="border-right: 1px solid rgb(230, 230, 230);">
					<ul class="sidenav-ul padd-top-10">
						
					</ul>
				</div>
				<div class="cont-r">
					<div class="info_box">
						<div class="tab_info_box">
							<ul class="tab_info">
								<li class="current" style="cursor: pointer;">基本资料</li>
							</ul>
						</div>
						<form  action="my_uploadFile.action"
							method="post" enctype="multipart/form-data">
							<div class="base_info_content">
								<div class="personalInfo">
									<div class="progress_box clear">
										<!-- <div class="col">资料完整吗？：</div>
<div class="progress_wrap">
<div class="progress" style="width: 30%;"></div> -->
									</div>
								</div>
								<div class="user_box clear">
									<div class="col">用 户 名 ：</div>
									<div id="username" class="username">
										<input name="username" class="nickname" value="<s:property value="#session.onlinemallUser.username" />">
									</div>
								</div>
								<br />
								<div class="user_nickname clear">
									<div class="col col_2">
										<span class="star">* </span> <span>电 话 ：</span>
									</div>
									<div class="nickname_box">
										<input name="userphonenumber" class="nickname"
											value="<s:property value="#session.onlinemallUser.userphonenumber" />"> <span id="tips"
											class="nickname_sign"></span>
									</div>
								</div>
								<div class="avater_content clear">
									<div class="col">头 像 ：</div>
									<div class="edit_avter">
										<div class="avater_box">
											<img src="./images/userimg/<s:property value="#session.onlinemallUser.userheadimg" />">
											<div class="edit" style="cursor: pointer;">
												<input id="openmyfile" style="display: none"
													name="userfile" type="file" /> <a
													href="javascript:open();">编辑</a>
													
											</div>
										</div>
									</div>
									<input type="hidden" name="userheadimg" value="<s:property value="#session.onlinemallUser.userheadimg"/>" />
									<div id="localImag">
										<img id="preview" width=-1 height=-1 style="diplay: none" />
									</div>
									<script type="text/javascript">
										function open() {
											$("#openmyfile").click();
										}
									</script>
									<div class="gender_item clear">

										<div class="gender_radio"></div>
										<div class="email_box clear">
											<div class="col col_2">
												<span>Email：</span>
											</div>
											<div class="email_wrap">
												<input name="useremail" id="regEmail1" class="email"
													value="<s:property value="#session.onlinemallUser.useremail" />"> <span id="noRegEmail1"></span>
													
												
											</div>
										</div>
									</div>
									
									<div class="save_box">
										<input type="hidden" name="userid" value="<s:property value="#session.onlinemallUser.userid"/>" />
										<input id="save_personalinfo" class="savebtn" type="submit"
											value="保存">
									</div>
								</div>
								<div class="member_stores hide">
									<iframe frameborder="0" style="width: 100%; height: 550px;"
										allowtransparency="true" scrolling="no" src="">
										<html>
<head></head>
<body></body>
										</html>
									</iframe>
								</div>
							</div>

							<!--  biaodan-->
						</form>
					</div>
				</div>
			</div>
			<div class="section group"></div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>
<script type="text/javascript">
	/* 	$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
		}); */
	
	</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>
