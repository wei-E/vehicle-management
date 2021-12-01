package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class WelcomeController {
    @RequestMapping("/register")
    public String register() {
        //设置视图名称
        return "register";
    }
    @RequestMapping("/login")
    public String login() {
        //设置视图名称
        return "login";
    }
}
