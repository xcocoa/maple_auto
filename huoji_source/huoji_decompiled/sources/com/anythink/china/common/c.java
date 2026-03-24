package com.anythink.china.common;

import android.os.SystemClock;
import com.anythink.china.api.ATAppDownloadListener;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.i;
import com.anythink.core.common.q;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class c implements CustomAdapterDownloadListener {
    public ATBaseAdAdapter a;
    public BaseAd b;
    public ATAdInfo c;
    public WeakReference<ATAppDownloadListener> d;
    public long e;
    public boolean f;
    public boolean g;

    public c(ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, ATEventInterface aTEventInterface) {
        this.a = aTBaseAdAdapter;
        this.b = baseAd;
        if (aTEventInterface == null || !(aTEventInterface instanceof ATAppDownloadListener)) {
            return;
        }
        this.d = new WeakReference<>((ATAppDownloadListener) aTEventInterface);
    }

    private void a() {
        BaseAd baseAd = this.b;
        this.c = baseAd != null ? j.a(baseAd, this.a) : j.a(this.a);
    }

    private void a(final int i, final long j, final String str) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.china.common.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    i iVar = new i();
                    c cVar = c.this;
                    BaseAd baseAd = cVar.b;
                    iVar.b = baseAd != null ? baseAd.getDetail() : cVar.a.getTrackingInfo();
                    iVar.a = i;
                    iVar.c = System.currentTimeMillis();
                    au auVar = iVar.b;
                    if (auVar instanceof h) {
                        ((h) auVar).b(str);
                        ((h) iVar.b).d(j);
                    }
                    q.a(n.a().f()).a(i, iVar, com.anythink.core.d.b.a(n.a().f()).b(n.a().o()));
                } catch (Throwable unused) {
                }
            }
        }, 2, true);
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadFail(long j, long j2, String str, String str2) {
        if (this.c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadFail(this.c, j, j2, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadFinish(long j, String str, String str2) {
        if (this.c == null) {
            a();
        }
        if (this.e != 0 && !this.g) {
            this.g = true;
            a(19, SystemClock.elapsedRealtime() - this.e, str2);
        }
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadFinish(this.c, j, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadPause(long j, long j2, String str, String str2) {
        if (this.c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadPause(this.c, j, j2, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadStart(long j, long j2, String str, String str2) {
        if (this.c == null) {
            a();
        }
        this.e = SystemClock.elapsedRealtime();
        a(18, 0L, str2);
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadStart(this.c, j, j2, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onDownloadUpdate(long j, long j2, String str, String str2) {
        if (this.c == null) {
            a();
        }
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onDownloadUpdate(this.c, j, j2, str, str2);
        }
    }

    @Override // com.anythink.china.api.CustomAdapterDownloadListener
    public final void onInstalled(String str, String str2) {
        if (this.c == null) {
            a();
        }
        if (!this.f) {
            this.f = true;
            a(20, 0L, str2);
        }
        WeakReference<ATAppDownloadListener> weakReference = this.d;
        ATAppDownloadListener aTAppDownloadListener = weakReference != null ? weakReference.get() : null;
        if (aTAppDownloadListener != null) {
            aTAppDownloadListener.onInstalled(this.c, str, str2);
        }
    }
}
