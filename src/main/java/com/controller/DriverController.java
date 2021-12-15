package com.controller;

import com.pojo.Car;
import com.pojo.CarSend;
import com.pojo.Driver;
import com.service.CarService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/driver")
public class DriverController {
    @Autowired
    public UserService userService;
    @Autowired
    public CarService carService;
    @RequestMapping("/welcome")
    public ModelAndView welcome() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome/welcome-driver");
        return model;
    }
    @RequestMapping("/information")
    public ModelAndView information(HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("driver/driver-information");
        String work_num = (String) session.getAttribute("user");
        model.addObject("driver", userService.driver_find_one(work_num));
        return model;
    }
    @RequestMapping("/info-car")
    public ModelAndView info_car(HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        String work_num = (String) session.getAttribute("user");
        Driver driver = userService.driver_find_one(work_num);
        if (driver.getStatus().equals("出车")) {
            model.setViewName("driver/driver-status");
            model.addObject("driver", driver);
        } else {
            model.addObject("carList", carService.get_cars());
            model.setViewName("driver/driver-car-information");
        }
        return model;
    }

    @RequestMapping("/update")
    public ModelAndView update(String name, String id_num, HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("driver/driver-information");
        String work_num = (String) session.getAttribute("user");
        Driver driver = new Driver();
        driver.setName(name);
        driver.setId_num(id_num);
        driver.setWork_num(work_num);
        userService.update_driver(driver);
        model.addObject("driver", userService.driver_find_one(work_num));
        return model;
    }

    @RequestMapping("driver-car-send")
    public ModelAndView driver_car_send(String license) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("driver/driver-car-send");
        model.addObject("license", license);
        return model;
    }

    @RequestMapping("/out-car")
    public ModelAndView out_car(String reason, String license, HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome/welcome-driver");  //成功后跳转的界面

        //下面部分用于更新车辆信息
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("出车");
        carService.update_car(car);

        //下面用于更新司机信息
        String work_num = (String) session.getAttribute("user");
        Driver driver = new Driver();
        driver.setWork_num(work_num);
        driver.setStatus("出车");
        userService.update_driver(driver);

        //下面用于添加信息到派车信息表
        CarSend info = new CarSend();
        info.setDriver_id(work_num);
        info.setLicense(license);
        info.setReason(reason);
        long departure_time = System.currentTimeMillis();
        info.setDeparture_time(departure_time);
        carService.add_info_car(info);

        return model;
    }

    @RequestMapping("/in-car")
    public ModelAndView in_car(HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome/welcome-driver");  //成功后跳转的界面

        //下面用于更新司机信息
       String work_num = (String) session.getAttribute("user");
        Driver driver = new Driver();
        driver.setWork_num(work_num);
        driver.setStatus("空闲");
        userService.update_driver(driver);

        //下面部分用于更新车辆信息
        CarSend info1 = new CarSend();
        info1.setDriver_id(work_num);
        String license = carService.get_license(info1);
        Car car = new Car();
        car.setLicense(license);
        car.setStatus("空闲");
        carService.update_car(car);

        //下面用于更新信息到派车信息表
        CarSend info = new CarSend();
        info.setLicense(license);
        long return_time = System.currentTimeMillis();
        info.setReturn_time(return_time);
        carService.give_back(info);

        return model;
    }

    @RequestMapping("/status")
    public ModelAndView status(HttpSession session) throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("driver/driver-status");
        String work_num = (String) session.getAttribute("user");
        Driver driver = userService.driver_find_one(work_num);
        model.addObject("driver", driver);
        return model;
    }
}
