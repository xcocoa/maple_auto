package com.octopus.ad.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static boolean a(int i) {
        return ((int) ((Math.random() * 100.0d) + 1.0d)) <= i;
    }

    public static boolean a(String str, String str2) {
        String str3;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm", Locale.getDefault());
            boolean zA = a(simpleDateFormat.parse(simpleDateFormat.format(new Date())), simpleDateFormat.parse(str), simpleDateFormat.parse(str2));
            if (zA) {
                str3 = "当前时间在时间段内[" + str + "," + str2 + "]";
            } else {
                str3 = "当前时间不再时间段内[" + str + "," + str2 + "]";
            }
            com.octopus.ad.utils.b.f.a("channels:", str3);
            return zA;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean a(Date date, Date date2, Date date3) {
        if (date.getTime() == date2.getTime() || date.getTime() == date3.getTime()) {
            return true;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTime(date3);
        return calendar.after(calendar2) && calendar.before(calendar3);
    }
}
