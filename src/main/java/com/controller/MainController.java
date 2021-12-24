package com.controller;

import com.pojo.Car;
import com.pojo.CarBorrow;
import com.pojo.Maintenance;
import com.pojo.Time;
import com.service.BorrowService;
import com.service.CarService;
import com.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/main")
public class MainController {
    @Autowired
    public MainService mainService;
    @Autowired
    public CarService carService;
    @RequestMapping("/now")
    public ModelAndView now(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/maintenance/information_now");
        if (car == null) {
            car = new Car();
        }
        car.setStatus("保养中");
        model.addObject("list", carService.find_car(car));
        return model;
    }
    @RequestMapping("/finish")
    public ModelAndView finish(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/main/now");
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("空闲");
        carService.update_car(car);
        Maintenance main = new Maintenance();
        main.setLicense(license);
        main.setLast_time(System.currentTimeMillis() / 1000);
        mainService.give_back(main);
        return model;
    }
    @RequestMapping("/all")
    public ModelAndView all(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/maintenance/information_finish");
        if (car == null) {
            car = new Car();
        }
        car.setStatus("空闲");
        model.addObject("list", carService.find_car(car));
        return model;
    }
    @RequestMapping("/main")
    public ModelAndView main(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/main/all");
        Maintenance main = new Maintenance();
        main.setLicense(license);
        main.setLast_time(0);
        mainService.add(main);
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("保养中");
        carService.update_car(car);
        return model;
    }
    @RequestMapping("/past")
    public ModelAndView past(String license, String pre_time, String next_time) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/maintenance/information_past");
        if (license != null && pre_time != null && next_time != null) {
            Maintenance main = new Maintenance();
            if (!"".equals(license)) {
                main.setLicense(license);
            }
            Time time = new Time();
            main.setPre_time(time.dateToStamp(pre_time));
            main.setNext_time(time.dateToStamp(next_time));
            model.addObject("list", mainService.find(main));
        } else {
            model.addObject("list", mainService.get_all());
        }
        return model;
    }
}
