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
    <!--导入jquery插件-->
    <script src="<%=basePath%>plugins/jquery.js"></script>
    <!--导入layui插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/layui/css/layui.css">

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
<form id="myForm" class="layui-form">
    <div class="layui-form-item">
        <label class="layui-form-label">账户名</label>
        <div class="layui-input-block">
            <input type="text" id="username" name="username"  required  lay-verify="required" placeholder="请输入账户名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" id="name" name="name"  required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button name="addAdmin" class="layui-btn" lay-submit lay-filter="formDemo">创建管理账户</button>
            <a  class="layui-btn layui-btn-primary" href="<%=basePath %>backstage/adminmanage/toManageAdmin">返回账户管理页面</a>
        </div>
    </div>
</form>
</body>
</html>
