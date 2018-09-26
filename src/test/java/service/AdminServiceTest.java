package service;

import com.ljy.maven_github_ssm.service.AdminService;
import com.ljy.maven_github_ssm.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class AdminServiceTest  extends SpringJunitTest {
    @Resource
    private AdminService adminService;

    @Test
    public void loginTest(){
        System.out.println(adminService.login("user","123456"));
        System.out.println(adminService.login("user","123"));
    }
}
