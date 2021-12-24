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
import java.util.List;

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
        if (manager1 == null) {
            return false;
        }
        if (manager1.getPassword().equals(manager.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Manager> manager_find_all() throws IOException {
        return usermapper.manager_selectAll();
    }

    @Override
    public List<Manager> manager_find_condition(Manager manager) throws IOException {
        return usermapper.manager_selectUserByCondition(manager);
    }

    @Override
    public void update_manager(Manager manager) throws IOException {
        usermapper.manager_updateByCondition(manager);
    }

    @Override
    public void delete_manager(String work_num) throws IOException {
        usermapper.manager_deleteById(work_num);
    }

    @Override
    public boolean driver_register(Driver driver) throws IOException {
        Driver driver1 = usermapper.driver_selectUserById(driver.getWork_num());
        if (driver1 == null) {
            driver.setStatus("未出车");
            usermapper.driver_register(driver);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean driver_login(Driver driver) throws IOException {
        Driver driver1 = usermapper.driver_selectUserById(driver.getWork_num());
        if (driver1 == null) {
            return false;
        }
        if (driver1.getPassword().equals(driver.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Driver> driver_find_all() throws IOException {
        return usermapper.driver_selectAll();
    }

    @Override
    public List<Driver> driver_find_condition(Driver driver) throws IOException {
        return usermapper.driver_selectUserByCondition(driver);
    }

    @Override
    public Driver driver_find_one(String work_num) throws IOException {
        return usermapper.driver_selectUserById(work_num);
    }

    @Override
    public void update_driver(Driver driver) throws IOException {
        usermapper.driver_updateByCondition(driver);
    }

    @Override
    public void delete_driver(String work_num) throws IOException {
        usermapper.driver_deleteById(work_num);
    }
}
