package com.service.impl;

import com.BaseTest;
import com.mapper.Usermapper;
import com.pojo.Car;
import com.pojo.CarRepair;
import com.pojo.Driver;
import com.pojo.Manager;
import com.service.CarService;
import com.service.RepairService;
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
public class RepairServiceImplTest extends BaseTest{
    private ApplicationContext applicationContext;
    private String license;
    private String type;
    private Boolean bool;
    public RepairServiceImplTest(String license,String type,Boolean bool){
        this.type=type;
        this.bool=bool;
        this.license=license;
    }
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(
                "classpath*:applicationContext.xml");
    }
    @Parameterized.Parameters(name = "{0},{1} ")
    public static  Iterable<Object[]> data() {
        return Arrays.asList(new Object[][] {
                {"","",true},
                {"","12345",false},
                {"","中型车",true},
                {"","微型車",false},

                {"23777","",false},
                {"23777","12345",false},
                {"23777","中型车",false},
                {"23777","微型車",false},

                {"浙BLL111","",true},
                {"浙BLL111","12345",false},
                {"浙BLL111","中型车",true},
                {"浙BLL111","微型車",false},

                {"浙E12345","",false},
                {"浙E12345","12345",false},
                {"浙E12345","中型车",false},
                {"浙E12345","微型車",false},
        });
    }
    @Test
    public void find() throws IOException{
        Car car=new Car();
        CarService carService=(CarService) applicationContext.getBean("carService");
        car.setLicense(license);
        car.setType(type);
        boolean f;
        if(carService.find_car(car).size()!=0)
            f=true;
        else {
            f=false;

        }
        assertEquals(bool,f);
    }
}