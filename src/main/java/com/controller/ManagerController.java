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
import java.text.SimpleDateFormat;

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
    @RequestMapping("/welcome1")
    public ModelAndView welcome1() throws IOException{
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/welcome");
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
    public ModelAndView information_violation(String license, String work_num, String name, String reason, String pre_time, String next_time, String fines) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/violations/information");
        if (license != null && work_num != null && name != null && reason != null && pre_time != null && next_time != null && fines != null) {   //搜索信息
            Violations violation = new Violations();
            violation.setLicense(license);
            violation.setWork_num(work_num);
            violation.setName(name);
            violation.setReason(reason);
            Time time = new Time();
            if (!"".equals(pre_time) && !"".equals(next_time)) {
                try {
                    violation.setPre_time(time.dateToStamp(pre_time));
                    violation.setNext_time(time.dateToStamp(next_time));
                } catch (Exception e) {
                    violation.setPre_time(0);
                    violation.setNext_time(0);
                    e.printStackTrace();
                }
            } else {
                violation.setPre_time(0);
                violation.setNext_time(0);
            }
            if (!"".equals(fines)) {
                violation.setFines(Double.parseDouble(fines));
            } else {
                violation.setFines(0);
            }
            model.addObject("violationList", violationService.find_Violations(violation));
        } else {    //显示全部信息
            model.addObject("violationList", violationService.get_Violations());
        }
        return model;
    }
}
