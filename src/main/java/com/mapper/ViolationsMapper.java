package com.mapper;

import com.pojo.Violations;

import java.util.List;

public interface ViolationsMapper {
    List<Violations> violations_selectAll();
    List<Violations> violations_selectByCondition(Violations violations);
    public void violations_deleteById(Integer id);
    public void violations_updateByCondition(Violations violations);
    public void violations_add(Violations violations);
}
