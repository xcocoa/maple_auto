package com.anythink.core.common.a;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.c.m;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private static volatile l b;
    private long e;
    public final String a = l.class.getSimpleName();
    private long f = 0;
    private m c = m.a(com.anythink.core.common.c.c.a(n.a().f()));
    private Map<String, Integer> d = new HashMap();

    /* JADX INFO: renamed from: com.anythink.core.common.a.l$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ k a;

        public AnonymousClass2(k kVar) {
            this.a = kVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                File file = new File(this.a.b());
                if (file.exists()) {
                    file.delete();
                }
            } catch (Throwable unused) {
            }
            l.this.c.c(this.a.a());
        }
    }

    private l() {
        this.e = 209715200L;
        this.e = n.a().c(4);
    }

    public static l a() {
        if (b == null) {
            synchronized (l.class) {
                if (b == null) {
                    b = new l();
                }
            }
        }
        return b;
    }

    private void a(k kVar) {
        if (kVar == null) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass2(kVar), 13, true);
    }

    public final k a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.c.a(str);
    }

    public final void a(final String str, final String str2, final long j, final long j2, final int i, boolean z) {
        this.d.put(str, Integer.valueOf(i));
        if (z) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.a.l.3
                @Override // java.lang.Runnable
                public final void run() {
                    l.this.c.a(str, str2, j, j2, i);
                }
            }, 13, true);
        }
    }

    public final synchronized boolean a(String str, int i) {
        return b(str) >= i;
    }

    public final synchronized int b(String str) {
        if (this.d.containsKey(str) && this.d.get(str) != null) {
            return this.d.get(str).intValue();
        }
        k kVarA = this.c.a(str);
        if (kVarA == null || kVarA.c() <= 0) {
            return 0;
        }
        File file = new File(kVarA.b());
        if (!file.exists() || file.length() < kVarA.e()) {
            if (kVarA != null) {
                com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass2(kVarA), 13, true);
            }
            return 0;
        }
        this.d.put(str, Integer.valueOf(kVarA.c()));
        this.c.b(str);
        return kVarA.c();
    }

    public final void b() {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.a.l.1
            @Override // java.lang.Runnable
            public final void run() {
                new ArrayList();
                l lVar = l.this;
                lVar.f = lVar.c.c();
                StringBuilder sb = new StringBuilder("recycleSpace check curDownloadedVideoFileSize:");
                sb.append(l.this.f);
                sb.append(",MAX_VIDEO_CACHE_SIZE:");
                sb.append(l.this.e);
                if (l.this.f > l.this.e) {
                    List<k> listD = l.this.c.d();
                    new StringBuilder("recycleSpace start to delete video file,file list size:").append(listD.size());
                    for (k kVar : listD) {
                        try {
                            File file = new File(kVar.b());
                            if (file.exists()) {
                                file.delete();
                            }
                        } catch (Throwable unused) {
                        }
                        try {
                            if (!TextUtils.isEmpty(kVar.a())) {
                                String strA = kVar.a();
                                l.this.d.remove(strA);
                                com.anythink.core.common.res.a.c.a().b(strA);
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        }, 13);
    }

    public final long c() {
        return this.e;
    }

    public final long d() {
        return this.f;
    }
}
