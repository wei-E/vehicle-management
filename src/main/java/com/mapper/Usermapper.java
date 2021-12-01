package com.mapper;

import com.pojo.Driver;
import com.pojo.Manager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public interface Usermapper {
    public void manager_register(Manager manager);
    public Manager manager_selectUserById(String work_num);
    public void driver_register(Driver driver);
    public Driver driver_selectUserById(String work_num);
}
