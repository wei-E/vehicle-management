package com.controller;

import com.pojo.Driver;
import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.annotation.HttpConstraint;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserService userService;
    @RequestMapping("/register-manager")
    public String register_manager(Manager manager) throws IOException {
        if (userService.manager_register(manager)) {
            return "login-manager";
        } else {
            return "register-manager";
        }
    }

    @RequestMapping("/login-manager")
    public String login_manager(Manager manager, HttpSession session) throws IOException {
        if(userService.manager_login(manager)){
            session.setAttribute("user", manager.getWork_num());
            return "redirect:/manager/information-manager";
        } else {
            return "login-manager";
        }
    }

    @RequestMapping("/register-driver")
    public String register_driver(Driver driver) throws IOException {
        if (userService.driver_register(driver)) {
            return "login-driver";
        } else {
            return "register-driver";
        }
    }

    @RequestMapping("/login-driver")
    public String login_driver(Driver driver, HttpSession session) throws IOException {
        if(userService.driver_login(driver)){
            session.setAttribute("user", driver.getWork_num());
            return "welcome-driver";
        } else {
            return "login-driver";
        }
    }
}
