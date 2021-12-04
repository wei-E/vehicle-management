package com.mapper;

import com.pojo.Car;

import java.util.List;

public interface Carmapper {
    public List<Car> car_selectAll();
    public List<Car> car_selectByCondition(Car car);
    public void car_deleteBylicense(String license);
    public void car_updateByCondition(Car car);
    public void car_add(Car car);
}
