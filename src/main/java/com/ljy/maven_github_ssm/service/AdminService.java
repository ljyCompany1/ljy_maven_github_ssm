package com.ljy.maven_github_ssm.service;

import com.ljy.maven_github_ssm.dao.AdminDao;
import com.ljy.maven_github_ssm.model.Admin;
import com.ljy.maven_github_ssm.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public interface AdminService {
    /**
     * 登录方法
     *
     * @param username 账户名
     * @param password 密码
     * @return null表示登录失败
     */
    Admin login(String username, String password);

    /**
     * 获取所有账户集合
     */
    List<Admin> getAdmins();

    /**
     * 删除指定账户
     * @param id
     */
    void deleteAdmin(Integer id);

    /**
     * 添加管理员
     * 说明：账户名和密码不能为空
     * @param admin
     */
    void addAdmin(Admin admin) throws MyFormException;


    /**
     * 根据id读取指定标识符
     * @param id
     * @return
     */
    Admin getAdmin(Integer id);

    /**
     * 编辑管理员
     * 说明：账户名和密码不能为s空
     * @param admin
     */
    boolean updateAdmin(Admin admin) throws MyFormException;
}
