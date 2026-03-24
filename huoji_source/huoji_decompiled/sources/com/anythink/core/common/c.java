package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.f.av;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static String a = "c";
    private static volatile c f;
    public ConcurrentHashMap<String, Long> b = new ConcurrentHashMap<>();
    public ConcurrentHashMap<String, Long> c = new ConcurrentHashMap<>();
    public Map<String, a> d = new ConcurrentHashMap(5);
    public Map<String, Map<String, Long>> e;

    public static class a {
        public String a;
        public long b;
    }

    private c() {
    }

    public static c a() {
        if (f == null) {
            synchronized (c.class) {
                if (f == null) {
                    f = new c();
                }
            }
        }
        return f;
    }

    private void b(String str, long j) {
        this.c.put(str, Long.valueOf(j));
    }

    public final void a(String str) {
        this.e = new ConcurrentHashMap(3);
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                    HashMap map = new HashMap(3);
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    while (itKeys2.hasNext()) {
                        try {
                            String next2 = itKeys2.next();
                            map.put(next2, Long.valueOf(jSONObjectOptJSONObject.getLong(next2)));
                        } catch (Throwable unused) {
                        }
                    }
                    this.e.put(next, map);
                } catch (Throwable unused2) {
                }
            }
        } catch (Throwable unused3) {
        }
    }

    public final void a(String str, long j) {
        this.b.put(str, Long.valueOf(j));
    }

    public final void a(String str, long j, AdError adError) {
        if (TextUtils.equals(adError.getCode(), ErrorCode.noADError)) {
            a aVar = this.d.get(str);
            if (aVar == null) {
                aVar = new a();
            }
            aVar.a = adError.getPlatformCode();
            aVar.b = j;
            this.d.put(str, aVar);
        }
    }

    public final boolean a(int i, com.anythink.core.d.f fVar, av avVar) {
        int i2;
        Long l;
        if (this.e == null) {
            return false;
        }
        List<Integer> listP = fVar.p();
        if (listP.size() == 0) {
            return false;
        }
        a aVar = this.d.get(avVar.u());
        if (aVar == null) {
            return false;
        }
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                i2 = 3;
                break;
            case 2:
            default:
                i2 = 1;
                break;
            case 8:
                i2 = 2;
                break;
        }
        if (listP.contains(Integer.valueOf(i2))) {
            Map<String, Long> map = this.e.get(String.valueOf(avVar.d()));
            return (map == null || (l = map.get(aVar.a)) == null || aVar.b + l.longValue() < System.currentTimeMillis()) ? false : true;
        }
        StringBuilder sb = new StringBuilder("The current load mode is: ");
        sb.append(i2);
        sb.append(", no need to filter");
        return false;
    }

    public final boolean a(av avVar) {
        if (avVar.H() == 0) {
            return false;
        }
        return (this.b.get(avVar.u()) != null ? this.b.get(avVar.u()).longValue() : 0L) + avVar.H() >= System.currentTimeMillis();
    }

    public final boolean b(av avVar) {
        if (avVar.m() == 7) {
            return false;
        }
        if (avVar.I() == 0) {
            return false;
        }
        return (this.c.get(avVar.u()) != null ? this.c.get(avVar.u()).longValue() : 0L) + avVar.I() >= System.currentTimeMillis();
    }
}
