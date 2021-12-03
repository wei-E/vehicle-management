package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class LogARegisterController {
    @RequestMapping("/driver")
    public String driver() {
        //设置视图名称
        return "index-driver";
    }

    @RequestMapping("/manager")
    public String manager() {
        //设置视图名称
        return "index-manager";
    }

    @RequestMapping("/register-manager")
    public String register_manager() {
        //设置视图名称
        return "register-manager";
    }

    @RequestMapping("/login-manager")
    public String login_manager() {
        //设置视图名称
        return "login-manager";
    }

    @RequestMapping("/register-driver")
    public String register_driver() {
        //设置视图名称
        return "register-driver";
    }

    @RequestMapping("/login-driver")
    public String login_driver() {
        //设置视图名称
        return "login-driver";
    }
}
