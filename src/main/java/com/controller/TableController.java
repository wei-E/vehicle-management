package com.controller;

import com.alibaba.fastjson.JSON;
import com.pojo.Car;
import com.pojo.Driver;
import com.pojo.TBar;
import com.pojo.TPie;
import com.service.CarService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;


@Controller
@RequestMapping("/manager")
public class TableController {
    @Autowired
    public CarService carService;
    @Autowired
    public UserService userService;
    @RequestMapping("/car/table1")
    public void car_table1(HttpServletResponse response) throws IOException {
        List<Car> carList = carService.get_cars();
        List<TBar> list = new ArrayList<TBar>();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        for (int i = 0; i < carList.size(); ++i) {
            String type = carList.get(i).getType();
            if (map.containsKey(type) == true) {
                int value = map.get(type);
                map.put(type, ++value);
            } else {
                map.put(type, 1);
            }
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            int value = map.get(key);
            list.add(new TBar(key, value));
        }
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/car/table2")
    public void car_table2(HttpServletResponse response) throws IOException {
        List<Car> carList = carService.get_cars();
        List<TPie> list = new ArrayList<TPie>();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        for (int i = 0; i < carList.size(); ++i) {
            String status = carList.get(i).getStatus();
            if (map.containsKey(status) == true) {
                int value = map.get(status);
                map.put(status, ++value);
            } else {
                map.put(status, 1);
            }
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            int value = map.get(key);
            list.add(new TPie(value, key));
        }
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/driver/table")
    public void driver_table(HttpServletResponse response) throws IOException {
        List<Driver> driverList = userService.driver_find_all();
        List<TPie> list = new ArrayList<TPie>();
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        for (int i = 0; i < driverList.size(); ++i) {
            String status = driverList.get(i).getStatus();
            if (map.containsKey(status) == true) {
                int value = map.get(status);
                map.put(status, ++value);
            } else {
                map.put(status, 1);
            }
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            int value = map.get(key);
            list.add(new TPie(value, key));
        }
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
}
