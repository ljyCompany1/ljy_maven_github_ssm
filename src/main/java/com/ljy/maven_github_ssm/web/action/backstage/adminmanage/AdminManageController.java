package com.ljy.maven_github_ssm.web.action.backstage.adminmanage;


import com.ljy.maven_github_ssm.model.Admin;
import com.ljy.maven_github_ssm.model.exception.MyFormException;
import com.ljy.maven_github_ssm.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

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

	/**
	 * 删除指定账户
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/doDeleteAdmin")
	public Map<String, Object> doDeleteAdmin(Integer id,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
		if(admin.getId()==id.intValue()){//如果登录账户的id与被删除账户的id一致
			//不允许删除自己的账户
			map.put("status", -1);
			map.put("myMessage", "删除失败：不允许删除自己");
		}else{
			adminService.deleteAdmin(id);
			map.put("status", 1);
		}
		return map;
	}

	/**
	 * 跳转到账户添加页面
	 */
	@RequestMapping(value = "/toAddAdmin")
	public String toAddAdmin(){
		return "/jsp/backstage/adminmanage/adminadd.jsp";
	}

	@ResponseBody
	@RequestMapping(value = "/doAddAdmin")
	public Map<String, Object> doAddAdmin(Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			adminService.addAdmin(admin);
			map.put("status", 1);
			map.put("myMessage", "账户添加成功");
		} catch (MyFormException e) {
			map.put("status", -1);
			map.put("myMessage", e.getMessage());
		}
		return map;
	}


	/**
	 * 跳转到账户编辑页面
	 */
	@RequestMapping(value = "/toUpdateAdmin")
	public String toUpdateAdmin(Integer id,HttpServletRequest request){
		request.setAttribute("admin",adminService.getAdmin(id));
		return "/jsp/backstage/adminmanage/adminupdate.jsp";
	}

	@ResponseBody
	@RequestMapping(value = "/doUpdateAdmin")
	public Map<String, Object> doUpdateAdmin(Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("status", -1);//默认失败
		try {
			if(adminService.updateAdmin(admin)){
				map.put("status", 1);
				map.put("myMessage", "账户编辑成功");
			}else{
				map.put("myMessage", "账户编辑失败");
			}
		} catch (MyFormException e) {
			map.put("myMessage", e.getMessage());
		}
		return map;
	}

}
