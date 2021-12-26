package com.controller;

import com.pojo.Driver;
import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserService userService;
    @RequestMapping("/register-manager")
    public ModelAndView register_manager(Manager manager) throws IOException {
        ModelAndView model = new ModelAndView();
        if (userService.manager_register(manager)) {
            model.setViewName("welcome/login-manager");
        } else {
            model.addObject("message", "工号已存在");
            model.setViewName("welcome/register-manager");
        }
        return model;
    }

    @RequestMapping("/login-manager")
    public ModelAndView login_manager(Manager manager, HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        if(userService.manager_login(manager)){
            session.setAttribute("user", manager.getWork_num());
            model.setViewName("redirect:/manager/welcome");
        } else {
            model.addObject("message", "用户名或密码错误");
            model.setViewName("welcome/login-manager");
        }
        return model;
    }

    @RequestMapping("/register-driver")
    public ModelAndView register_driver(Driver driver) throws IOException {
        ModelAndView model = new ModelAndView();
        if (userService.driver_register(driver)) {
            model.setViewName("welcome/login-driver");
        } else {
            model.addObject("message", "工号已存在");
            model.setViewName("welcome/register-driver");
        }
        return model;
    }

    @RequestMapping("/login-driver")
    public ModelAndView login_driver(Driver driver, HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        if(userService.driver_login(driver)){
            session.setAttribute("user", driver.getWork_num());
            model.setViewName("redirect:/driver/welcome");
        } else {
            model.addObject("message", "用户名或密码错误");
            model.setViewName("welcome/login-driver");
        }
        return model;
    }
}
