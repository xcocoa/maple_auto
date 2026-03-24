package com.anythink.basead.d;

import com.anythink.core.api.BaseAd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static final String a = "i";
    private Map<String, BaseAd> b;

    public static class a {
        private static final i a = new i(0);

        private a() {
        }
    }

    private i() {
        this.b = new HashMap(2);
    }

    public /* synthetic */ i(byte b) {
        this();
    }

    public static i a() {
        return a.a;
    }

    public final BaseAd a(String str) {
        return this.b.remove(str);
    }

    public final void a(String str, BaseAd baseAd) {
        this.b.put(str, baseAd);
    }
}
