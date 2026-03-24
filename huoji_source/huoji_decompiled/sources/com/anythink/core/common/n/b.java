package com.anythink.core.common.n;

import android.text.TextUtils;
import com.anythink.core.common.f.ah;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.k;
import com.anythink.core.common.f.m;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = "b";
    private static volatile b b;
    private long c = 0;
    private long d = 0;
    private final Map<String, Long> e = new ConcurrentHashMap();
    private final Map<String, ah> f = new ConcurrentHashMap();

    private b() {
    }

    public static b a() {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b();
                }
            }
        }
        return b;
    }

    public static String a(m mVar) {
        return mVar.d + "_ " + mVar.c;
    }

    public static long b(h hVar) {
        return hVar.b() - hVar.a();
    }

    private void b(String str, long j) {
        StringBuilder sb = new StringBuilder("recordOfferLoadStartTime, ");
        sb.append(str);
        sb.append(", timeStamp: ");
        sb.append(j);
        a(str).a = j;
    }

    private void c(String str, long j) {
        StringBuilder sb = new StringBuilder("recordOfferDataEndTime, ");
        sb.append(str);
        sb.append(", timeStamp: ");
        sb.append(j);
        a(str).c = j;
    }

    private static boolean c(h hVar) {
        return hVar == null || TextUtils.isEmpty(hVar.ah()) || TextUtils.isEmpty(hVar.t());
    }

    private void d(String str, long j) {
        StringBuilder sb = new StringBuilder("recordOfferGetImageSizeStartTime, ");
        sb.append(str);
        sb.append(", timeStamp: ");
        sb.append(j);
        a(str).d = j;
    }

    private boolean d(h hVar) {
        try {
            String strAj = hVar.aj();
            if (TextUtils.isEmpty(strAj)) {
                return false;
            }
            return strAj.equals("0");
        } catch (Throwable th) {
            getClass().getSimpleName();
            new StringBuilder("handleTrackerInfo() >>> ").append(th.getMessage());
            return false;
        }
    }

    private void e(String str, long j) {
        StringBuilder sb = new StringBuilder("recordOfferGetImageSizeEndTime, ");
        sb.append(str);
        sb.append(", timeStamp: ");
        sb.append(j);
        a(str).e = j;
    }

    private static boolean e(h hVar) {
        return hVar.P() == 66;
    }

    public final long a(h hVar) {
        if (TextUtils.isEmpty(hVar.ah())) {
            return 0L;
        }
        long jA = hVar.a();
        Long l = this.e.get(hVar.ah());
        if (l == null || l.longValue() == 0 || jA == 0) {
            return 0L;
        }
        return jA - l.longValue();
    }

    public final ah a(String str) {
        ah ahVar = this.f.get(str);
        if (ahVar == null) {
            synchronized (this.f) {
                if (ahVar == null) {
                    ahVar = new ah();
                    this.f.put(str, ahVar);
                }
            }
        }
        return ahVar;
    }

    public final void a(int i, h hVar) {
        if (c(hVar)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i != 4) {
            if (i != 6) {
                return;
            }
            hVar.b(jCurrentTimeMillis);
        } else {
            if (!d(hVar)) {
                this.c = jCurrentTimeMillis;
            }
            hVar.a(jCurrentTimeMillis);
        }
    }

    public final void a(k kVar, h hVar) {
        if (c(hVar)) {
            return;
        }
        String str = kVar.a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!str.equals("1004634") || d(hVar)) {
            return;
        }
        this.d = jCurrentTimeMillis;
        this.e.put(hVar.ah(), Long.valueOf(jCurrentTimeMillis));
    }

    public final void a(String str, long j) {
        StringBuilder sb = new StringBuilder("recordOfferLoadEndTime, ");
        sb.append(str);
        sb.append(", timeStamp: ");
        sb.append(j);
        a(str).b = j;
    }

    public final long b() {
        long j = this.d;
        if (j != 0) {
            long j2 = this.c;
            if (j2 != 0) {
                return j2 - j;
            }
        }
        return 0L;
    }

    public final void b(String str) {
        this.f.remove(str);
    }
}
