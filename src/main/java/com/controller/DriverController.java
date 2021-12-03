package com.controller;

import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/driver")
public class DriverController {
    @Autowired
    public UserService userService;
    @RequestMapping("/information")
    public ModelAndView information(String work_num) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome-manager");
        model.addObject("driver", userService.driver_find_one(work_num));
        return model;
    }
}
