package com.mapper;

import com.pojo.CarSend;

import java.util.List;

public interface CarSendmapper {
    List<CarSend> carSend_selectAll();
    List<CarSend> carSend_selectByCondition(CarSend carSend);
    void carSend_add(CarSend carSend);
    void carSend_updateReturn(CarSend carSend);
}
