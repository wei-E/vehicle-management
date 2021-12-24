package com.pojo;

public class CarBorrow {
    private Integer id;
    private String license;
    private String reason;
    private long borrow_time;
    private long return_time;
    private long pre_time;
    private long next_time;

    public long getBorrow_time() {
        return borrow_time;
    }

    public void setBorrow_time(long borrow_time) {
        this.borrow_time = borrow_time;
    }

    public long getReturn_time() {
        return return_time;
    }

    public void setReturn_time(long return_time) {
        this.return_time = return_time;
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

    private String name;

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



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
