package com.controller;

import com.alibaba.fastjson.JSON;
import com.pojo.TBar;
import com.pojo.TPie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/manager")
public class TableController {
    @RequestMapping("/car/table1")
    public void car_table1(HttpServletResponse response) throws IOException {
        List<TBar> list = new ArrayList<TBar>();
        list.add(new TBar("火车", 30));
        list.add(new TBar("小车", 30));
        list.add(new TBar("大车", 40));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/car/table2")
    public void car_table2(HttpServletResponse response) throws IOException {
        List<TPie> list = new ArrayList<TPie>();
        list.add(new TPie(30, "火车"));
        list.add(new TPie(30, "小车"));
        list.add(new TPie(40, "大车"));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
    @RequestMapping("/driver/table")
    public void driver_table(HttpServletResponse response) throws IOException {
        List<TPie> list = new ArrayList<TPie>();
        list.add(new TPie(30, "火车"));
        list.add(new TPie(30, "小车"));
        list.add(new TPie(40, "大车"));
        String json = JSON.toJSONString(list);
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
}
