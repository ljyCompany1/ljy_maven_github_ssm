package com.ljy.maven_github_ssm.web.backstage;


import com.ljy.maven_github_ssm.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {

	@Resource
	private AdminService adminService;


	/*
	 * 后台登录处理
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password){
		if(adminService.login(username, password)){
			return "/backstage/adminmanage/toManageAdmin";
		}else{
			return "/jsp/backstage/loginerror.jsp";
		}

	}

}
