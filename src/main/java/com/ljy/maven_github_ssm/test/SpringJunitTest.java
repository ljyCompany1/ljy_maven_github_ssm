package com.ljy.maven_github_ssm.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

/*
 * 
 * @author ljy
 * 说明：
 * 首先这里使用注解，必须在spring中配置自动扫描，完成对指定的注解
 * 
 * RunWith是junit4的注解 意思是此类由这个注解的参数的类来主导单元测试 参数类型是Class
 * SpringJUnit4ClassRunner.class是SpringTest中的一个类 作用类似驱动 意思是由Spring Test来主导本次单元测试
 * 
 * @ContextConfiguration(locations={"classpath:applicationContext.xml"})
 * ContextConfiguration的作用是定位你的上下文配置文件 作用就是减少硬编码 getBean之类的
 * 一旦开始测试 Spring 测试框架就去指定位置读取配置文件 完成依赖注入
 * 
 * @TransactionConfiguration(transactionManager="txManager",defaultRollback=true)
 * 该注解可以默认，即不填
TransactionConfiguration 顾名思义 是配置事务情况的注解
第一个参数transactionManager是你在applicationContext.xml或bean.xml中定义的事务管理器的bean的id 
defaultRollback是个很关键的参数 是表示测试完成后事务是否会滚 参数是布尔型的 默认就是true 但强烈建议写上true
 */
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})  
@TransactionConfiguration(transactionManager="txManager",defaultRollback=false )
@Transactional 
public class SpringJunitTest {

}
