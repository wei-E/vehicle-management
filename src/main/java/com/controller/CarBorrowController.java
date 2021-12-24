package com.controller;

import com.pojo.Car;
import com.pojo.CarBorrow;
import com.pojo.Time;
import com.service.BorrowService;
import com.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/manager/car-borrow")
public class CarBorrowController {
    @Autowired
    public BorrowService borrowService;
    @Autowired
    public CarService carService;
    @RequestMapping("/now")
    public ModelAndView now(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-borrow/information_now");
        if (car != null) {
            car.setStatus("出借中");
            model.addObject("list", carService.find_car(car));
        } else {
            car = new Car();
            car.setStatus("出借中");
            model.addObject("list", carService.find_car(car));
        }
        return model;
    }
    @RequestMapping("/finish")
    public ModelAndView finish(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/car-borrow/now");
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("空闲");
        carService.update_car(car);
        CarBorrow carBorrow = new CarBorrow();
        carBorrow.setLicense(license);
        carBorrow.setReturn_time(System.currentTimeMillis() / 1000);
        borrowService.give_back(carBorrow);
        return model;
    }
    @RequestMapping("/all")
    public ModelAndView all(Car car) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-borrow/information_free");
        if (car == null) {
            car = new Car();
        }
        car.setStatus("空闲");
        model.addObject("list", carService.find_car(car));
        return model;
    }
    @RequestMapping("/jumpToBorrow")
    public ModelAndView jumpToBorrow(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-borrow/add");
        model.addObject("license", license);
        return model;
    }
    @RequestMapping("/borrow")
    public ModelAndView borrow(String license, String reason, String name) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/manager/car-borrow/all");
        CarBorrow carBorrow = new CarBorrow();
        carBorrow.setLicense(license);
        carBorrow.setReason(reason);
        carBorrow.setName(name);
        carBorrow.setBorrow_time(System.currentTimeMillis() / 1000);
        carBorrow.setReturn_time(0);
        borrowService.add(carBorrow);
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("出借中");
        carService.update_car(car);
        return model;
    }
    @RequestMapping("/past")
    public ModelAndView past(String license, String name, String pre_time, String next_time) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/car-borrow/information_past");
        if (license != null && name != null && pre_time != null && next_time != null) {
            CarBorrow carBorrow = new CarBorrow();
            if (!"".equals(license)) {
                carBorrow.setLicense(license);
            }
            if (!"".equals(name)) {
                carBorrow.setName(name);
            }
            Time time = new Time();
            carBorrow.setPre_time(time.dateToStamp(pre_time));
            carBorrow.setNext_time(time.dateToStamp(next_time));
            model.addObject("list", borrowService.find(carBorrow));
        } else {
            model.addObject("list", borrowService.get_all());
        }
        return model;
    }
}
