package com.pojo;

public class Violations {
    private Integer id;
    private String license;
    private String reason;
    private long time;
    private double fines;
    private long pre_time;
    private long next_time;
    private String work_num;
    private String name;

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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public double getFines() {
        return fines;
    }

    public void setFines(double fines) {
        this.fines = fines;
    }

    @Override
    public String toString() {
        return "Violations{" +
                "id=" + id +
                ", license='" + license + '\'' +
                ", reason='" + reason + '\'' +
                ", time=" + time +
                ", fines=" + fines +
                ", pre_time=" + pre_time +
                ", next_time=" + next_time +
                ", work_num='" + work_num + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
