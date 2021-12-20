package com.pojo;

public class CarRepair {
    private Integer id;
    private String license;
    private String reason;
    private long time;
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

    @Override
    public String toString() {
        return "CarRepair{" +
                "id=" + id +
                ", license='" + license + '\'' +
                ", reason='" + reason + '\'' +
                ", time=" + time +
                '}';
    }
}
