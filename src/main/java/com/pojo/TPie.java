package com.pojo;

import java.io.Serializable;

public class TPie implements Serializable {
    private int value;
    private String name;
    public TPie(int value, String name) {
        super();
        this.value = value;
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
