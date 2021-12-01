package com.mapper;

import com.pojo.Manager;

public interface Usermapper {
    public void manager_register(Manager manager);
    public Manager manager_selectUserById(String work_num);
}
