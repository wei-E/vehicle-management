package com.service.impl;

import com.mapper.ViolationsMapper;
import com.pojo.Violations;
import com.service.ViolationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service("violationService")
public class ViolationServiceImpl implements ViolationService {
    @Autowired
    public ViolationsMapper violationMapper;
    @Override
    public List<Violations> get_Violations() throws IOException {
        return violationMapper.violations_selectAll();
    }
    @Override
    public List<Violations> find_Violations(Violations violation) throws IOException {
        return violationMapper.violations_selectByCondition(violation);
    }
}
