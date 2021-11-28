package com.service;

import com.pojo.Manager;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

public class mybatisService {
    @Test
    public void test() throws IOException {
        InputStream resources = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(resources);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Manager p = sqlSession.selectOne("com.mapper.Usermapper.manager_selectUserById","20160102");
        System.out.println(p);
    }
}
