package com.service.impl;

import com.mapper.MaintenanceMapper;
import com.pojo.Maintenance;
import com.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service("mainService")
public class MainServiceImpl implements MainService {
    @Autowired
    MaintenanceMapper mapper;
    @Override
    public void add(Maintenance main) throws IOException {
        mapper.maintenance_add(main);
    }
    @Override
    public void give_back(Maintenance main) throws IOException {
        mapper.maintenance_updateTime(main);
    }
    @Override
    public List<Maintenance> find(Maintenance main) throws IOException {
        return mapper.maintenance_selectByCondition(main);
    }
    @Override
    public List<Maintenance> get_all() throws IOException {
        return mapper.maintenance_selectAll();
    }
}
