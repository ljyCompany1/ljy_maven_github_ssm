﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统--模板之家 www.cssmoban.com</title>
<link href="<%=basePath%>jsp/backstage/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=basePath%>jsp/backstage/js/jquery.js"></script>
<script src="<%=basePath%>jsp/backstage/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
//用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
        function alert_myMessage(){
           var message="${requestScope.myMessage}";
           if(message!=""){
              alert(message);
           }
        }
	$(function(){
	 //用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
	        alert_myMessage();
	        
	      //不在任何frame里面显示该页面
	    if(self.location!=top.location){
	       top.location.href=self.location.href;
	    }
	        
	        
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script>

</head>

<body style="background-color:#1c77ac; background-image:url(jsp/admin/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录后台管理界面平台</span>
		<ul>
			<li><a href="#">回首页</a>
			</li>
			<li><a href="#">帮助</a>
			</li>
			<li><a href="#">关于</a>
			</li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>

		<div class="loginbox">
			<form action="<%=basePath%>backstage/login">
				<ul>
					<li><input name="username" type="text" class="loginuser"/>
					</li>
					<li><input name="password" type="password" class="loginpwd"/>
					</li>
					<li><input name="login" type="submit" class="loginbtn" value="登录" />
					    <label><input  type="checkbox" value="" checked="checked" />记住密码</label>
					    <label><a href="#">忘记密码？</a>
					</label>
					</li>
				</ul>
			</form>

		</div>

	</div>



	<div class="loginbm">版权所有 2013 .com 仅供学习交流，勿用于任何商业用途</div>
</body>
</html>
