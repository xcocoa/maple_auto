package com.iflytek.voiceads.e;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.download.p;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.request.a;
import com.iflytek.voiceads.videolib.JZPlayer;
import com.iflytek.voiceads.videolib.JZVPStandard;
import com.iflytek.voiceads.videolib.n;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    public JZVPStandard a;
    private com.iflytek.voiceads.param.a c;
    private Context d;
    private com.iflytek.voiceads.d.b e;
    private com.iflytek.voiceads.d.a f;
    private IFLYVideoListener g;
    private int i;
    private g j;
    private String k;
    a.InterfaceC0184a b = new b(this);
    private f h = new f();

    public a(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        this.d = context;
        this.g = iFLYVideoListener;
        this.i = i;
        this.c = new com.iflytek.voiceads.param.a(str);
        this.e = new com.iflytek.voiceads.d.b(this.d.getApplicationContext());
        this.h.a(this.g);
        this.a = new JZVPStandard(context);
    }

    public synchronized void a() {
        try {
            try {
                com.iflytek.voiceads.request.f.a(this.d.getApplicationContext(), this.c, this.b);
            } catch (AdError e) {
                this.h.a(1, e);
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", e.getErrorDescription());
            }
        } catch (Exception e2) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e2.getMessage());
        }
    }

    public void a(String str, Object obj) {
        this.c.a(str, obj);
    }

    public void a(boolean z) {
        if (this.a == null) {
            return;
        }
        this.a.b(z);
    }

    public void a(Object... objArr) {
        if (this.a == null) {
            return;
        }
        try {
            this.a.a(this.j);
            this.a.a(this.c);
            this.a.a(this.g);
            this.a.a(this.i);
            switch (this.i) {
                case 0:
                    c();
                    this.a.a(this.k, "", 0, new Object[0]);
                    break;
                case 1:
                    n.a(this.d, ((Integer) objArr[0]).intValue());
                    this.a.a(this.k, "", 1, new Object[0]);
                    this.a.m.performClick();
                    break;
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "video show ad" + e.getMessage());
        }
    }

    public void b() {
        if (this.d == null || this.f == null) {
            return;
        }
        p.a(this.d, this.f.j, new c(this));
    }

    public void b(boolean z) {
        if (this.a == null) {
            return;
        }
        this.a.a(z);
    }

    public void c() {
        try {
            new com.iflytek.voiceads.b.a(this.d.getApplicationContext(), this.j.h.optString(com.anythink.expressad.foundation.d.c.am)).a(new d(this));
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "loadCoverImg:" + e.getMessage());
        }
    }

    public void c(boolean z) {
        if (this.a == null) {
            return;
        }
        this.a.c(z);
    }

    public void d() {
        if (this.a == null) {
            return;
        }
        this.a.m.performClick();
    }

    public void e() {
        if (this.a == null) {
            return;
        }
        this.a.f();
        this.a.a((IFLYVideoListener) null);
        this.a = null;
    }

    public void f() {
        if (this.a == null) {
            return;
        }
        this.a.h();
    }

    public void g() {
        if (this.a == null) {
            return;
        }
        this.a.e();
    }

    public void h() {
        if (this.a == null) {
            return;
        }
        this.a.d();
    }

    public boolean i() {
        return this.a != null && this.a.g == 3;
    }

    public boolean j() {
        if (this.a == null) {
            return false;
        }
        return JZPlayer.b();
    }

    public void k() {
        if (this.a == null) {
            return;
        }
        this.a.i();
    }

    public void l() {
        if (this.a == null) {
            return;
        }
        this.a.j();
    }
}
