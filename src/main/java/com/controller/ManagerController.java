package com.controller;

import com.pojo.Driver;
import com.pojo.Manager;
import com.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager")
public class ManagerController {
    @Autowired
    public UserService userService;
    @RequestMapping("/information-manager")
    public ModelAndView information_manager(Manager manager) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome-manager");
        if (manager != null) {
            model.addObject("managerList", userService.manager_find_condition(manager));
        } else {
            model.addObject("managerList", userService.manager_find_all());
        }
        return model;
    }
    @RequestMapping("/information-driver")
    public ModelAndView information_driver(Driver driver) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome-manager");
        if (driver != null) {
            model.addObject("driverList", userService.driver_find_condition(driver));
        } else {
            model.addObject("driverList", userService.driver_find_all());
        }
        return model;
    }
}
