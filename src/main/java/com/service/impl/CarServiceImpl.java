package com.service.impl;

import com.mapper.CarSendmapper;
import com.mapper.Carmapper;
import com.pojo.Car;
import com.pojo.CarSend;
import com.service.CarService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service("carService")
public class CarServiceImpl implements CarService {
    @Autowired
    public Carmapper carmapper;
    public CarSendmapper carSendmapper;
    @Override
    public List<Car> get_cars() throws IOException {
        return carmapper.car_selectAll();
    }

    @Override
    public void update_car(Car car) throws IOException {
        carmapper.car_updateByCondition(car);
    }

    @Override
    public void add_info_car(CarSend carSend) throws IOException {
        carSendmapper.carSend_add(carSend);
    }

    @Override
    public void give_back(CarSend carSend) throws IOException {
        carSendmapper.carSend_updateReturn(carSend);
    }

    @Override
    public String get_license(CarSend carSend) throws IOException {
        return carSendmapper.carSend_selectLicense(carSend);
    }

    @Override
    public List<Car> find_car(Car car) throws IOException {
        return carmapper.car_selectByCondition(car);
    }

    @Override
    public void delete_car(String license) throws IOException {
        carmapper.car_deleteBylicense(license);
    }

    @Override
    public boolean add_car(Car car) throws IOException {
        Car car1 = new Car();
        car1.setLicense(car.getLicense());
        List<Car> carList = carmapper.car_selectByCondition(car1);
        if (carList.isEmpty()) {
            carmapper.car_add(car);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<CarSend> find_car_sends(CarSend carSend) throws IOException {
        return carSendmapper.carSend_selectByCondition(carSend);
    }

    @Override
    public List<CarSend> get_car_sends() throws IOException {
        return carSendmapper.carSend_selectAll();
    }
}
