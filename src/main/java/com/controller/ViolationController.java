package com.controller;

import com.pojo.CarSend;
import com.pojo.Violations;
import com.service.CarService;
import com.service.ViolationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("manager/violation")
public class ViolationController {
    @Autowired
    ViolationService violationService;
    @Autowired
    CarService carService;
    @RequestMapping("/jumpToAdd")
    public ModelAndView jumpToAdd() throws IOException {
        ModelAndView model = new ModelAndView();
        model.setViewName("manager/violations/add");
        return model;
    }
    @RequestMapping("/add")
    public ModelAndView add(String license, String reason, String time, String fines) throws IOException {
        ModelAndView model = new ModelAndView();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long date_time;
        try {
            date_time = sdf.parse(time).getTime() / 1000;
        } catch (Exception e) {
            date_time = 0;
            e.printStackTrace();
        }
        CarSend carSend = new CarSend();
        carSend.setLicense(license);
        carSend.setDeparture_time(date_time);
        carSend.setReturn_time(date_time);
        List<CarSend> carSendList = carService.find_violation(carSend);
        if (carSendList.size() > 0) {
            model.setViewName("redirect:/manager/information-violation");
            Violations violation = new Violations();
            violation.setLicense(license);
            violation.setReason(reason);
            violation.setTime(date_time);
            violation.setFines(Double.parseDouble(fines));
            violationService.add(violation);
        } else {
            model.addObject("message", "没有对应的出车记录,请检查输入的信息是否正确");
            model.setViewName("manager/violations/add");
        }
        return model;
    }
}
