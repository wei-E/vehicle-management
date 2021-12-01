package com.service;

import com.pojo.Manager;

import java.io.IOException;

public interface UserService {
    public void manager_register(Manager manager) throws IOException;
    public Manager manager_selectUserById(String work_num) throws IOException;
}
