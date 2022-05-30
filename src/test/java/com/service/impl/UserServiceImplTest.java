package com.service.impl;

import com.BaseTest;
import com.mapper.Usermapper;
import com.pojo.Manager;
import com.service.UserService;
import org.easymock.EasyMock;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.event.annotation.AfterTestClass;
import org.springframework.test.context.event.annotation.BeforeTestClass;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
@RunWith(value = Parameterized.class)
public class UserServiceImplTest extends BaseTest {
    private ApplicationContext applicationContext;
    private Integer id;
    private String work_num;
    private String name;
    private String password;
    private String id_num;

    boolean bool;
    public UserServiceImplTest(String work_num,String password,boolean bool){
        this.password=password;
        this.work_num=work_num;
        this.bool=bool;
    }
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(
                "classpath*:applicationContext.xml");
    }


    @Parameterized.Parameters(name = "{0} and {1} ")
    public static  Iterable<Object[]> data() {
        return Arrays.asList(new Object[][] {
                {"admin123","admin123",true},
                {"admin","admin",false},
                {"test","test",false},
                {"","",false},
                {"aaaaaa","aaaaaa",false}
        });
    }

    @Test
    public void test_manager_login() throws IOException {
        UserService userService=(UserService)applicationContext.getBean("userService");
        Manager manager=new Manager();
        manager.setWork_num(work_num);
        manager.setPassword(password);
        System.out.println(manager);
        assertTrue(userService.manager_login(manager));

    }

   /* @Test
    public void test_manager_register(){
        UserService userService=(UserService)applicationContext.getBean("userService");
        Manager manager=new Manager();

    }*/
}