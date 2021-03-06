package com.service;

import com.pojo.Driver;
import com.pojo.Manager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.io.IOException;
import java.util.List;

public interface UserService {
    public boolean manager_register(Manager manager) throws IOException;
    public boolean manager_login(Manager manager) throws IOException;
    public List<Manager> manager_find_all() throws IOException;
    public List<Manager> manager_find_condition(Manager manager) throws IOException;
    public void delete_manager(String work_num) throws IOException;
    public void update_manager(Manager manager) throws IOException;
    public boolean driver_register(Driver driver) throws IOException;
    public boolean driver_login(Driver driver) throws IOException;
    public List<Driver> driver_find_all() throws IOException;
    public List<Driver> driver_find_condition(Driver driver) throws IOException;
    public Driver driver_find_one(String work_num) throws IOException;
    public void update_driver(Driver driver) throws IOException;
    public void delete_driver(String work_num) throws IOException;
}
