package com.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath*:applicationContext.xml","classpath*:springMVC.xml"})
public class UserControllerTest {
    private MockMvc mockMvc;


    @Autowired
    protected WebApplicationContext wac;

    @Before()  //这个方法在每个方法执行之前都会执行一遍
    public void setup()
    {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build(); //初始化MockMvc对象
    }
    @Test
    public void login_manager() throws Exception  {
        String responseString = mockMvc.perform
                        (
                                post("/user/login-manager")
                                        .contentType(MediaType.APPLICATION_FORM_URLENCODED)//数据的格式
                                        .param("work_num","worng11")
                                        .param("password","worng11")//添加参数(可以添加多个)
                        )
                .andExpect(status().isOk())
                .andDo(print())         //打印出请求和相应的内容
                .andReturn().getResponse().getContentAsString();   //将相应的数据转换为字符串
        System.out.println("-----返回的json = " + responseString);
    }
   @Test
    public void register_manager() throws Exception  {
        String responseString = mockMvc.perform
                        (
                                post("/user/register-manager")
                                        .contentType(MediaType.APPLICATION_FORM_URLENCODED)//数据的格式
                                        .param("name","jia")
                                        .param("work_num","admin455")
                                        .param("password","admin666")
                                        .param("id_num","330682200010254000")
                                //添加参数(可以添加多个)
                        )
                .andExpect(status().isOk())
                .andDo(print())         //打印出请求和相应的内容
                .andReturn().getResponse().getContentAsString();   //将相应的数据转换为字符串
        System.out.println("-----返回的json = " + responseString);
    }
}