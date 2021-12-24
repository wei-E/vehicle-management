package com.service;

import com.pojo.Maintenance;

import java.io.IOException;
import java.util.List;

public interface MainService {
    public void add(Maintenance main) throws IOException;
    public void give_back(Maintenance main) throws IOException;
    public List<Maintenance> find(Maintenance main) throws IOException;
    public List<Maintenance> get_all() throws IOException;
}
