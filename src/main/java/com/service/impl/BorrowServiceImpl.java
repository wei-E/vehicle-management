package com.service.impl;

import com.mapper.CarBorrowMapper;
import com.pojo.CarBorrow;
import com.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service("borrowService")
public class BorrowServiceImpl implements BorrowService {
    @Autowired
    CarBorrowMapper mapper;
    @Override
    public void add(CarBorrow carBorrow) throws IOException {
        mapper.carBorrow_add(carBorrow);
    }
    @Override
    public void give_back(CarBorrow carBorrow) throws IOException {
        mapper.carBorrow_updateReturn(carBorrow);
    }
    @Override
    public List<CarBorrow> find(CarBorrow carBorrow) throws IOException {
        return mapper.carBorrow_selectByCondition(carBorrow);
    }
    @Override
    public List<CarBorrow> get_all() throws IOException {
        return mapper.carBorrow_selectAll();
    }
}
