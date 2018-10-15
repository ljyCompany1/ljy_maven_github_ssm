<%--
  Created by IntelliJ IDEA.
  User: ljyadbefgh
  Date: 2018/9/6
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>后台系统登录页面</title>
    <!--导入bootstrap插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/bootstrap/css/bootstrap.css">
    <script src="<%=basePath%>plugins/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>plugins/bootstrap/js/bootstrap.js"></script>
    <!--导入自定义样式文件-->
    <link rel="stylesheet" href="<%=basePath%>css/mycss.css">
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            后台系统登录界面
        </h3>
    </div>
    <div class="panel-body">
        <form role="form" action="<%=basePath%>backstage/login" method="post">
            <div class="form-group">
                <label for="username">账户名</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="请输入账户名">
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
            </div>
            <input type="submit" value="登录" class="btn btn-primary btn-block">
        </form>
    </div>

</body>
</html>
