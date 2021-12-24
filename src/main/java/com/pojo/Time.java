package com.pojo;

import java.text.SimpleDateFormat;

public class Time {
    public long dateToStamp(String date) {
        date = change(date);
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
    public String change(String date) {
        String ret = "";
        for (int i = 0; i < date.length(); ++i) {
            if (date.charAt(i) != 'T') {
                ret += date.charAt(i);
            } else {
                ret += " ";
            }
        }
        ret += ":00";
        return ret;
    }
}
