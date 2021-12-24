package com.mapper;

import com.pojo.Maintenance;

import java.util.List;

public interface MaintenanceMapper {
    List<Maintenance> maintenance_selectAll();
    List<Maintenance> maintenance_selectByCondition(Maintenance maintenance);
    public void maintenance_deleteById(Integer id);
    public void maintenance_updateByCondition(Maintenance maintenance);
    public void maintenance_add(Maintenance maintenance);
    public void maintenance_updateTime(Maintenance maintenance);
}
