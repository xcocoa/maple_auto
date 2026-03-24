package com.anythink.china.common.a;

import android.graphics.Bitmap;
import com.anythink.core.common.f.l;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public String a;
    public String b;
    public String c;
    public Bitmap d;
    public String e;
    public String f;
    public long g;
    public long h;
    public long i;
    public l j;
    public String k;
    public com.anythink.core.common.g.b l;
    public String m;
    public String n;
    public int p;
    public int q;
    public boolean o = false;
    private volatile a r = a.IDLE;

    public enum a {
        IDLE,
        LOADING,
        PAUSE,
        STOP,
        FINISH,
        FAIL,
        INSTALLED
    }

    private boolean o() {
        return this.r == a.STOP;
    }

    public final a a() {
        return this.r;
    }

    public final boolean b() {
        return this.r == a.IDLE;
    }

    public final boolean c() {
        return this.r == a.PAUSE;
    }

    public final boolean d() {
        return this.r == a.LOADING;
    }

    public final void e() {
        this.r = a.IDLE;
    }

    public final boolean f() {
        return this.r == a.INSTALLED;
    }

    public final boolean g() {
        return this.r == a.FINISH;
    }

    public final boolean h() {
        return this.r == a.FAIL;
    }

    public final void i() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(4);
        }
        this.r = a.LOADING;
    }

    public final void j() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(7);
        }
        this.r = a.STOP;
    }

    public final void k() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(7);
        }
        this.r = a.PAUSE;
    }

    public final void l() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(5);
        }
        this.r = a.FINISH;
    }

    public final void m() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(2);
        }
        this.r = a.INSTALLED;
    }

    public final void n() {
        l lVar = this.j;
        if (lVar != null) {
            lVar.l(6);
        }
        this.r = a.FAIL;
    }
}
