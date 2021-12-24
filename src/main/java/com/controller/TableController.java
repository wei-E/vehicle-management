package com.controller;

import com.alibaba.fastjson.JSON;
import com.pojo.TCar;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/manager")
public class TableController {
    @RequestMapping("/car-table1")
    public void car_table1(HttpServletResponse response) throws IOException {
        List<TCar> list = new ArrayList<TCar>();
        list.add(new TCar("火车", 30));
        list.add(new TCar("小车", 30));
        list.add(new TCar("大车", 40));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/car-table2")
    public void car_table2(HttpServletResponse response) throws IOException {
        List<TCar> list = new ArrayList<TCar>();
        list.add(new TCar("火车", 30));
        list.add(new TCar("小车", 30));
        list.add(new TCar("大车", 40));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/driver-table")
    public void driver_table(HttpServletResponse response) throws IOException {
        List<TCar> list = new ArrayList<TCar>();
        list.add(new TCar("火车", 30));
        list.add(new TCar("小车", 30));
        list.add(new TCar("大车", 40));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
}
