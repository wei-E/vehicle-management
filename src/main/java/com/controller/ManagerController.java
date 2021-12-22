package com.controller;

import com.pojo.*;
import com.service.CarService;
import com.service.UserService;
import com.service.ViolationService;
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
    @Autowired
    public CarService carService;
    @Autowired
    public ViolationService violationService;
    @RequestMapping("/welcome")
    public ModelAndView welcome() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome/welcome-manager");
        return model;
    }
    @RequestMapping("/information-manager")
    public ModelAndView information_manager(Manager manager) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/manager/information");
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
        model.setViewName("manager/driver/information");
        if (driver != null) {   //搜索信息
            model.addObject("driverList", userService.driver_find_condition(driver));
        } else {    //显示全部信息
            model.addObject("driverList", userService.driver_find_all());
        }
        return model;
    }
    @RequestMapping("/information-car")
    public ModelAndView information_car(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car/information");
        if (car != null) {   //搜索信息
            model.addObject("carList", carService.find_car(car));
        } else {    //显示全部信息
            model.addObject("carList", carService.get_cars());
        }
        return model;
    }
    @RequestMapping("/information-car-send")
    public ModelAndView information_car_send(CarSend carSend) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/send-car");
        if (carSend != null) {   //搜索信息
            model.addObject("carSendList", carService.find_car_sends(carSend));
        } else {    //显示全部信息
            model.addObject("carSendList", carService.get_car_sends());
        }
        return model;
    }
    @RequestMapping("/information-violation")
    public ModelAndView information_violation(Violations violation) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/violations/information");
        if (violation != null) {   //搜索信息
            model.addObject("violationList", violationService.find_Violations(violation));
        } else {    //显示全部信息
            model.addObject("violationList", violationService.get_Violations());
        }
        return model;
    }
}
