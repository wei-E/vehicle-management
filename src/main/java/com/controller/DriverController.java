package com.controller;

import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("/driver")
public class DriverController {
    @Autowired
    public UserService userService;
    @RequestMapping("/information")
    public String register_manager(Manager manager) throws IOException {
        if (userService.manager_register(manager)) {
            return "login-manager";
        } else {
            return "register-manager";
        }
    }
}
