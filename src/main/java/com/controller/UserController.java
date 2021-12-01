package com.controller;

import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserService userService;
    @RequestMapping("/register")
    public String register(Manager manager) throws IOException {
        if (userService.manager_register(manager)) {
            return "login";
        } else {
            return "register";
        }
    }

    @RequestMapping("/login")
    public String login(Manager manager) throws IOException {
        if(userService.manager_login(manager)){
            return "success";
        }
        else {
            return "login";
        }
    }
}
