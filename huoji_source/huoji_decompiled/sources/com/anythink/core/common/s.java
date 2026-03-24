package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.c.i;
import com.anythink.core.common.f.ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class s {
    public static final String a = "s";
    private static volatile s b;
    private Map<String, ad> c;
    private List<ad> d;
    private final int f = 5;
    private final int g = com.anythink.expressad.d.b.b;
    private List<String> e = Collections.synchronizedList(new ArrayList(8));

    private s() {
    }

    public static s a() {
        if (b == null) {
            synchronized (s.class) {
                if (b == null) {
                    b = new s();
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(ad adVar) {
        new StringBuilder("delete: ").append(adVar.a());
        this.c.remove(adVar.a);
        this.d.remove(adVar);
        com.anythink.core.common.c.i.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).b(adVar);
    }

    private synchronized void a(final ad adVar, final boolean z) {
        if (System.currentTimeMillis() > adVar.f) {
            new StringBuilder("resendNoticeUrl: do nothing because offer is out date: ").append(adVar.a());
            this.e.remove(adVar.a);
            if (z) {
                a(adVar);
            }
            return;
        }
        if (this.e.contains(adVar.a)) {
            new StringBuilder("resendNoticeUrl: do nothing because it is loading... ").append(adVar.a());
            return;
        }
        this.e.add(adVar.a);
        if (z) {
            int i = adVar.g + 1;
            adVar.g = i;
            if (i >= 5) {
                new StringBuilder("resendNoticeUrl: The number of retries is greater than or equal to the maximum number of retries, start deleting and continue: ").append(adVar.a());
                a(adVar);
            } else {
                b(adVar);
            }
        } else {
            int i2 = adVar.g + 1;
            adVar.g = i2;
            if (i2 >= 5) {
                new StringBuilder("resendNoticeUrl: The number of retries is greater than or equal to the maximum number of retries, start deleting and continue: ").append(adVar.a());
                this.e.remove(adVar.a);
                return;
            }
        }
        new StringBuilder("resendNoticeUrl: start to send notice: ").append(adVar.a());
        new com.anythink.core.common.h.m(adVar).a(0, new com.anythink.core.common.h.k() { // from class: com.anythink.core.common.s.1
            @Override // com.anythink.core.common.h.k
            public final void onLoadCanceled(int i3) {
                synchronized (s.this) {
                    s.this.e.remove(adVar.a);
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadError(int i3, String str, AdError adError) {
                String str2 = s.a;
                new StringBuilder("resendNoticeUrl:  send notice failed: ").append(adVar.a());
                synchronized (s.this) {
                    s.this.e.remove(adVar.a);
                    if (!z) {
                        s.this.b(adVar);
                    }
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadFinish(int i3, Object obj) {
                String str = s.a;
                new StringBuilder("resendNoticeUrl:  send notice success: ").append(adVar.a());
                synchronized (s.this) {
                    s.this.e.remove(adVar.a);
                    if (z) {
                        s.this.a(adVar);
                    }
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadStart(int i3) {
            }
        });
    }

    public static boolean a(int i) {
        boolean z;
        switch (i) {
            case com.anythink.core.common.h.i.d /* -1003 */:
            case com.anythink.core.common.h.i.c /* -1002 */:
            case com.anythink.core.common.h.i.b /* -1001 */:
            case -1000:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (z || ((i < -99 || i >= 200) && i < 400)) {
            return z;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(ad adVar) {
        if (TextUtils.isEmpty(adVar.a)) {
            adVar.e = System.currentTimeMillis();
            String strA = com.anythink.core.common.o.g.a(adVar.d + adVar.e);
            adVar.a = strA;
            this.c.put(strA, adVar);
            this.d.add(adVar);
        }
        new StringBuilder("insertOrUpdate: ").append(adVar.a());
        com.anythink.core.common.c.i.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).a(adVar);
        if (this.d.size() > 500) {
            ad adVar2 = this.d.get(0);
            new StringBuilder("insertOrUpdate,  exceeded the maximum number of records, start to delete: ").append(adVar.a());
            this.e.remove(adVar.a);
            a(adVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: all -> 0x0046, TryCatch #0 {, blocks: (B:11:0x002a, B:13:0x002e, B:14:0x0035, B:16:0x0039, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:22:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #0 {, blocks: (B:11:0x002a, B:13:0x002e, B:14:0x0035, B:16:0x0039, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:22:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized void c() {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (this.c == null && this.d == null) {
            i.a aVarC = com.anythink.core.common.c.i.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).c();
            this.c = aVarC.b;
            this.d = aVarC.a;
            if (this.c == null) {
            }
            if (this.d == null) {
            }
        } else {
            if (this.c == null) {
                this.c = new ConcurrentHashMap();
            }
            if (this.d == null) {
                this.d = Collections.synchronizedList(new ArrayList());
            }
        }
    }

    public final synchronized void a(String str, String str2, long j) {
        ad adVar = new ad();
        adVar.b = 2;
        adVar.d = str;
        adVar.c = str2;
        adVar.f = j;
        new StringBuilder("reSendNow: ").append(adVar.a());
        a(adVar, false);
    }

    public final synchronized void b() {
        try {
            c();
            List<ad> listSynchronizedList = Collections.synchronizedList(new ArrayList(this.d));
            if (listSynchronizedList != null && listSynchronizedList.size() > 0) {
                for (ad adVar : listSynchronizedList) {
                    new StringBuilder("tryToReSendNoticeUrl: ").append(adVar.a());
                    a(adVar, true);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
