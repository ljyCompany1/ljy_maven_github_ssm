<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>后台系统主界面</title>
    <!--导入layui插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/layui/css/layui.css">
    <!--导入自定义样式文件-->

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">XX系统后台管理界面</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">后台首页</a></li>
            <li class="layui-nav-item"><a href="">用户管理</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它功能</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${sessionScope.admin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">密码修改</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="<%=basePath %>backstage/logout">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">管理账户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=basePath%>backstage/adminmanage/toAddAdmin">创建管理账户</a></dd>
                        <dd><a href="<%=basePath%>backstage/adminmanage/toManageAdmin">管理账户列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">产品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">添加产品</a></dd>
                        <dd><a href="javascript:;">管理产品列表</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">购物车</a></li>
                <li class="layui-nav-item"><a href="">订单</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="padding: 15px;">
        <!-- 内容主体区域 -->
        <iframe src="<%=basePath%>jsp/backstage/main.jsp" id="mainFrame" name="mainFrame" frameborder="no" scrolling="auto" width="100%" height="100%">

        </iframe>
        <%--<div style="padding: 15px;">内容主体区域</div>--%>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © ljy - 版权所有
    </div>
</div>
<script src="<%=basePath%>plugins/layui/layui.js"></script>
<script src="<%=basePath%>plugins/jquery.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
        /*element.on('nav(hbkNavbar)',function(elem){//用于系统生成菜单的方式生成链接
            /!*使用DOM操作获取超链接的自定义data属性值*!/
            var options = eval('('+elem.context.children[0].dataset.options+')');
            var url = options.url;
            var title = options.title;
            element.tabAdd('tabs',{
                title : title,
                content : '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>',
                id : '111'
            });
        });    */
        $('.layui-nav-child a').click(function () {
            var url = $(this).attr("href");//获取链接地址
            $("#mainFrame").attr("src",url);
            return false;
        });
    });
</script>
</body>
</html>
