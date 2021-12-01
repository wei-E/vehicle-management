package com.service.impl;

import com.mapper.Usermapper;
import com.pojo.Manager;
import com.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    public Usermapper usermapper;
    @Override
    public void manager_register(Manager manager) throws IOException {
        usermapper.manager_register(manager);
    }

    @Override
    public Manager manager_selectUserById(String work_num) throws IOException {
        return usermapper.manager_selectUserById(work_num);
    }
}
