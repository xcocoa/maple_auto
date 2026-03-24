package com.anythink.basead.d.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.a.b.b;
import com.anythink.basead.c.f;
import com.anythink.basead.d.a.b;
import com.anythink.basead.d.c.c;
import com.anythink.core.api.AdError;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.a.e;
import com.anythink.core.common.a.i;
import com.anythink.core.common.f.ag;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.h.k;
import com.anythink.expressad.foundation.d.d;
import com.anythink.expressad.videocommon.b.n;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a d;
    public ConcurrentHashMap<String, Boolean> a = new ConcurrentHashMap<>(3);
    public ConcurrentHashMap<String, i> b = new ConcurrentHashMap<>(2);
    private Context c;

    /* JADX INFO: renamed from: com.anythink.basead.d.a.a$2, reason: invalid class name */
    public class AnonymousClass2 implements k {
        public final /* synthetic */ m a;
        public final /* synthetic */ InterfaceC0053a b;

        public AnonymousClass2(m mVar, InterfaceC0053a interfaceC0053a) {
            this.a = mVar;
            this.b = interfaceC0053a;
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadCanceled(int i) {
            InterfaceC0053a interfaceC0053a = this.b;
            if (interfaceC0053a != null) {
                interfaceC0053a.a((j) null, f.a(f.i, "Cancel Request."));
            }
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadError(int i, String str, AdError adError) {
            InterfaceC0053a interfaceC0053a = this.b;
            if (interfaceC0053a != null) {
                interfaceC0053a.a((j) null, f.a(f.i, str));
            }
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadFinish(int i, Object obj) {
            j jVarA;
            try {
                m mVar = this.a;
                jVarA = e.a(mVar.a, (JSONObject) obj, mVar.f, false);
            } catch (Exception unused) {
                jVarA = null;
            }
            if (jVarA == null) {
                InterfaceC0053a interfaceC0053a = this.b;
                if (interfaceC0053a != null) {
                    interfaceC0053a.a((j) null, f.a(f.i, obj != null ? obj.toString() : "No Ad Return."));
                    return;
                }
                return;
            }
            jVarA.c(this.a.m);
            jVarA.h(this.a.d);
            c.a(jVarA);
            com.anythink.basead.d.c.a.a(this.a, jVarA);
            if (this.a.f == 67) {
                com.anythink.core.common.d.c.a(a.this.c).a(jVarA.t(), jVarA.Z());
                com.anythink.core.common.d.b.a(a.this.c).a(jVarA.u(), jVarA.Z());
            }
            com.anythink.core.common.a.a aVarA = com.anythink.core.common.a.a.a();
            Context context = a.this.c;
            m mVar2 = this.a;
            aVarA.a(context, mVar2.c, mVar2.a, obj.toString());
            d dVarA = a.this.a(jVarA, this.a);
            a.this.a(this.a, jVarA);
            InterfaceC0053a interfaceC0053a2 = this.b;
            if (interfaceC0053a2 != null) {
                interfaceC0053a2.a(jVarA);
            }
            a.this.a(jVarA, this.a, dVarA, this.b);
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadStart(int i) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0053a {
        void a(i iVar);

        void a(j jVar);

        void a(j jVar, com.anythink.basead.c.e eVar);

        void a(j jVar, i iVar);
    }

    private a(Context context) {
        this.c = context.getApplicationContext();
    }

    public static a a(Context context) {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a(context);
                }
            }
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized d a(j jVar, m mVar) {
        if (TextUtils.isEmpty(jVar.a())) {
            return null;
        }
        d dVarA = d.a(jVar.a());
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList = dVarA.J;
        b.a(jVar, arrayList.get(0));
        b.a(jVar, arrayList);
        b.a(mVar, arrayList);
        return dVarA;
    }

    public static /* synthetic */ void a(a aVar, m mVar, InterfaceC0053a interfaceC0053a) {
        j jVarA;
        try {
            jVarA = aVar.a(mVar);
            try {
                jVarA.c(mVar.m);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            jVarA = null;
        }
        if (jVarA == null) {
            new com.anythink.basead.g.a(mVar).a(0, (k) aVar.new AnonymousClass2(mVar, interfaceC0053a));
        } else {
            aVar.a(jVarA, mVar, interfaceC0053a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(j jVar, m mVar, InterfaceC0053a interfaceC0053a, boolean z) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList2;
        jVar.h(mVar.d);
        d dVarA = a(jVar, mVar);
        a(mVar, jVar);
        if (interfaceC0053a != null) {
            interfaceC0053a.a(jVar);
        }
        if (!z) {
            a(jVar, mVar, dVarA, interfaceC0053a);
            return;
        }
        boolean zB = true;
        if (!String.valueOf(mVar.j).equals("0") && !String.valueOf(mVar.j).equals("2")) {
            if (String.valueOf(mVar.j).equals("4")) {
                zB = (dVarA == null || (arrayList2 = dVarA.J) == null || arrayList2.size() <= 0) ? false : com.anythink.expressad.splash.c.b.a(dVarA.J.get(0));
            } else if (dVarA != null && (arrayList = dVarA.J) != null && arrayList.size() > 0) {
                zB = n.b(dVarA.J);
            }
        }
        if (zB) {
            a(jVar, mVar, dVarA, interfaceC0053a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final j jVar, final m mVar, d dVar, final InterfaceC0053a interfaceC0053a) {
        if (!TextUtils.isEmpty(jVar.a())) {
            b.a().a(jVar, mVar, dVar, new b.a() { // from class: com.anythink.basead.d.a.a.4
                @Override // com.anythink.basead.d.a.b.a
                public final void a(com.anythink.basead.c.e eVar) {
                    a.this.a.put(mVar.b + mVar.a, Boolean.FALSE);
                    InterfaceC0053a interfaceC0053a2 = interfaceC0053a;
                    if (interfaceC0053a2 != null) {
                        interfaceC0053a2.a(jVar, eVar);
                    }
                }

                @Override // com.anythink.basead.d.a.b.a
                public final void a(i iVar) {
                    InterfaceC0053a interfaceC0053a2 = interfaceC0053a;
                    if (interfaceC0053a2 != null) {
                        interfaceC0053a2.a(iVar);
                    }
                }

                @Override // com.anythink.basead.d.a.b.a
                public final void b(i iVar) {
                    a.this.a.put(mVar.b + mVar.a, Boolean.FALSE);
                    InterfaceC0053a interfaceC0053a2 = interfaceC0053a;
                    if (interfaceC0053a2 != null) {
                        interfaceC0053a2.a(jVar, iVar);
                    }
                }
            });
        } else {
            com.anythink.basead.a.e.a();
            com.anythink.basead.a.e.a(mVar.b, jVar, mVar, new b.InterfaceC0049b() { // from class: com.anythink.basead.d.a.a.5
                @Override // com.anythink.basead.a.b.b.InterfaceC0049b
                public final void a() {
                    a.this.a.put(mVar.b + mVar.a, Boolean.FALSE);
                    InterfaceC0053a interfaceC0053a2 = interfaceC0053a;
                    if (interfaceC0053a2 != null) {
                        interfaceC0053a2.a(jVar, (i) null);
                    }
                }

                @Override // com.anythink.basead.a.b.b.InterfaceC0049b
                public final void a(com.anythink.basead.c.e eVar) {
                    a.this.a.put(mVar.b + mVar.a, Boolean.FALSE);
                    InterfaceC0053a interfaceC0053a2 = interfaceC0053a;
                    if (interfaceC0053a2 != null) {
                        interfaceC0053a2.a(jVar, eVar);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(m mVar, l lVar) {
        IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
        if (iExHandlerB != null) {
            iExHandlerB.fillDownloadStatus(this.c, lVar, mVar);
        } else {
            lVar.l(0);
        }
    }

    private void b(m mVar, InterfaceC0053a interfaceC0053a) {
        j jVarA;
        try {
            jVarA = a(mVar);
            try {
                jVarA.c(mVar.m);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            jVarA = null;
        }
        if (jVarA == null) {
            new com.anythink.basead.g.a(mVar).a(0, (k) new AnonymousClass2(mVar, interfaceC0053a));
        } else {
            a(jVarA, mVar, interfaceC0053a, false);
        }
    }

    public final j a(m mVar) {
        ag agVarA = com.anythink.core.common.a.a.a().a(this.c, mVar.a);
        j jVarA = null;
        if (agVarA != null && !TextUtils.isEmpty(agVarA.a())) {
            try {
                jVarA = e.a(mVar.a, new JSONObject(agVarA.a()), mVar.f, false);
                jVarA.c(agVarA.b());
            } catch (Throwable unused) {
            }
            if (jVarA != null) {
                c.a(jVarA);
                com.anythink.basead.d.c.a.a(mVar, jVarA);
            }
        }
        return jVarA;
    }

    public final void a(final aj ajVar, final m mVar, final InterfaceC0053a interfaceC0053a) {
        com.anythink.core.common.o.b.b.a().c(new Runnable() { // from class: com.anythink.basead.d.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                aj ajVar2 = ajVar;
                if (ajVar2 == null || !(ajVar2 instanceof j) || TextUtils.isEmpty(((j) ajVar2).a())) {
                    return;
                }
                b.a();
                b.a((j) ajVar);
                a.this.a((j) ajVar, mVar, interfaceC0053a, true);
            }
        });
    }

    public final void a(final m mVar, final InterfaceC0053a interfaceC0053a) {
        if (this.a.contains(mVar.b + mVar.a)) {
            if (this.a.get(mVar.b + mVar.a).booleanValue()) {
                interfaceC0053a.a((j) null, f.a(f.g, f.r));
                return;
            }
        }
        this.a.put(mVar.b + mVar.a, Boolean.TRUE);
        com.anythink.core.common.o.b.b.a().c(new Runnable() { // from class: com.anythink.basead.d.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a.a(a.this, mVar, interfaceC0053a);
            }
        });
    }
}
