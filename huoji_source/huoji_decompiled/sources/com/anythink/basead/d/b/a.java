package com.anythink.basead.d.b;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.a.b.b;
import com.anythink.basead.c.e;
import com.anythink.basead.c.f;
import com.anythink.basead.c.i;
import com.anythink.basead.d.c.c;
import com.anythink.basead.d.c.d;
import com.anythink.core.api.AdError;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.h.k;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a c;
    public ConcurrentHashMap<String, Boolean> a = new ConcurrentHashMap<>(3);
    private Context b;

    /* JADX INFO: renamed from: com.anythink.basead.d.b.a$1, reason: invalid class name */
    public class AnonymousClass1 implements k {
        public final /* synthetic */ m a;
        public final /* synthetic */ InterfaceC0056a b;

        public AnonymousClass1(m mVar, InterfaceC0056a interfaceC0056a) {
            this.a = mVar;
            this.b = interfaceC0056a;
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadCanceled(int i) {
            InterfaceC0056a interfaceC0056a = this.b;
            if (interfaceC0056a != null) {
                interfaceC0056a.a(null, f.a(f.i, "Cancel Request."));
            }
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadError(int i, String str, AdError adError) {
            InterfaceC0056a interfaceC0056a = this.b;
            if (interfaceC0056a != null) {
                interfaceC0056a.a(null, f.a(f.i, str));
            }
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadFinish(int i, Object obj) {
            JSONObject jSONObject;
            ai aiVarA;
            try {
                jSONObject = (JSONObject) obj;
                try {
                    jSONObject.put(b.a, System.currentTimeMillis());
                    aiVarA = b.a(this.a, jSONObject);
                } catch (Exception unused) {
                    aiVarA = null;
                }
            } catch (Exception unused2) {
                jSONObject = null;
            }
            if (aiVarA == null) {
                InterfaceC0056a interfaceC0056a = this.b;
                if (interfaceC0056a != null) {
                    interfaceC0056a.a(null, f.a(f.i, obj != null ? obj.toString() : "No Ad Return."));
                    return;
                }
                return;
            }
            c.a(aiVarA);
            if (aiVarA.b() == 1 && com.anythink.basead.a.a.a(a.this.b.getApplicationContext(), aiVarA.F())) {
                d dVarA = d.a();
                Context context = a.this.b;
                m mVar = this.a;
                dVarA.a(context, d.a(mVar.b, mVar.c), aiVarA, this.a.n);
                InterfaceC0056a interfaceC0056a2 = this.b;
                if (interfaceC0056a2 != null) {
                    interfaceC0056a2.a(null, f.a(f.i, "Application installed."));
                    return;
                }
                return;
            }
            if (aiVarA.b() == 2 && !com.anythink.basead.a.a.a(a.this.b.getApplicationContext(), aiVarA.F())) {
                d dVarA2 = d.a();
                Context context2 = a.this.b;
                m mVar2 = this.a;
                dVarA2.a(context2, d.a(mVar2.b, mVar2.c), aiVarA, this.a.n);
                InterfaceC0056a interfaceC0056a3 = this.b;
                if (interfaceC0056a3 != null) {
                    interfaceC0056a3.a(null, f.a(f.i, "Application not installed yet."));
                    return;
                }
                return;
            }
            com.anythink.basead.d.c.a.a(this.a, aiVarA);
            com.anythink.basead.a.a.a(10, aiVarA, new i(this.a.d, ""));
            com.anythink.core.basead.b.a();
            Context context3 = a.this.b;
            com.anythink.core.basead.b.a();
            com.anythink.core.basead.b.a(context3, com.anythink.core.basead.b.a(this.a), jSONObject.toString());
            a.this.a(this.a, aiVarA);
            InterfaceC0056a interfaceC0056a4 = this.b;
            if (interfaceC0056a4 != null) {
                interfaceC0056a4.a();
            }
            a.this.a(aiVarA, this.a, this.b);
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadStart(int i) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0056a {
        void a();

        void a(ai aiVar);

        void a(ai aiVar, e eVar);
    }

    private a(Context context) {
        this.b = context.getApplicationContext();
    }

    public static a a(Context context) {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a(context);
                }
            }
        }
        return c;
    }

    private ai a(m mVar) {
        com.anythink.core.basead.b.a();
        String strA = com.anythink.core.basead.b.a(mVar);
        com.anythink.core.basead.b.a();
        String strA2 = com.anythink.core.basead.b.a(this.b, strA);
        ai aiVarA = null;
        if (TextUtils.isEmpty(strA2)) {
            return null;
        }
        try {
            aiVarA = b.a(mVar, new JSONObject(strA2));
        } catch (Throwable unused) {
        }
        if (aiVarA != null) {
            c.a(aiVarA);
            com.anythink.basead.d.c.a.a(mVar, aiVarA);
        }
        return aiVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ai aiVar, final m mVar, final InterfaceC0056a interfaceC0056a) {
        com.anythink.basead.a.e.a();
        com.anythink.basead.a.e.a(mVar.b, aiVar, mVar, new b.InterfaceC0049b() { // from class: com.anythink.basead.d.b.a.2
            @Override // com.anythink.basead.a.b.b.InterfaceC0049b
            public final void a() {
                ConcurrentHashMap<String, Boolean> concurrentHashMap = a.this.a;
                com.anythink.core.basead.b.a();
                concurrentHashMap.put(com.anythink.core.basead.b.a(mVar), Boolean.FALSE);
                InterfaceC0056a interfaceC0056a2 = interfaceC0056a;
                if (interfaceC0056a2 != null) {
                    interfaceC0056a2.a(aiVar);
                }
            }

            @Override // com.anythink.basead.a.b.b.InterfaceC0049b
            public final void a(e eVar) {
                ConcurrentHashMap<String, Boolean> concurrentHashMap = a.this.a;
                com.anythink.core.basead.b.a();
                concurrentHashMap.put(com.anythink.core.basead.b.a(mVar), Boolean.FALSE);
                InterfaceC0056a interfaceC0056a2 = interfaceC0056a;
                if (interfaceC0056a2 != null) {
                    interfaceC0056a2.a(aiVar, eVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(m mVar, l lVar) {
        IExHandler iExHandlerB = n.a().b();
        if (iExHandlerB != null) {
            iExHandlerB.fillDownloadStatus(this.b, lVar, mVar);
        } else {
            lVar.l(0);
        }
    }

    private void b(m mVar, String str, InterfaceC0056a interfaceC0056a) {
        ai aiVarA;
        int i;
        int i2;
        String[] strArrSplit;
        int i3;
        try {
            aiVarA = a(mVar);
        } catch (Throwable unused) {
            aiVarA = null;
        }
        if (aiVarA != null && !aiVarA.Y()) {
            a(mVar, aiVarA);
            if (interfaceC0056a != null) {
                interfaceC0056a.a();
            }
            a(aiVarA, mVar, interfaceC0056a);
            return;
        }
        if (!TextUtils.isEmpty(mVar.n.x())) {
            try {
                strArrSplit = mVar.n.x().split("x");
                i = Integer.parseInt(strArrSplit[0]);
            } catch (Throwable unused2) {
                i = 0;
            }
            try {
                i3 = Integer.parseInt(strArrSplit[1]);
                i2 = i;
            } catch (Throwable unused3) {
                i2 = i;
                i3 = 0;
            }
            new com.anythink.basead.g.d(mVar, i2, i3, d.a().a(this.b, d.a(mVar.b, mVar.c)), str).a(0, (k) new AnonymousClass1(mVar, interfaceC0056a));
        }
        i2 = 0;
        i3 = 0;
        new com.anythink.basead.g.d(mVar, i2, i3, d.a().a(this.b, d.a(mVar.b, mVar.c)), str).a(0, (k) new AnonymousClass1(mVar, interfaceC0056a));
    }

    public final void a(m mVar, String str, InterfaceC0056a interfaceC0056a) {
        int i;
        int i2;
        String[] strArrSplit;
        int i3;
        com.anythink.core.basead.b.a();
        String strA = com.anythink.core.basead.b.a(mVar);
        ai aiVarA = null;
        if (this.a.contains(strA) && this.a.get(strA).booleanValue()) {
            interfaceC0056a.a(null, f.a(f.g, f.r));
            return;
        }
        this.a.put(strA, Boolean.TRUE);
        try {
            aiVarA = a(mVar);
        } catch (Throwable unused) {
        }
        if (aiVarA != null && !aiVarA.Y()) {
            a(mVar, aiVarA);
            interfaceC0056a.a();
            a(aiVarA, mVar, interfaceC0056a);
            return;
        }
        if (!TextUtils.isEmpty(mVar.n.x())) {
            try {
                strArrSplit = mVar.n.x().split("x");
                i = Integer.parseInt(strArrSplit[0]);
            } catch (Throwable unused2) {
                i = 0;
            }
            try {
                i3 = Integer.parseInt(strArrSplit[1]);
                i2 = i;
            } catch (Throwable unused3) {
                i2 = i;
                i3 = 0;
            }
            new com.anythink.basead.g.d(mVar, i2, i3, d.a().a(this.b, d.a(mVar.b, mVar.c)), str).a(0, (k) new AnonymousClass1(mVar, interfaceC0056a));
        }
        i2 = 0;
        i3 = 0;
        new com.anythink.basead.g.d(mVar, i2, i3, d.a().a(this.b, d.a(mVar.b, mVar.c)), str).a(0, (k) new AnonymousClass1(mVar, interfaceC0056a));
    }
}
