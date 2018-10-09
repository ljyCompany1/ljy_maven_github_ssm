<%--
  Created by IntelliJ IDEA.
  User: ljyadbefgh
  Date: 2018/9/6
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>添加管理账户</title>
    <!--导入bootstrap插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/bootstrap/css/bootstrap.css">
    <script src="<%=basePath%>plugins/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>plugins/bootstrap/js/bootstrap.js"></script>
    <!--导入自定义样式文件-->
    <link rel="stylesheet" href="<%=basePath%>css/mycss.css">

    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='addAdmin']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>backstage/adminmanage/doAddAdmin",
                    $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if(data.status == 1) {
                            window.location.href = "<%=basePath%>backstage/adminmanage/toAddAdmin";
                        }
                    }
                );
            });
        });
    </script>

</head>
<body>
<div style="text-align: right;">${sessionScope.admin.name}，<a href="<%=basePath %>backstage/logout">注销</a></div>
<form id="myForm" role="form">
    <div class="form-group">
        <label for="username">账户名</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="请输入账户名">
    </div>
    <div class="form-group">
        <label for="name">名称</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
    </div>

    <button name="addAdmin" type="button" class="btn btn-default">创建管理账户</button>
    <a class="btn btn-info" href="<%=basePath %>backstage/adminmanage/toManageAdmin">返回账户管理页面</a>
</form>
</body>
</html>
