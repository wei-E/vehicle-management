package com.service.impl;

import com.BaseTest;
import com.mapper.Usermapper;
import com.pojo.Driver;
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
    public UserServiceImplTest(String work_num,String name,String id_num,boolean bool){
        this.id_num=id_num;
        this.name=name;
        this.work_num=work_num;
        this.bool=bool;
    }
   /** public UserServiceImplTest(String work_num,String name,String password,String id_num,boolean bool){
        this.password=password;
        this.work_num=work_num;
        this.id_num=id_num;
        this.name=name;
        this.bool=bool;
    }**/
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(
                "classpath*:applicationContext.xml");
    }

   /* @Parameterized.Parameters(name = "{0} and {1}")
    public static  Iterable<Object[]> data() {
        return Arrays.asList(new Object[][] {
                {"aaaaaa","aaaaaa",true},
                {"AAAAAA","AAAAAA",true},
                {"111111","111111",true},
                {"AAAaaa","AAAaaa",true},
                {"aaa111","aaa111",true},
                {"AAAaaa111","AAAaaa111",true},
                {"aaaaaaa","aaaaaaa",true},
                {"aaaaaaaaaaa","aaaaaaaaaaaaaa",true},
                {"aaaaa","aaaaa",false},
                {"aaaaaaaaaaaa","aaaaaaaaaaaaaaaaa",false},
                {"aaaaaaaaaaaaa","aaaaaaaaaaaaaaaaaaa",false},
                {"1234%%","1234%%",false},
                {"","",false},

        });
    }*/
    @Parameterized.Parameters(name = "{0},{1},{2} ")
    public static  Iterable<Object[]> data() {
        return Arrays.asList(new Object[][] {
                {"","","",true},
                {"","zhangsanlisiwangwuzhaoliu","33033220001002",false},
                {"","jia","330682200010254000",true},
                {"","jjj","330332200010024444",false},

                {"123456789101112","","33033220001002",false},
                {"123456789101112","zhangsanlisiwangwuzhaoliu","@@@@",false},
                {"123456789101112","jia","330332200010024444",false},
                {"123456789101112","jjj","330682200010254000",false},

                {"admin123","","330822200110024111",false},
                {"admin123","zhangsanlisiwangwuzhaoliu","330332200010024444",false},
                {"admin123","jia","",true},
                {"admin123","jjj","33033220001002",false},

                {"admin999","","330332200010024444",false},
                {"admin999","zhangsanlisiwangwuzhaoliu","330682200010254000",false},
                {"admin999","","33033220001002",false},
                {"admin999","jjj","",false},
        });
    }
    @Test
    public void test_manager_find_condition() throws IOException{
        UserService userService=(UserService)applicationContext.getBean("userService");
        Manager manager=new Manager();
        manager.setWork_num(work_num);
        manager.setName(name);
        manager.setId_num(id_num);
        System.out.println(manager);
        boolean f;
        if(userService.manager_find_condition(manager).size()!=0)
             f=true;
        else {
             f=false;

        }
        assertEquals(bool,f);

    }
   /* @Test
    public void test_manager_login() throws IOException {
        UserService userService=(UserService)applicationContext.getBean("userService");
        Manager manager=new Manager();
        manager.setWork_num(work_num);
        manager.setPassword(password);
        System.out.println(manager);
        assertEquals(bool,userService.manager_login(manager));

    }
    @Test
    public void test_manager_register() throws IOException {
        UserService userService=(UserService)applicationContext.getBean("userService");
        Manager manager=new Manager();
        manager.setPassword(password);
        manager.setName(name);
        manager.setWork_num(work_num);
        manager.setId_num(id_num);
        System.out.println(manager);
        assertEquals(bool,userService.manager_register(manager));

    }
   @Test
   public void test_manager_add_driver() throws IOException {
       UserService userService = (UserService) applicationContext.getBean("userService");
       Driver driver = new Driver();
       driver.setPassword(password);
       driver.setName(name);
       driver.setWork_num(work_num);
       driver.setId_num(id_num);
       System.out.println(driver);
       assertEquals(bool, userService.driver_register(driver));
   }*/
}