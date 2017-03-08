
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<head id="Head1">
  <head>
    <base href="<%=basePath%>">
	<meta charset="UTF-8">
    <title>我的后台管理</title>
    <link href="nanhua/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="nanhua/js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="nanhua/js/themes/icon.css" />
    <script type="text/javascript" src="nanhua/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="nanhua/js/jquery.easyui.js"></script>

	<script type="text/javascript" src='nanhua/js/outlook2.js'> </script>

    <script type="text/javascript">
	 var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"系统管理",
							"menus":[
									{"menuname":"管理员管理","icon":"icon-users","url":"nanhua/sys/admins/admin.jsp"},
									{"menuname":"用户管理","icon":"icon-users","url":"nanhua/sys/users/user.jsp"},
									//{"menuname":"角色管理","icon":"icon-role","url":"demo2.html"},
									{"menuname":"管理权限设置","icon":"icon-set","url":"nanhua/sys/authority.jsp"},
									{"menuname":"系统日志","icon":"icon-log","url":"nanhua/sys/logs/log.jsp"}
								]
						},{"menuid":"8","icon":"icon-sys","menuname":"评论管理",
							"menus":[{"menuname":"留言管理","icon":"icon-nav","url":"nanhua/comments/topic.jsp"},
									 {"menuname":"反馈管理","icon":"icon-nav","url":"nanhua/comments/advice.jsp"}
								]
						},{"menuid":"28","icon":"icon-sys","menuname":"数据管理",
							"menus":[{"menuname":"报表统计","icon":"icon-nav","url":"hightchart/index.jsp"},
									{"menuname":"估价模型","icon":"icon-nav","url":"nanhua/datadictionary/datadictionary.jsp"}
								]
						},{"menuid":"39","icon":"icon-sys","menuname":"商城管理",
							"menus":[{"menuname":"商品所有分类","icon":"icon-nav","url":"nanhua/special/species.jsp"},
									{"menuname":"商品一级分类","icon":"icon-nav","url":"nanhua/special/special1.jsp"},
									{"menuname":"商品二级分类","icon":"icon-nav","url":"nanhua/special/special.jsp"},
									{"menuname":"所有商品列表","icon":"icon-nav","url":"nanhua/goods/good.jsp"},
									//{"menuname":"商品订单","icon":"icon-nav","url":"demo2.html"}
								]
						}/* ,{"menuid":"56","icon":"icon-sys","menuname":"商家管理",
							"menus":[{"menuname":"添加商家","icon":"icon-nav","url":"nanhua/demo.html"},
									{"menuname":"商家列表","icon":"icon-nav","url":"nanhua/demo.html"}
								]
						} */
				]};
        //设置登录窗口
        function openPwd() {
            $('#w').window({
                title: '修改密码',
                width: 300,
                modal: true,
                shadow: true,
                closed: true,
                height: 160,
                resizable:false
            });
        }
        //关闭登录窗口
        function close() {
            $('#w').window('close');
        }

        

        //修改密码
        function serverLogin() {
            var $newpass = $('#txtNewPass');
            var $rePass = $('#txtRePass');

            if ($newpass.val() == '') {
                msgShow('系统提示', '请输入密码！', 'warning');
                return false;
            }
            if ($rePass.val() == '') {
                msgShow('系统提示', '请在一次输入密码！', 'warning');
                return false;
            }

            if ($newpass.val() != $rePass.val()) {
                msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                return false;
            }

            $.post('/ajax/editpassword.ashx?newpass=' + $newpass.val(), function(msg) {
                msgShow('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + msg, 'info');
                $newpass.val('');
                $rePass.val('');
                close();
            })
            
        }

        $(function() {

            openPwd();
            //
            $('#editpass').click(function() {
                $('#w').window('open');
            });

            $('#btnEp').click(function() {
                serverLogin();
            })

           

            $('#loginOut').click(function() {
                $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {

                    if (r) {
                        location.href = 'AdminServlet.action?op=loginout&username=${adminname}';
                    }
                });

            })
			
			
			
        });
		
		

    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="nanhua/images/noscript.gif" alt='抱歉，请开启脚本支持！' />
</div></noscript>
    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(nanhua/images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎  ${adminname} <a href="#" id="editpass">修改密码</a> <a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; "><img src="nanhua/images/blocks.gif" width="20" height="20" align="absmiddle" /> 南华园后台管理</span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer">By 吴东恒.林超男   Email:1952593993@qq.com</div>
    </div>
    <div region="west" split="true" title="导航菜单" style="width:180px;" id="west">
<div class="easyui-accordion" fit="true" border="false">
		<!--  导航内容 -->
				
			</div>

    </div>
    
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden;" id="home">
				
			<h1>欢迎来到 南华园二手交易平台!</h1>

			</div>
		</div>
    </div>
    
    
    <!--修改密码窗口-->
    <div id="w" class="easyui-window" title="修改密码" collapsible="false" minimizable="false"
        maximizable="false" icon="icon-save"  style="width: 300px; height: 150px; padding: 5px;
        background: #fafafa;">
        <div class="easyui-layout" fit="true">
            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
                <table cellpadding=3>
                    <tr>
                        <td>新密码：</td>
                        <td><input id="txtNewPass" type="Password" class="txt01" /></td>
                    </tr>
                    <tr>
                        <td>确认密码：</td>
                        <td><input id="txtRePass" type="Password" class="txt01" /></td>
                    </tr>
                </table>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >
                    确定</a> <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)"
                        onclick="closeLogin()">取消</a>
            </div>
        </div>
    </div>

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>


</body>
</html>