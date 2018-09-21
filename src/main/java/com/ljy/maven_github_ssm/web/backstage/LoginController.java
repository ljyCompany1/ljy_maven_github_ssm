package com.ljy.maven_github_ssm.web.backstage;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {


	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password){
		if(username.equals("admin")&&password.equals("123")){
			return "/backstage/loginsuccess.jsp";
		}else{
			return "/backstage/loginerror.jsp";
		}

	}

}
