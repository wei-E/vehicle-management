package com.service;

import com.pojo.Car;
import com.pojo.CarSend;

import java.io.IOException;
import java.util.List;

public interface CarService {
    public List<Car> get_cars() throws IOException;
    public void update_car(Car car) throws IOException;
    public void add_info_car(CarSend carSend) throws IOException;
    public void give_back(CarSend carSend) throws IOException;
    public String get_license(CarSend carSend) throws IOException;
    public List<Car> find_car(Car car) throws IOException;
    public void delete_car(String license) throws IOException;
    public boolean add_car(Car car) throws IOException;
    public List<CarSend> find_car_sends(CarSend carSend) throws IOException;
    public List<CarSend> get_car_sends() throws IOException;
    public List<CarSend> find_violation(CarSend carSend) throws IOException;
}
