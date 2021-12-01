package com.controller;

import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserService userService;
    @RequestMapping("/register")
    @ResponseBody
    public String register(Manager manager) throws IOException {
        userService.manager_register(manager);
        return "注册成功";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(Manager manager) throws IOException {
        Manager manager1=userService.manager_selectUserById(manager.getWork_num());
        if(manager1.getPassword().equals(manager.getPassword())){
            return "登录成功";
        }
        else
        return "登录失败";
    }
}
