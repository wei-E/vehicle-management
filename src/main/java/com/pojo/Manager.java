package com.pojo;

public class Manager {
    private Integer id;
    private String work_num;
    private String name;
    private String password;

    @Override
    public String toString() {
        return "Manager{" +
                "id=" + id +
                ", work_num='" + work_num + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", id_num='" + id_num + '\'' +
                '}';
    }

    private String id_num;

    public Integer getId() {return id;}

    public void setId(Integer id) {this.id = id;}

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

}
