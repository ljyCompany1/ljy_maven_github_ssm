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
<head>
    <title>hello</title>
    <!--导入bootstrap插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/bootstrap/css/bootstrap.css">
    <script src="<%=basePath%>plugins/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>plugins/bootstrap/js/bootstrap.js"></script>
    <!--导入自定义样式文件-->
    <link rel="stylesheet" href="<%=basePath%>css/mycss.css">

</head>
<body>
<table class="table table-bordered table-hover  table-striped">
<caption>管理账户列表</caption>
<thead>
<tr>
    <th>账户名</th>
    <th>密码</th>
    <th>姓名</th>
    <th>操作</th>
</tr>
</thead>
<tbody>
<c:forEach var="admin" items="${requestScope.list}">
<tr>
    <td>${admin.username}</td>
    <td>${admin.password}</td>
    <td>${admin.name}</td>
    <td><a href="#">修改</a> <a href="#">删除</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
