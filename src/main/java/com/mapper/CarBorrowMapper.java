package com.mapper;

import com.pojo.CarBorrow;

import java.util.List;

public interface CarBorrowMapper {
    List<CarBorrow> carBorrow_selectAll();
    List<CarBorrow> carBorrow_selectByCondition(CarBorrow carBorrow);
    public void carBorrow_deleteById(Integer id);
    public void carBorrow_updateByCondition(CarBorrow carBorrow);
    public void carBorrow_add(CarBorrow carBorrow);
}
