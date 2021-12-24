package com.service.impl;

import com.mapper.CarRepairMapper;
import com.pojo.CarRepair;
import com.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service("repairService")
public class RepairServiceImpl implements RepairService {
    @Autowired
    CarRepairMapper mapper;
    @Override
    public void add(CarRepair carRepair) throws IOException {
        mapper.carRepair_add(carRepair);
    }
    @Override
    public void give_back(CarRepair carRepair) throws IOException {
        mapper.carRepair_updateTime(carRepair);
    }
    @Override
    public List<CarRepair> find(CarRepair carRepair) throws IOException {
        return mapper.carRepair_selectByCondition(carRepair);
    }
    @Override
    public List<CarRepair> get_all() throws IOException {
        return mapper.carRepair_selectAll();
    }
}
