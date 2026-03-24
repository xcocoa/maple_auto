package com.anythink.banner.b;

import android.text.TextUtils;
import com.anythink.banner.a.c;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.d.f;
import com.anythink.core.d.h;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public String a;
    public WeakReference<c> b;
    public com.anythink.core.common.m.c c;
    public CustomBannerAdapter d;
    private boolean f = false;
    private Runnable e = new Runnable() { // from class: com.anythink.banner.b.a.1
        @Override // java.lang.Runnable
        public final void run() {
            a.a(a.this);
            a.b(a.this);
        }
    };

    public a(c cVar) {
        this.b = new WeakReference<>(cVar);
    }

    public static /* synthetic */ boolean a(a aVar) {
        aVar.f = false;
        return false;
    }

    public static /* synthetic */ void b(a aVar) {
        WeakReference<c> weakReference = aVar.b;
        c cVar = weakReference != null ? weakReference.get() : null;
        if (cVar != null) {
            cVar.timeUpRefreshView();
        } else {
            aVar.c();
        }
    }

    private void d() {
        WeakReference<c> weakReference = this.b;
        c cVar = weakReference != null ? weakReference.get() : null;
        if (cVar != null) {
            cVar.timeUpRefreshView();
        } else {
            c();
        }
    }

    public final void a(CustomBannerAdapter customBannerAdapter) {
        this.d = customBannerAdapter;
    }

    public final void a(String str) {
        this.a = str;
    }

    public final boolean a() {
        return this.f;
    }

    public final synchronized void b() {
        CustomBannerAdapter customBannerAdapter;
        av unitGroupInfo;
        if (TextUtils.isEmpty(this.a)) {
            return;
        }
        f fVarA = h.a(n.a().f()).a(this.a);
        if (this.c != null) {
            c();
        }
        if (fVarA != null && fVarA.af() == 1) {
            this.f = true;
            long jAt = (fVarA.c() != 2 || (customBannerAdapter = this.d) == null || (unitGroupInfo = customBannerAdapter.getUnitGroupInfo()) == null) ? 0L : unitGroupInfo.at();
            if (jAt <= 0) {
                jAt = fVarA.ag();
            }
            if (jAt <= com.anythink.expressad.exoplayer.i.a.f) {
                jAt = 2000;
            }
            com.anythink.core.common.m.c cVar = new com.anythink.core.common.m.c(jAt, this.e, (byte) 0);
            this.c = cVar;
            cVar.a();
        }
    }

    public final synchronized void c() {
        com.anythink.core.common.m.c cVar = this.c;
        if (cVar != null) {
            cVar.c();
        }
        this.c = null;
    }
}
