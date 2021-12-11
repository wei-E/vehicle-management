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
}
