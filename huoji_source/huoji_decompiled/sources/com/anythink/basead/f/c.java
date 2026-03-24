package com.anythink.basead.f;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.a.b.b;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements a {
    public static final String h = "extra_request_id";
    public static final String i = "extra_scenario";
    public static final String j = "extra_orientation";
    public String b = getClass().getSimpleName();
    public Context c;
    public m d;
    public String e;
    public boolean f;
    public z g;

    public c(Context context, m mVar, String str, boolean z) {
        this.c = context.getApplicationContext();
        this.d = mVar;
        this.e = str;
        this.f = z;
    }

    private com.anythink.basead.c.e b() {
        if (TextUtils.isEmpty(this.e) || TextUtils.isEmpty(this.d.b)) {
            return com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.v);
        }
        z zVarA = com.anythink.basead.f.a.a.a(this.c).a(this.d.b, this.e);
        this.g = zVarA;
        if (zVarA == null) {
            return com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.y);
        }
        if (this.d.n == null) {
            return com.anythink.basead.c.f.a(com.anythink.basead.c.f.j, com.anythink.basead.c.f.z);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0046 A[Catch: Exception -> 0x005f, TryCatch #0 {Exception -> 0x005f, blocks: (B:2:0x0000, B:5:0x000a, B:8:0x0015, B:11:0x002b, B:18:0x0046, B:20:0x004a, B:12:0x0030, B:14:0x0036), top: B:25:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a A[Catch: Exception -> 0x005f, TRY_LEAVE, TryCatch #0 {Exception -> 0x005f, blocks: (B:2:0x0000, B:5:0x000a, B:8:0x0015, B:11:0x002b, B:18:0x0046, B:20:0x004a, B:12:0x0030, B:14:0x0036), top: B:25:0x0000 }] */
    @Override // com.anythink.basead.f.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.anythink.basead.e.c cVar) {
        String str;
        com.anythink.basead.c.e eVarA;
        try {
            if (TextUtils.isEmpty(this.e) || TextUtils.isEmpty(this.d.b)) {
                str = com.anythink.basead.c.f.v;
            } else {
                z zVarA = com.anythink.basead.f.a.a.a(this.c).a(this.d.b, this.e);
                this.g = zVarA;
                if (zVarA != null) {
                    eVarA = this.d.n == null ? com.anythink.basead.c.f.a(com.anythink.basead.c.f.j, com.anythink.basead.c.f.z) : null;
                    if (eVarA == null) {
                        cVar.onAdLoadFailed(eVarA);
                        return;
                    }
                    com.anythink.basead.f.a.a aVarA = com.anythink.basead.f.a.a.a(this.c);
                    m mVar = this.d;
                    aVarA.a(mVar.b, this.g, mVar, new b.InterfaceC0049b() { // from class: com.anythink.basead.f.c.1
                        @Override // com.anythink.basead.a.b.b.InterfaceC0049b
                        public final void a() {
                            IExHandler iExHandlerB = n.a().b();
                            if (iExHandlerB != null) {
                                c cVar2 = c.this;
                                iExHandlerB.fillDownloadStatus(cVar2.c, cVar2.g, cVar2.d);
                            }
                            com.anythink.basead.e.c cVar3 = cVar;
                            if (cVar3 != null) {
                                cVar3.onAdCacheLoaded();
                            }
                        }

                        @Override // com.anythink.basead.a.b.b.InterfaceC0049b
                        public final void a(com.anythink.basead.c.e eVar) {
                            com.anythink.basead.e.c cVar2 = cVar;
                            if (cVar2 != null) {
                                cVar2.onAdLoadFailed(eVar);
                            }
                        }
                    });
                    return;
                }
                str = com.anythink.basead.c.f.y;
            }
            eVarA = com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, str);
            if (eVarA == null) {
            }
        } catch (Exception e) {
            e.printStackTrace();
            cVar.onAdLoadFailed(com.anythink.basead.c.f.a("-9999", e.getMessage()));
        }
    }

    @Override // com.anythink.basead.f.a
    public boolean a() {
        try {
            if (d()) {
                return com.anythink.basead.f.a.a.a(this.c).a(this.g, this.d, this.f);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void c() {
    }

    public final boolean d() {
        if (this.c == null || TextUtils.isEmpty(this.d.b) || TextUtils.isEmpty(this.e)) {
            return false;
        }
        if (this.g != null) {
            return true;
        }
        z zVarA = com.anythink.basead.f.a.a.a(this.c).a(this.d.b, this.e);
        this.g = zVarA;
        return zVarA != null;
    }

    public final z e() {
        return this.g;
    }
}
