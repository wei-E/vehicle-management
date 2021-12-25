package com.controller;

import com.pojo.Car;
import com.pojo.Driver;
import com.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/car")
public class MCarController {
    @Autowired
    public CarService carService;
    @RequestMapping("/delete")
    public ModelAndView delete(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-car");
        carService.delete_car(license);
        return model;
    }
    @RequestMapping("/jumpToUpdate")
    public ModelAndView jumpToUpdate(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car/change");
        Car car = new Car();
        car.setLicense(license);
        model.addObject("car", carService.find_car(car));
        return model;
    }
    @RequestMapping("/update")
    public ModelAndView update(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/information-car");
        carService.update_car(car);
        return model;
    }
    @RequestMapping("/jumpToAdd")
    public ModelAndView jumpToAdd() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car/add");
        return model;
    }
    @RequestMapping("/add")
    public ModelAndView add(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        car.setStatus("空闲");
        if (carService.add_car(car)) {
            model.setViewName("redirect:/manager/information-car");
        } else {
            model.addObject("message", "车牌号已被使用");
            model.setViewName("manager/car/add");
        }
        return model;
    }
    @RequestMapping("/show")
    public ModelAndView show() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car/show");
        return model;
    }
}
