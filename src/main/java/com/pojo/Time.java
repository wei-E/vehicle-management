package com.pojo;

import java.text.SimpleDateFormat;

public class Time {
    public long dateToStamp(String date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long time = 0;
        try {
            time = sdf.parse(date).getTime() / 1000;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return time;
    }
    public String stampToDate(long time) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(time * 1000);
    }
}
