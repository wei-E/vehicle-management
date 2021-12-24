package com.controller;

import com.pojo.Car;
import com.pojo.CarRepair;
import com.pojo.Time;
import com.service.CarService;
import com.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/car-repair")
public class CarRepairController {
    @Autowired
    public RepairService repairService;
    @Autowired
    public CarService carService;
    @RequestMapping("/now")
    public ModelAndView now(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-repair/information_now");
        if (car != null) {
            car.setStatus("维修中");
            model.addObject("list", carService.find_car(car));
        } else {
            car = new Car();
            car.setStatus("维修中");
            model.addObject("list", carService.find_car(car));
        }
        return model;
    }
    @RequestMapping("/finish")
    public ModelAndView finish(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/car-repair/now");
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("空闲");
        carService.update_car(car);
        CarRepair carRepair = new CarRepair();
        carRepair.setLicense(license);
        carRepair.setTime(System.currentTimeMillis() / 1000);
        repairService.give_back(carRepair);
        return model;
    }
    @RequestMapping("/all")
    public ModelAndView all(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-repair/information_finish");
        if (car == null) {
            car = new Car();
        }
        car.setStatus("空闲");
        model.addObject("list", carService.find_car(car));
        return model;
    }
    @RequestMapping("/jumpToRepair")
    public ModelAndView jumpToRepair(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-repair/add");
        model.addObject("license", license);
        return model;
    }
    @RequestMapping("/repair")
    public ModelAndView repair(String license, String reason) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/car-repair/all");
        CarRepair carRepair = new CarRepair();
        carRepair.setLicense(license);
        carRepair.setReason(reason);
        carRepair.setTime(0);
        repairService.add(carRepair);
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("维修中");
        carService.update_car(car);
        return model;
    }
    @RequestMapping("/past")
    public ModelAndView past(String license, String pre_time, String next_time) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-repair/information_past");
        if (license != null && pre_time != null && next_time != null) {
            CarRepair carRepair = new CarRepair();
            if (!"".equals(license)) {
                carRepair.setLicense(license);
            }
            Time time = new Time();
            carRepair.setPre_time(time.dateToStamp(pre_time));
            carRepair.setNext_time(time.dateToStamp(next_time));
            model.addObject("list", repairService.find(carRepair));
        } else {
            model.addObject("list", repairService.get_all());
        }
        return model;
    }
}
