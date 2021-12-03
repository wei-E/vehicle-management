package com.controller;

import com.pojo.Manager;
import com.service.UserService;
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
    @RequestMapping("/information")
    public ModelAndView information(Manager manager) throws IOException {
        ModelAndView model = new ModelAndView();
        if (manager == null) {
            model.setViewName("welcome-manager");
            model.addObject("managerList", userService.manager_find_all());
            return model;
        } else {
            model.setViewName("welcome-manager");
            model.addObject("managerList", userService.manager_find_condition(manager));
            return model;
        }
    }
}
