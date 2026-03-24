package com.iflytek.voiceads.videolib;

import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    public int b;
    public String d;
    public Object[] g;
    public final String a = "URL_KEY_DEFAULT";
    public LinkedHashMap c = new LinkedHashMap();
    public HashMap e = new HashMap();
    public boolean f = false;

    public a(String str, String str2) {
        this.d = "";
        this.c.put("URL_KEY_DEFAULT", str);
        this.d = str2;
        this.b = 0;
    }

    public Object a() {
        return a(this.b);
    }

    public Object a(int i) {
        int i2 = 0;
        for (Object obj : this.c.keySet()) {
            if (i2 == i) {
                return this.c.get(obj);
            }
            i2++;
        }
        return null;
    }

    public boolean a(Object obj) {
        if (obj != null) {
            return this.c.containsValue(obj);
        }
        return false;
    }
}
