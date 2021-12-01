package com.service.impl;

import com.mapper.Usermapper;
import com.pojo.Driver;
import com.pojo.Manager;
import com.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    public Usermapper usermapper;
    @Override
    public boolean manager_register(Manager manager) throws IOException {
        Manager manager1 = usermapper.manager_selectUserById(manager.getWork_num());
        if (manager1 == null) {
            usermapper.manager_register(manager);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean manager_login(Manager manager) throws IOException {
        Manager manager1 = usermapper.manager_selectUserById(manager.getWork_num());
        if (manager1.getPassword().equals(manager.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean driver_register(Driver driver) throws IOException {
        Driver driver1 = usermapper.driver_selectUserById(driver.getWork_num());
        if (driver1 == null) {
            usermapper.driver_register(driver);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean driver_login(Driver driver) throws IOException {
        Driver driver1 = usermapper.driver_selectUserById(driver.getWork_num());
        if (driver1.getPassword().equals(driver.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
