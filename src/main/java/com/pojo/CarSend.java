package com.pojo;

public class CarSend {
    private Integer id;
    private String license;
    private String driver_id;
    private String reason;
    private long departure_time;
    private long return_time;
    private Driver driver;

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

    public String getDriver_id() {
        return driver_id;
    }

    public void setDriver_id(String driver_id) {
        this.driver_id = driver_id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public long getDeparture_time() {
        return departure_time;
    }

    public void setDeparture_time(long departure_time) {
        this.departure_time = departure_time;
    }

    public long getReturn_time() {
        return return_time;
    }

    public void setReturn_time(long return_time) {
        this.return_time = return_time;
    }

    public Driver getDriver() {
        return driver;
    }

    public void setDriver(Driver driver) {
        this.driver = driver;
    }

    @Override
    public String toString() {
        return "CarSend{" +
                "license='" + license + '\'' +
                ", driver_id='" + driver_id + '\'' +
                ", reason='" + reason + '\'' +
                ", departure_time=" + departure_time +
                ", return_time=" + return_time +
                ", driver=" + driver +
                '}';
    }
}
