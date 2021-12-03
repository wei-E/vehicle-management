package com.mapper;

import com.pojo.Driver;
import com.pojo.Manager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.util.List;

public interface Usermapper {
    public void manager_register(Manager manager);
    public Manager manager_selectUserById(String work_num);
    public List<Manager> manager_selectAll();
    public List<Manager> manager_selectUserByCondition(Manager manager);
    public void manager_deleteById(String work_num);
    public void manager_updateByCondition(Manager manager);
    public void driver_register(Driver driver);
    public Driver driver_selectUserById(String work_num);
    public List<Driver> driver_selectAll();
    public List<Driver> driver_selectUserByCondition(Driver Driver);
    public void driver_deleteById(String work_num);
    public void driver_updateByCondition(Driver Driver);
}
