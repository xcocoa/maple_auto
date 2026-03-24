package com.anythink.core.common;

import com.anythink.core.api.AdError;
import com.anythink.core.common.h.a.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class t {
    private static volatile t c;
    private String b = t.class.getSimpleName();
    public AtomicInteger a = new AtomicInteger(0);

    private t() {
    }

    public static t a() {
        if (c == null) {
            synchronized (t.class) {
                if (c == null) {
                    c = new t();
                }
            }
        }
        return c;
    }

    public final void a(final int i, final String str, final String str2, final String str3, final String str4) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.t.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.f.u uVar = new com.anythink.core.common.f.u();
                uVar.b = i;
                uVar.d = str;
                uVar.c = str2;
                uVar.e = str3;
                uVar.f = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(uVar.f);
                sb.append(str3);
                uVar.a = com.anythink.core.common.o.g.a(sb.toString() != null ? str3 : "");
                uVar.g = str4;
                String unused = t.this.b;
                new StringBuilder("save request:").append(uVar.a());
                com.anythink.core.common.c.g.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).a(uVar);
            }
        }, 16, true);
    }

    public final synchronized void b() {
        List<com.anythink.core.common.f.u> listC;
        if (this.a.get() <= 0 && (listC = com.anythink.core.common.c.g.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).c()) != null && listC.size() > 0) {
            this.a.set(listC.size());
            new StringBuilder("need to send request count: ").append(this.a.get());
            for (final com.anythink.core.common.f.u uVar : listC) {
                if (System.currentTimeMillis() - uVar.f >= 604800000) {
                    this.a.decrementAndGet();
                    com.anythink.core.common.c.g.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).b(uVar);
                } else {
                    int iOptInt = 1000;
                    try {
                        iOptInt = new JSONObject(uVar.g).optInt(com.anythink.core.common.f.u.h);
                    } catch (Throwable unused) {
                    }
                    if (uVar.b == 3) {
                        new com.anythink.core.common.h.a.b(uVar.e, iOptInt).a(new c.a() { // from class: com.anythink.core.common.t.2
                            @Override // com.anythink.core.common.h.a.c.a
                            public final void a(Object obj) {
                                String unused2 = t.this.b;
                                new StringBuilder("re-send success.... ").append(uVar.a());
                                com.anythink.core.common.c.g.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).b(uVar);
                                t.this.a.decrementAndGet();
                            }

                            @Override // com.anythink.core.common.h.a.c.a
                            public final void a(Throwable th) {
                                String unused2 = t.this.b;
                                StringBuilder sb = new StringBuilder("re-send fail.... ");
                                sb.append(uVar.a());
                                sb.append("--error: ");
                                sb.append(th.getMessage());
                                t.this.a.decrementAndGet();
                            }
                        });
                    } else {
                        final com.anythink.core.common.h.n nVar = new com.anythink.core.common.h.n(uVar);
                        if (iOptInt == 1001) {
                            nVar.p();
                        }
                        nVar.a(0, new com.anythink.core.common.h.k() { // from class: com.anythink.core.common.t.3
                            @Override // com.anythink.core.common.h.k
                            public final void onLoadCanceled(int i) {
                                t.this.a.decrementAndGet();
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadError(int i, String str, AdError adError) {
                                String unused2 = t.this.b;
                                StringBuilder sb = new StringBuilder("re-send fail.... ");
                                sb.append(uVar.a());
                                sb.append("--error: ");
                                if (str == null) {
                                    str = "";
                                }
                                sb.append(str);
                                t.this.a.decrementAndGet();
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadFinish(int i, Object obj) {
                                String unused2 = t.this.b;
                                new StringBuilder("re-send success.... ").append(uVar.a());
                                com.anythink.core.common.c.g.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f())).b(nVar.q());
                                t.this.a.decrementAndGet();
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadStart(int i) {
                            }
                        });
                    }
                }
            }
        }
    }
}
