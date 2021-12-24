package com.pojo;

import java.io.Serializable;

public class TBar implements Serializable {
    private String type;
    private int num;
    public TBar(String type, int num) {
        super();
        this.type = type;
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "type:" + type + ", num:" + String.valueOf(num);
    }
}
