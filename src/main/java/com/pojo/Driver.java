package com.pojo;

public class Driver {
    private String work_num;
    private String name;
    private String password;
    private String id_num;

    public String getWork_num() {
        return work_num;
    }

    public void setWork_num(String work_num) {
        this.work_num = work_num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getId_num() {
        return id_num;
    }

    public void setId_num(String id_num) {
        this.id_num = id_num;
    }

    @Override
    public String toString() {
        return "Driver{" +
                "work_num='" + work_num + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", id_num='" + id_num + '\'' +
                '}';
    }
}
