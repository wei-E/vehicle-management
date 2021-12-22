package com.service;

import com.pojo.Violations;

import java.io.IOException;
import java.util.List;

public interface ViolationService {
    public List<Violations> get_Violations() throws IOException;
    public List<Violations> find_Violations(Violations violation) throws IOException;
    public void add(Violations violation) throws IOException;
}
