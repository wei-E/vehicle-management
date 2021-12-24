package com.mapper;

import com.pojo.CarRepair;

import java.util.List;

public interface CarRepairMapper {
    List<CarRepair> carRepair_selectAll();
    List<CarRepair> carRepair_selectByCondition(CarRepair carRepair);
    public void carRepair_deleteById(Integer id);
    public void carRepair_updateByCondition(CarRepair carRepair);
    public void carRepair_updateTime(CarRepair carRepair);
    public void carRepair_add(CarRepair carRepair);
}
