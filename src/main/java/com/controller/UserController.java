package com.controller;

import com.pojo.Driver;
import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
            return "welcome/login-manager";
        } else {
            return "welcome/register-manager";
        }
    }

    @RequestMapping("/login-manager")
    public String login_manager(Manager manager, HttpSession session) throws IOException {
        if(userService.manager_login(manager)){
            session.setAttribute("user", manager.getWork_num());
            return "redirect:/manager/welcome";
        } else {
            return "welcome/login-manager";
        }
    }

    @RequestMapping("/register-driver")
    public String register_driver(Driver driver) throws IOException {
        if (userService.driver_register(driver)) {
            return "welcome/login-driver";
        } else {
            return "welcome/register-driver";
        }
    }

    @RequestMapping("/login-driver")
    public String login_driver(Driver driver, HttpSession session) throws IOException {
        if(userService.driver_login(driver)){
            session.setAttribute("user", driver.getWork_num());
            return "redirect:/driver/welcome";
        } else {
            return "welcome/login-driver";
        }
    }
}
