package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    private static JSONObject a = new JSONObject();
    private final Map<String, Long> b = new HashMap();

    public static void a(Context context) {
        if (context != null) {
            try {
                synchronized (a) {
                    if (a.length() > 0) {
                        g.a(context).a(o.a().d(), a, g.a.PAGE);
                        a = new JSONObject();
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a() {
        String key;
        synchronized (this.b) {
            key = null;
            long j = 0;
            for (Map.Entry<String, Long> entry : this.b.entrySet()) {
                if (entry.getValue().longValue() > j) {
                    long jLongValue = entry.getValue().longValue();
                    key = entry.getKey();
                    j = jLongValue;
                }
            }
        }
        if (key != null) {
            b(key);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.b) {
            this.b.put(str, Long.valueOf(System.currentTimeMillis()));
        }
    }

    public void b(String str) {
        Long l;
        if (TextUtils.isEmpty(str) || !this.b.containsKey(str)) {
            return;
        }
        synchronized (this.b) {
            l = this.b.get(str);
        }
        if (l == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l.longValue();
        synchronized (a) {
            try {
                JSONObject jSONObject = new JSONObject();
                a = jSONObject;
                jSONObject.put(b.u, str);
                a.put("duration", jCurrentTimeMillis);
            } catch (Throwable unused) {
            }
        }
    }
}
