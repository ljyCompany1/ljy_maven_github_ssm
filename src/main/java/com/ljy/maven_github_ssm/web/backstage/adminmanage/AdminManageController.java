package com.ljy.maven_github_ssm.web.backstage.adminmanage;


import com.ljy.maven_github_ssm.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/backstage/adminmanage")
public class AdminManageController {

	@Resource
	private AdminService adminService;


	/*
	 * 跳转到账户管理页面
	 */
	@RequestMapping(value = "/toManageAdmin")
	public String toManageAdmin(HttpServletRequest request){
		request.setAttribute("list",adminService.getAdmins());
		return "/jsp/backstage/adminmanage/adminmanage.jsp";
	}

}
