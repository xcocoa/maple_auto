package com.anythink.expressad.exoplayer.j;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
public final class n implements h {
    private static final String a = "DefaultDataSource";
    private static final String b = "asset";
    private static final String c = "content";
    private static final String d = "rtmp";
    private static final String e = "rawresource";
    private final Context f;
    private final aa<? super h> g;
    private final h h;
    private h i;
    private h j;
    private h k;
    private h l;
    private h m;
    private h n;
    private h o;

    public n(Context context, aa<? super h> aaVar, h hVar) {
        this.f = context.getApplicationContext();
        this.g = aaVar;
        this.h = (h) com.anythink.expressad.exoplayer.k.a.a(hVar);
    }

    private n(Context context, aa<? super h> aaVar, String str, boolean z) {
        this(context, aaVar, str, z, (byte) 0);
    }

    private n(Context context, aa<? super h> aaVar, String str, boolean z, byte b2) {
        this(context, aaVar, new p(str, null, aaVar, 8000, 8000, z, null));
    }

    private h c() {
        if (this.i == null) {
            this.i = new r(this.g);
        }
        return this.i;
    }

    private h d() {
        if (this.j == null) {
            this.j = new c(this.f, this.g);
        }
        return this.j;
    }

    private h e() {
        if (this.k == null) {
            this.k = new e(this.f, this.g);
        }
        return this.k;
    }

    private h f() {
        if (this.l == null) {
            try {
                this.l = (h) Class.forName("com.anythink.expressad.exoplayer.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException unused) {
                Log.w(a, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.l == null) {
                this.l = this.h;
            }
        }
        return this.l;
    }

    private h g() {
        if (this.m == null) {
            this.m = new f();
        }
        return this.m;
    }

    private h h() {
        if (this.n == null) {
            this.n = new y(this.f, this.g);
        }
        return this.n;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) {
        return this.o.a(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    @Override // com.anythink.expressad.exoplayer.j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(k kVar) {
        h hVarF;
        com.anythink.expressad.exoplayer.k.a.b(this.o == null);
        String scheme = kVar.c.getScheme();
        if (af.a(kVar.c)) {
            if (kVar.c.getPath().startsWith("/android_asset/")) {
                hVarF = d();
            } else {
                if (this.i == null) {
                    this.i = new r(this.g);
                }
                hVarF = this.i;
            }
        } else if (!b.equals(scheme)) {
            if ("content".equals(scheme)) {
                if (this.k == null) {
                    this.k = new e(this.f, this.g);
                }
                hVarF = this.k;
            } else if (d.equals(scheme)) {
                hVarF = f();
            } else if ("data".equals(scheme)) {
                if (this.m == null) {
                    this.m = new f();
                }
                hVarF = this.m;
            } else if ("rawresource".equals(scheme)) {
                if (this.n == null) {
                    this.n = new y(this.f, this.g);
                }
                hVarF = this.n;
            } else {
                hVarF = this.h;
            }
        }
        this.o = hVarF;
        return this.o.a(kVar);
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final Uri a() {
        h hVar = this.o;
        if (hVar == null) {
            return null;
        }
        return hVar.a();
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final void b() {
        h hVar = this.o;
        if (hVar != null) {
            try {
                hVar.b();
            } finally {
                this.o = null;
            }
        }
    }
}
