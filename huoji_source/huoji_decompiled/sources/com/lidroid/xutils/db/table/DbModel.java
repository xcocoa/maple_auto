package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DbModel {
    private HashMap<String, String> dataMap = new HashMap<>();

    public void add(String str, String str2) {
        this.dataMap.put(str, str2);
    }

    public boolean getBoolean(String str) {
        String str2 = this.dataMap.get(str);
        if (str2 != null) {
            return str2.length() == 1 ? "1".equals(str2) : Boolean.valueOf(str2).booleanValue();
        }
        return false;
    }

    public HashMap<String, String> getDataMap() {
        return this.dataMap;
    }

    public Date getDate(String str) {
        return new Date(Long.valueOf(this.dataMap.get(str)).longValue());
    }

    public double getDouble(String str) {
        return Double.valueOf(this.dataMap.get(str)).doubleValue();
    }

    public float getFloat(String str) {
        return Float.valueOf(this.dataMap.get(str)).floatValue();
    }

    public int getInt(String str) {
        return Integer.valueOf(this.dataMap.get(str)).intValue();
    }

    public long getLong(String str) {
        return Long.valueOf(this.dataMap.get(str)).longValue();
    }

    public java.sql.Date getSqlDate(String str) {
        return new java.sql.Date(Long.valueOf(this.dataMap.get(str)).longValue());
    }

    public String getString(String str) {
        return this.dataMap.get(str);
    }

    public boolean isEmpty(String str) {
        return TextUtils.isEmpty(this.dataMap.get(str));
    }
}
