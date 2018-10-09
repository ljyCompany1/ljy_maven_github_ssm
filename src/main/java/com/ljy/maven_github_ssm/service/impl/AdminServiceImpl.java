package com.ljy.maven_github_ssm.service.impl;

import com.ljy.maven_github_ssm.dao.AdminDao;
import com.ljy.maven_github_ssm.model.Admin;
import com.ljy.maven_github_ssm.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService{
    @Resource
    private AdminDao adminDao;

    @Override
    public Admin login(String username, String password) {
        return adminDao.login(username, password);
    }


    @Override
    public List<Admin> getAdmins() {
        return adminDao.readAll();
    }


    @Override
    public void deleteAdmin(Integer id){
        adminDao.delete(id);
    }


}
