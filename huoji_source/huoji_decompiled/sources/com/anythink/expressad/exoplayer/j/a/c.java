package com.anythink.expressad.exoplayer.j.a;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.j.a.a;
import com.anythink.expressad.exoplayer.j.r;
import com.anythink.expressad.exoplayer.j.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class c implements com.anythink.expressad.exoplayer.j.h {
    public static final long a = 2097152;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 0;
    public static final int f = 1;
    private static final int g = -1;
    private static final long h = 102400;
    private boolean A;
    private long B;
    private long C;
    private final com.anythink.expressad.exoplayer.j.a.a i;
    private final com.anythink.expressad.exoplayer.j.h j;
    private final com.anythink.expressad.exoplayer.j.h k;
    private final com.anythink.expressad.exoplayer.j.h l;

    @Nullable
    private final b m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private com.anythink.expressad.exoplayer.j.h q;
    private boolean r;
    private Uri s;
    private Uri t;
    private int u;
    private String v;
    private long w;
    private long x;
    private e y;
    private boolean z;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public interface b {
        void a();

        void b();
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.j.a.c$c, reason: collision with other inner class name */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InterfaceC0127c {
    }

    public c(com.anythink.expressad.exoplayer.j.a.a aVar, com.anythink.expressad.exoplayer.j.h hVar) {
        this(aVar, hVar, 0, (byte) 0);
    }

    private c(com.anythink.expressad.exoplayer.j.a.a aVar, com.anythink.expressad.exoplayer.j.h hVar, int i) {
        this(aVar, hVar, i, (byte) 0);
    }

    private c(com.anythink.expressad.exoplayer.j.a.a aVar, com.anythink.expressad.exoplayer.j.h hVar, int i, byte b2) {
        this(aVar, hVar, new r(), new com.anythink.expressad.exoplayer.j.a.b(aVar), i, null);
    }

    private c(com.anythink.expressad.exoplayer.j.a.a aVar, com.anythink.expressad.exoplayer.j.h hVar, com.anythink.expressad.exoplayer.j.h hVar2, com.anythink.expressad.exoplayer.j.g gVar, int i, @Nullable b bVar) {
        this.i = aVar;
        this.j = hVar2;
        this.n = (i & 1) != 0;
        this.o = (i & 2) != 0;
        this.p = (i & 4) != 0;
        this.l = hVar;
        this.k = new z(hVar, gVar);
        this.m = bVar;
    }

    private static Uri a(com.anythink.expressad.exoplayer.j.a.a aVar, String str, Uri uri) {
        String strA = aVar.c(str).a("exo_redir", (String) null);
        Uri uri2 = strA != null ? Uri.parse(strA) : null;
        return uri2 == null ? uri : uri2;
    }

    private void a(boolean z) throws InterruptedIOException {
        e eVarA;
        long jMin;
        com.anythink.expressad.exoplayer.j.k kVar;
        com.anythink.expressad.exoplayer.j.h hVar;
        if (this.A) {
            eVarA = null;
        } else if (this.n) {
            try {
                eVarA = this.i.a(this.v, this.w);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            eVarA = this.i.b(this.v, this.w);
        }
        if (eVarA == null) {
            hVar = this.l;
            kVar = new com.anythink.expressad.exoplayer.j.k(this.s, this.w, this.x, this.v, this.u);
        } else if (eVarA.d) {
            Uri uriFromFile = Uri.fromFile(eVarA.e);
            long j = this.w - eVarA.b;
            long jMin2 = eVarA.c - j;
            long j2 = this.x;
            if (j2 != -1) {
                jMin2 = Math.min(jMin2, j2);
            }
            kVar = new com.anythink.expressad.exoplayer.j.k(uriFromFile, this.w, j, jMin2, this.v, this.u);
            hVar = this.j;
        } else {
            if (eVarA.a()) {
                jMin = this.x;
            } else {
                jMin = eVarA.c;
                long j3 = this.x;
                if (j3 != -1) {
                    jMin = Math.min(jMin, j3);
                }
            }
            com.anythink.expressad.exoplayer.j.k kVar2 = new com.anythink.expressad.exoplayer.j.k(this.s, this.w, jMin, this.v, this.u);
            com.anythink.expressad.exoplayer.j.h hVar2 = this.k;
            if (hVar2 == null) {
                hVar2 = this.l;
                this.i.a(eVarA);
                eVarA = null;
            }
            kVar = kVar2;
            hVar = hVar2;
        }
        this.C = (this.A || hVar != this.l) ? Long.MAX_VALUE : this.w + 102400;
        if (z) {
            com.anythink.expressad.exoplayer.k.a.b(e());
            if (hVar == this.l) {
                return;
            }
            try {
                h();
            } catch (Throwable th) {
                if (eVarA.b()) {
                    this.i.a(eVarA);
                }
                throw th;
            }
        }
        if (eVarA != null && eVarA.b()) {
            this.y = eVarA;
        }
        this.q = hVar;
        this.r = kVar.g == -1;
        long jA = hVar.a(kVar);
        k kVar3 = new k();
        if (this.r && jA != -1) {
            this.x = jA;
            j.a(kVar3, this.w + jA);
        }
        if (d()) {
            Uri uriA = this.q.a();
            this.t = uriA;
            if (true ^ this.s.equals(uriA)) {
                j.a(kVar3, this.t);
            } else {
                kVar3.a("exo_redir");
            }
        }
        if (g()) {
            this.i.a(this.v, kVar3);
        }
    }

    private static boolean a(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof com.anythink.expressad.exoplayer.j.i) && ((com.anythink.expressad.exoplayer.j.i) cause).b == 0) {
                return true;
            }
        }
        return false;
    }

    private int b(com.anythink.expressad.exoplayer.j.k kVar) {
        if (this.o && this.z) {
            return 0;
        }
        return (this.p && kVar.g == -1) ? 1 : -1;
    }

    private void b(IOException iOException) {
        if (f() || (iOException instanceof a.C0126a)) {
            this.z = true;
        }
    }

    private void c() {
        this.x = 0L;
        if (g()) {
            this.i.d(this.v, this.w);
        }
    }

    private boolean d() {
        return !f();
    }

    private boolean e() {
        return this.q == this.l;
    }

    private boolean f() {
        return this.q == this.j;
    }

    private boolean g() {
        return this.q == this.k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h() {
        com.anythink.expressad.exoplayer.j.h hVar = this.q;
        if (hVar == null) {
            return;
        }
        try {
            hVar.b();
        } finally {
            this.q = null;
            this.r = false;
            e eVar = this.y;
            if (eVar != null) {
                this.i.a(eVar);
                this.y = null;
            }
        }
    }

    private static void i() {
    }

    private void j() {
        if (this.m == null || this.B <= 0) {
            return;
        }
        this.i.c();
        this.B = 0L;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        boolean z = false;
        if (i2 == 0) {
            return 0;
        }
        if (this.x == 0) {
            return -1;
        }
        try {
            if (this.w >= this.C) {
                a(true);
            }
            int iA = this.q.a(bArr, i, i2);
            if (iA != -1) {
                if (f()) {
                    this.B += (long) iA;
                }
                long j = iA;
                this.w += j;
                long j2 = this.x;
                if (j2 != -1) {
                    this.x = j2 - j;
                }
            } else {
                if (!this.r) {
                    long j3 = this.x;
                    if (j3 <= 0) {
                        if (j3 == -1) {
                        }
                    }
                    h();
                    a(false);
                    return a(bArr, i, i2);
                }
                c();
            }
            return iA;
        } catch (IOException e2) {
            if (this.r) {
                Throwable cause = e2;
                while (true) {
                    if (cause != null) {
                        if ((cause instanceof com.anythink.expressad.exoplayer.j.i) && ((com.anythink.expressad.exoplayer.j.i) cause).b == 0) {
                            z = true;
                            break;
                        }
                        cause = cause.getCause();
                    } else {
                        break;
                    }
                }
                if (z) {
                    c();
                    return -1;
                }
            }
            b(e2);
            throw e2;
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final long a(com.anythink.expressad.exoplayer.j.k kVar) throws IOException {
        try {
            String strA = f.a(kVar);
            this.v = strA;
            Uri uri = kVar.c;
            this.s = uri;
            Uri uri2 = null;
            String strA2 = this.i.c(strA).a("exo_redir", (String) null);
            if (strA2 != null) {
                uri2 = Uri.parse(strA2);
            }
            if (uri2 != null) {
                uri = uri2;
            }
            this.t = uri;
            this.u = kVar.i;
            this.w = kVar.f;
            boolean z = true;
            if (((this.o && this.z) ? (byte) 0 : (this.p && kVar.g == -1) ? (byte) 1 : (byte) -1) == -1) {
                z = false;
            }
            this.A = z;
            long j = kVar.g;
            if (j != -1 || z) {
                this.x = j;
            } else {
                long jB = this.i.b(this.v);
                this.x = jB;
                if (jB != -1) {
                    long j2 = jB - kVar.f;
                    this.x = j2;
                    if (j2 <= 0) {
                        throw new com.anythink.expressad.exoplayer.j.i();
                    }
                }
            }
            a(false);
            return this.x;
        } catch (IOException e2) {
            b(e2);
            throw e2;
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final Uri a() {
        return this.t;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final void b() throws IOException {
        this.s = null;
        this.t = null;
        if (this.m != null && this.B > 0) {
            this.i.c();
            this.B = 0L;
        }
        try {
            h();
        } catch (IOException e2) {
            b(e2);
            throw e2;
        }
    }
}
