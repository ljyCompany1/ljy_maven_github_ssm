<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--导入layui插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/layui/css/layui.css">
</head>
<body>
欢迎您访问本站
</body>
</html>