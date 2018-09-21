package com.ljy.maven_github_ssm.web.backstage;


import com.ljy.maven_github_ssm.dao.AdminDao;
import com.ljy.maven_github_ssm.model.Admin;
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
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password){
		if(adminService.login(username, password)){
			return "/backstage/loginsuccess.jsp";
		}else{
			return "/backstage/loginerror.jsp";
		}

	}

}
