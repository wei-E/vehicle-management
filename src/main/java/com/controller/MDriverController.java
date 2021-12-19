package com.controller;

import com.pojo.Driver;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/driver")
public class MDriverController {
    @Autowired
    public UserService userService;
    @RequestMapping("/delete")
    public ModelAndView delete(String work_num) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-driver");
        userService.delete_driver(work_num);
        return model;
    }
    @RequestMapping("/jumpToUpdate")
    public ModelAndView jumpToUpdate(String work_num) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/driver/change");
        model.addObject("driver", userService.driver_find_one(work_num));
        return model;
    }
    @RequestMapping("/update")
    public ModelAndView update(Driver driver) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-driver");
        userService.update_driver(driver);
        return model;
    }
    @RequestMapping("/jumpToAdd")
    public ModelAndView jumpToAdd() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/driver/add");
        return model;
    }
    @RequestMapping("/add")
    public ModelAndView add(Driver driver) throws IOException {
        ModelAndView model = new ModelAndView();
        if (userService.driver_register(driver)) {
            model.setViewName("redirect:/manager/information-driver");
        } else {
            model.addObject("message", "驾驶员已存在");
            model.setViewName("manager/driver/add");
        }
        return model;
    }
}
