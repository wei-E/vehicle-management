package com.pojo;

public class Maintenance {
    private Integer id;
    private String license;
    private long last_time;
    private long pre_time;
    private long next_time;

    public long getPre_time() {
        return pre_time;
    }

    public void setPre_time(long pre_time) {
        this.pre_time = pre_time;
    }

    public long getNext_time() {
        return next_time;
    }

    public void setNext_time(long next_time) {
        this.next_time = next_time;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public long getLast_time() {
        return last_time;
    }

    public void setLast_time(long last_time) {
        this.last_time = last_time;
    }

    @Override
    public String toString() {
        return "Maintenance{" +
                "id=" + id +
                ", license='" + license + '\'' +
                ", last_time='" + last_time + '\'' +
                '}';
    }
}
