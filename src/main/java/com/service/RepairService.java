package com.service;

import com.pojo.CarRepair;

import java.io.IOException;
import java.util.List;

public interface RepairService {
    public void add(CarRepair carRepair) throws IOException;
    public void give_back(CarRepair carRepair) throws IOException;
    public List<CarRepair> find(CarRepair carRepair) throws IOException;
    public List<CarRepair> get_all() throws IOException;
}
