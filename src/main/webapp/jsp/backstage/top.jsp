<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=basePath%>jsp/backstage/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath%>jsp/backstage/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(jsp/backstage/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="#" target="_parent"><img src="jsp/backstage/images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="jsp/admin/index.html" target="rightFrame" class="selected"><img src="jsp/backstage/images/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
    <li><a href="admin/adminmanage/adminmanage" target="rightFrame"><img src="jsp/backstage/images/icon02.png" title="模型管理" /><h2>管理账户模块</h2></a></li>
    <li><a href="admin/customer/customermanage"  target="rightFrame"><img src="jsp/backstage/images/icon03.png" title="模块设计" /><h2>客户模块</h2></a></li>
    <li><a href="admin/producttype/producttypemanage"  target="rightFrame"><img src="jsp/backstage/images/icon04.png" title="常用工具" /><h2>产品分类模块</h2></a></li>
    <li><a href="admin/product/productmanage" target="rightFrame"><img src="jsp/backstage/images/icon05.png" title="文件管理" /><h2>产品模块</h2></a></li>
    <li><a href="admin/orders/ordersmanage"  target="rightFrame"><img src="jsp/backstage/images/icon06.png" title="系统设置" /><h2>订单模块</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="jsp/backstage/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="admin/logout" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>${sessionScope.admin.name}</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>
</body>
</html>
