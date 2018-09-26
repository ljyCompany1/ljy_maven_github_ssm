package dao;

import com.ljy.maven_github_ssm.dao.AdminDao;
import com.ljy.maven_github_ssm.model.Admin;
import com.ljy.maven_github_ssm.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class AdminDaoTest extends SpringJunitTest {
    @Resource
    private AdminDao adminDao;
    /*
    对login方法进行测试
     */
    @Test
    public void loginTest(){
        Admin admin=adminDao.login("user","123456");
        System.out.println(admin.getName());
    }

    @Test
    public void deleteTest(){
        System.out.println(adminDao.delete(2));
    }

    @Test
    public void getTest(){
        Admin admin=adminDao.get(3);//数据库不存在对应
        System.out.println(admin);//应输出null
        admin=adminDao.get(1);//数据库存在该数据
        System.out.println(admin);//应输出对应信息
    }

    @Test
    public void addTest(){
        Admin admin=new Admin();
        admin.setUsername("user1");
        admin.setPassword("345");
        admin.setName("小红");
        adminDao.add(admin);
    }
}
