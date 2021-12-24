package com.service;

import com.pojo.CarBorrow;

import java.io.IOException;
import java.util.List;

public interface BorrowService {
    public void add(CarBorrow carBorrow) throws IOException;
    public void give_back(CarBorrow carBorrow) throws IOException;
    public List<CarBorrow> find(CarBorrow carBorrow) throws IOException;
    public List<CarBorrow> get_all() throws IOException;
}
