package com.ljy.maven_github_ssm.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {


	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/hello")
	public String hello(){
		return "/hello.jsp";
	}

}
