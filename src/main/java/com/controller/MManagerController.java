package com.controller;

import com.pojo.Manager;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/manager")
public class MManagerController {
    @Autowired
    public UserService userService;
    @RequestMapping("/jumpToChange")
    public ModelAndView jumpToChange(String work_num) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/manager/change");
        Manager manager = new Manager();
        manager.setWork_num(work_num);
        model.addObject("manager", userService.manager_find_condition(manager).get(0));
        return model;
    }
    @RequestMapping("/update")
    public ModelAndView update(Manager manager) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-driver");
        userService.update_manager(manager);
        return model;
    }
    @RequestMapping("/delete")
    public ModelAndView delete(String work_num) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-driver");
        userService.delete_manager(work_num);
        return model;
    }
}
