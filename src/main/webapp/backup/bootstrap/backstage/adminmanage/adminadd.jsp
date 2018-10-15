Skip to content

Search or jump to…

Pull requests
Issues
Marketplace
Explore
@ljyadbefgh
Sign out
0
0 0 ljyadbefgh/springboot
Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights  Settings
springboot/src/main/resources/templates/backstage/adminmanage/adminadd.html
cddbef8  15 minutes ago
@ljyadbefgh ljyadbefgh 搭建好的springboot2+ssm+thymeleaf,并已经完成账户管理模块的登录、注销、新增和删除功能，下一个修改功能待完成。

52 lines (50 sloc)  2.18 KB
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8"/>
    <title>hello</title>
    <!--导入bootstrap插件-->
    <link rel="stylesheet" th:href="@{/plugins/bootstrap/css/bootstrap.css}">
    <script th:src="@{/plugins/jquery.js}"></script>
    <script type="text/javascript" th:src="@{/plugins/bootstrap/js/bootstrap.js}"></script>
    <!--导入自定义样式文件-->
    <link rel="stylesheet" th:href="@{/css/mycss.css}">
    <script th:inline="javascript" type="text/javascript">
        $(document).ready(function() {
            $("button[name='addAdmin']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post([[@{/backstage/adminmanage/doAddAdmin}]],
                $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if(data.status == 1) {
                            window.location.href = [[@{/backstage/adminmanage/toAddAdmin}]];
                        }
                    }
            );
            });
        });
    </script>
</head>
<body>
<div style="text-align: right;">
    <span th:text="${session.admin.name}"></span>,<a th:href="@{/backstage/logout}">注销</a>
</div>
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
    <a class="btn btn-info" th:href="@{/backstage/adminmanage/toManageAdmin}">返回账户管理页面</a>
</form>
</body>
</html>
