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
    <title>管理账户列表</title>
    <!--导入jquery插件-->
    <script src="<%=basePath%>plugins/jquery.js"></script>
    <!--导入layui插件-->
    <link rel="stylesheet" href="<%=basePath%>plugins/layui/css/layui.css">

    <script type="text/javascript">
        $(document).ready(function() {
            $("a[name='deleteAdmin']").click(function() {
                var $a = $(this);//获取指定a标签的jquery对象
                if(window.confirm('确定要删除该账户吗？删除后无法恢复')) {
                    $.get($a.attr("href"), function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        if(data.status == 1) { //如果删除成功
                            $a.parents("tr").remove();//移除该元素所在表格行
                        }else{//如果删除失败
                            alert(data.myMessage);
                        }
                    });
                }
                return false;//让链接事件失效，即不再执行原链接跳转
            });
        });
    </script>

</head>
<body>
<a href="<%=basePath%>backstage/adminmanage/toAddAdmin" class="layui-btn">
  添加管理账户
</a>
<table class="layui-table" lay-even>
<%--<caption>管理账户列表</caption>--%>
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
    <td style="width:20%;"><a href="<%=basePath %>backstage/adminmanage/toUpdateAdmin?id=${admin.id}" class="layui-btn layui-btn-xs">修改</a>
        <a name="deleteAdmin" href="<%=basePath %>backstage/adminmanage/doDeleteAdmin?id=${admin.id}" class="layui-btn layui-btn-xs">删除</a>
    </td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
