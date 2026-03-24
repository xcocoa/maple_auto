package com.anythink.expressad.reward.a;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class e implements com.anythink.expressad.e.b {
    private static final String a = "RewardUnitCacheManager";
    private ConcurrentHashMap<String, com.anythink.expressad.videocommon.e.d> b;

    public static final class a {
        private static final e a = new e(0);

        private a() {
        }
    }

    private e() {
        this.b = new ConcurrentHashMap<>();
    }

    public /* synthetic */ e(byte b) {
        this();
    }

    public static e a() {
        return a.a;
    }

    public final com.anythink.expressad.videocommon.e.d a(String str, String str2) {
        try {
            try {
                return this.b.remove(str + "_" + str2);
            } catch (Exception e) {
                e.getMessage();
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(String str, String str2, com.anythink.expressad.videocommon.e.d dVar) {
        try {
            String str3 = str + "_" + str2;
            if (dVar != null && this.b.containsKey(str3)) {
                this.b.remove(str3);
            }
            this.b.put(str3, dVar);
        } catch (Exception e) {
            e.getMessage();
        }
    }
}
