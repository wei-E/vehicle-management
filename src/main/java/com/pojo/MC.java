package com.pojo;

public class MC {
    private String license;
    private String type;
    private String status;
    private long time;
    public MC(String license, String type, String status, long time) {
        this.license = license;
        this.type = type;
        this.status = status;
        this.time = time;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }
}
