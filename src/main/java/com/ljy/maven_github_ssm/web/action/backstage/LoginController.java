package com.ljy.maven_github_ssm.web.action.backstage;


import com.ljy.maven_github_ssm.model.Admin;
import com.ljy.maven_github_ssm.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {

	@Resource
	private AdminService adminService;

	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/toLogin")
	public String toLogin(){
		return "/jsp/backstage/login.jsp";
	}


	/*
	 * 后台登录处理
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password,HttpSession session){
		Admin admin=adminService.login(username, password);
		if(admin!=null){
			session.setAttribute("admin",admin);
			return "redirect:/backstage/adminmanage/toManageAdmin";
		}else{
			return "/jsp/backstage/loginerror.jsp";
		}
	}

	/**
	 * 注销
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session){
		session.removeAttribute("admin");
		return "/jsp/backstage/login.jsp";
	}


}
