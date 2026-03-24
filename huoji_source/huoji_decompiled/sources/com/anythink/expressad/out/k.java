package com.anythink.expressad.out;

import android.net.Uri;
import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class k implements com.anythink.expressad.e.b {
    public static final int a = 6;
    public static final int b = 7;
    public static final int c = 8;
    private static String d = "CustomInfoManager";
    private static volatile k e;
    private ConcurrentHashMap<String, String> f = new ConcurrentHashMap<>();

    private k() {
    }

    public static k a() {
        if (e == null) {
            synchronized (k.class) {
                if (e == null) {
                    e = new k();
                }
            }
        }
        return e;
    }

    private String a(String str, int i) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        StringBuilder sb;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (i == 6) {
            concurrentHashMap = this.f;
            sb = new StringBuilder();
            sb.append(str);
            str2 = "_bid";
        } else {
            if (i != 7) {
                if (i != 8) {
                    return "";
                }
                concurrentHashMap = this.f;
                return concurrentHashMap.get(str);
            }
            concurrentHashMap = this.f;
            sb = new StringBuilder();
            sb.append(str);
            str2 = "_bidload";
        }
        sb.append(str2);
        str = sb.toString();
        return concurrentHashMap.get(str);
    }

    private void a(String str, int i, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        StringBuilder sb;
        String str3;
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        String strA = com.anythink.expressad.foundation.h.j.a(str2);
        if (i == 6) {
            concurrentHashMap = this.f;
            sb = new StringBuilder();
            sb.append(str);
            str3 = "_bid";
        } else if (i != 7) {
            if (i != 8) {
                return;
            }
            this.f.put(str, strA);
            return;
        } else {
            concurrentHashMap = this.f;
            sb = new StringBuilder();
            sb.append(str);
            str3 = "_bidload";
        }
        sb.append(str3);
        concurrentHashMap.put(sb.toString(), strA);
    }

    public final String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            Uri uri = Uri.parse(str2);
            if (uri != null) {
                String host = uri.getHost();
                String path = uri.getPath();
                if (!TextUtils.isEmpty(host) && host.contains("hb") && !TextUtils.isEmpty(path) && path.contains("bid")) {
                    return a(str, 6);
                }
                if (!TextUtils.isEmpty(host) && host.contains("hb") && !TextUtils.isEmpty(path) && path.contains("load")) {
                    return a(str, 7);
                }
                if (!TextUtils.isEmpty(path) && path.contains(com.anythink.expressad.foundation.g.a.j)) {
                    return a(str, 8);
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }
}
