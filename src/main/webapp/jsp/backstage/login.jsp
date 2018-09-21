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
<html>
<head>
    <title>hello</title>
</head>
<body>
<form action="<%=basePath%>backstage/login" method="post">
    账户名：<input name="username">
    密码：<input name="password">
    <input type="submit" value="登录">
</form>
</body>
</html>
