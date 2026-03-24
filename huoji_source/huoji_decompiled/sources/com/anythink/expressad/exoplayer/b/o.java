package com.anythink.expressad.exoplayer.b;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.b.g;
import com.anythink.expressad.exoplayer.b.h;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.v;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class o extends com.anythink.expressad.exoplayer.f.b implements com.anythink.expressad.exoplayer.k.n {
    private int A;
    private int B;
    private long C;
    private boolean D;
    private boolean E;
    private final Context r;
    private final g.a s;
    private final h t;
    private int u;
    private boolean v;
    private boolean w;
    private MediaFormat x;
    private int y;
    private int z;

    public final class a implements h.c {
        private a() {
        }

        public /* synthetic */ a(o oVar, byte b) {
            this();
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a() {
            o.b(o.this);
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a(int i) {
            o.this.s.a(i);
        }

        @Override // com.anythink.expressad.exoplayer.b.h.c
        public final void a(int i, long j, long j2) {
            o.this.s.a(i, j, j2);
        }
    }

    private o(Context context, com.anythink.expressad.exoplayer.f.c cVar) {
        this(context, cVar, null);
    }

    private o(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable Handler handler, @Nullable g gVar) {
        this(context, cVar, null, handler, gVar);
    }

    private o(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar) {
        this(context, cVar, gVar, null, null);
    }

    private o(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, @Nullable Handler handler, @Nullable g gVar2) {
        this(context, cVar, gVar, handler, gVar2, null, new f[0]);
    }

    public o(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, @Nullable Handler handler, @Nullable g gVar2, @Nullable c cVar2, f... fVarArr) {
        this(context, cVar, gVar, handler, gVar2, new l(cVar2, fVarArr));
    }

    private o(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, @Nullable Handler handler, @Nullable g gVar2, h hVar) {
        super(1, cVar, gVar, false);
        this.r = context.getApplicationContext();
        this.t = hVar;
        this.s = new g.a(handler, gVar2);
        hVar.a(new a(this, (byte) 0));
    }

    private static void C() {
    }

    private static void D() {
    }

    private static void E() {
    }

    private void F() {
        long jA = this.t.a(v());
        if (jA != Long.MIN_VALUE) {
            if (!this.E) {
                jA = Math.max(this.C, jA);
            }
            this.C = jA;
            this.E = false;
        }
    }

    private int a(com.anythink.expressad.exoplayer.f.a aVar, com.anythink.expressad.exoplayer.m mVar) {
        PackageManager packageManager;
        int i = af.a;
        if (i < 24 && "OMX.google.raw.decoder".equals(aVar.c)) {
            boolean z = true;
            if (i == 23 && (packageManager = this.r.getPackageManager()) != null && packageManager.hasSystemFeature("android.software.leanback")) {
                z = false;
            }
            if (z) {
                return -1;
            }
        }
        return mVar.i;
    }

    @SuppressLint({"InlinedApi"})
    private static MediaFormat a(com.anythink.expressad.exoplayer.m mVar, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", mVar.u);
        mediaFormat.setInteger("sample-rate", mVar.v);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, mVar.j);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "max-input-size", i);
        if (af.a >= 23) {
            mediaFormat.setInteger("priority", 0);
        }
        return mediaFormat;
    }

    private static boolean a(com.anythink.expressad.exoplayer.m mVar, com.anythink.expressad.exoplayer.m mVar2) {
        return mVar.h.equals(mVar2.h) && mVar.u == mVar2.u && mVar.v == mVar2.v && mVar.x == 0 && mVar.y == 0 && mVar2.x == 0 && mVar2.y == 0 && mVar.b(mVar2);
    }

    private boolean a(String str) {
        int iE = com.anythink.expressad.exoplayer.k.o.e(str);
        return iE != 0 && this.t.a(iE);
    }

    private int b(com.anythink.expressad.exoplayer.f.a aVar, com.anythink.expressad.exoplayer.m mVar) {
        PackageManager packageManager;
        int i = af.a;
        if (i < 24 && "OMX.google.raw.decoder".equals(aVar.c)) {
            boolean z = true;
            if (i == 23 && (packageManager = this.r.getPackageManager()) != null && packageManager.hasSystemFeature("android.software.leanback")) {
                z = false;
            }
            if (z) {
                return -1;
            }
        }
        return mVar.i;
    }

    public static /* synthetic */ boolean b(o oVar) {
        oVar.E = true;
        return true;
    }

    private static boolean b(String str) {
        if (af.a >= 24 || !"OMX.SEC.aac.dec".equals(str) || !"samsung".equals(af.c)) {
            return false;
        }
        String str2 = af.b;
        return str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte");
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final int a(com.anythink.expressad.exoplayer.f.a aVar, com.anythink.expressad.exoplayer.m mVar, com.anythink.expressad.exoplayer.m mVar2) {
        return 0;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final int a(com.anythink.expressad.exoplayer.f.c cVar, com.anythink.expressad.exoplayer.d.g<com.anythink.expressad.exoplayer.d.k> gVar, com.anythink.expressad.exoplayer.m mVar) {
        boolean z;
        int i;
        int i2;
        String str = mVar.h;
        boolean z3 = false;
        if (!com.anythink.expressad.exoplayer.k.o.a(str)) {
            return 0;
        }
        int i3 = af.a >= 21 ? 32 : 0;
        boolean zA = com.anythink.expressad.exoplayer.a.a(gVar, mVar.k);
        if (zA && a(str) && cVar.a() != null) {
            return i3 | 8 | 4;
        }
        if ((com.anythink.expressad.exoplayer.k.o.w.equals(str) && !this.t.a(mVar.w)) || !this.t.a(2)) {
            return 1;
        }
        com.anythink.expressad.exoplayer.d.e eVar = mVar.k;
        if (eVar != null) {
            z = false;
            for (int i4 = 0; i4 < eVar.b; i4++) {
                z |= eVar.a(i4).d;
            }
        } else {
            z = false;
        }
        com.anythink.expressad.exoplayer.f.a aVarA = cVar.a(str, z);
        if (aVarA == null) {
            return (!z || cVar.a(str, false) == null) ? 1 : 2;
        }
        if (!zA) {
            return 2;
        }
        if (af.a < 21 || (((i = mVar.v) == -1 || aVarA.a(i)) && ((i2 = mVar.u) == -1 || aVarA.b(i2)))) {
            z3 = true;
        }
        return i3 | 8 | (z3 ? 4 : 3);
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final com.anythink.expressad.exoplayer.f.a a(com.anythink.expressad.exoplayer.f.c cVar, com.anythink.expressad.exoplayer.m mVar, boolean z) {
        com.anythink.expressad.exoplayer.f.a aVarA;
        return (!a(mVar.h) || (aVarA = cVar.a()) == null) ? super.a(cVar, mVar, z) : aVarA;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final v a(v vVar) {
        return this.t.a(vVar);
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.x.b
    public final void a(int i, Object obj) {
        if (i == 2) {
            this.t.a(((Float) obj).floatValue());
        } else if (i != 3) {
            super.a(i, obj);
        } else {
            this.t.a((b) obj);
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void a(long j, boolean z) throws com.anythink.expressad.exoplayer.g {
        super.a(j, z);
        this.t.i();
        this.C = j;
        this.D = true;
        this.E = true;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws com.anythink.expressad.exoplayer.g {
        int iE;
        int[] iArr;
        int i;
        MediaFormat mediaFormat2 = this.x;
        if (mediaFormat2 != null) {
            iE = com.anythink.expressad.exoplayer.k.o.e(mediaFormat2.getString("mime"));
            mediaFormat = this.x;
        } else {
            iE = this.y;
        }
        int i2 = iE;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.w && integer == 6 && (i = this.z) < 6) {
            iArr = new int[i];
            for (int i3 = 0; i3 < this.z; i3++) {
                iArr[i3] = i3;
            }
        } else {
            iArr = null;
        }
        try {
            this.t.a(i2, integer, integer2, iArr, this.A, this.B);
        } catch (h.a e) {
            throw com.anythink.expressad.exoplayer.g.a(e, s());
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(com.anythink.expressad.exoplayer.c.e eVar) {
        if (!this.D || eVar.b()) {
            return;
        }
        if (Math.abs(eVar.f - this.C) > 500000) {
            this.C = eVar.f;
        }
        this.D = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    @Override // com.anythink.expressad.exoplayer.f.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.anythink.expressad.exoplayer.f.a aVar, MediaCodec mediaCodec, com.anythink.expressad.exoplayer.m mVar, MediaCrypto mediaCrypto) {
        int i;
        PackageManager packageManager;
        q();
        int i2 = af.a;
        boolean z = true;
        if (i2 >= 24 || !"OMX.google.raw.decoder".equals(aVar.c)) {
            i = mVar.i;
        } else {
            if ((i2 == 23 && (packageManager = this.r.getPackageManager()) != null && packageManager.hasSystemFeature("android.software.leanback")) ? false : true) {
                i = -1;
            }
        }
        this.u = i;
        String str = aVar.c;
        if (i2 < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(af.c)) {
            String str2 = af.b;
            if (!str2.startsWith("zeroflte") && !str2.startsWith("herolte") && !str2.startsWith("heroqlte")) {
            }
        } else {
            z = false;
        }
        this.w = z;
        this.v = aVar.i;
        String str3 = aVar.d;
        if (str3 == null) {
            str3 = com.anythink.expressad.exoplayer.k.o.w;
        }
        int i3 = this.u;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger("channel-count", mVar.u);
        mediaFormat.setInteger("sample-rate", mVar.v);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, mVar.j);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "max-input-size", i3);
        if (i2 >= 23) {
            mediaFormat.setInteger("priority", 0);
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
        if (!this.v) {
            this.x = null;
        } else {
            this.x = mediaFormat;
            mediaFormat.setString("mime", mVar.h);
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(String str, long j, long j2) {
        this.s.a(str, j, j2);
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void a(boolean z) {
        super.a(z);
        this.s.a(((com.anythink.expressad.exoplayer.f.b) this).q);
        int i = r().b;
        if (i != 0) {
            this.t.c(i);
        } else {
            this.t.g();
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws com.anythink.expressad.exoplayer.g {
        if (this.v && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            ((com.anythink.expressad.exoplayer.f.b) this).q.f++;
            this.t.b();
            return true;
        }
        try {
            if (!this.t.a(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            ((com.anythink.expressad.exoplayer.f.b) this).q.e++;
            return true;
        } catch (h.b | h.d e) {
            throw com.anythink.expressad.exoplayer.g.a(e, s());
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void b(com.anythink.expressad.exoplayer.m mVar) throws com.anythink.expressad.exoplayer.g {
        super.b(mVar);
        this.s.a(mVar);
        this.y = com.anythink.expressad.exoplayer.k.o.w.equals(mVar.h) ? mVar.w : 2;
        this.z = mVar.u;
        this.A = mVar.x;
        this.B = mVar.y;
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.y
    public final com.anythink.expressad.exoplayer.k.n c() {
        return this;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final long d() {
        if (a_() == 2) {
            F();
        }
        return this.C;
    }

    @Override // com.anythink.expressad.exoplayer.k.n
    public final v e() {
        return this.t.f();
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void n() {
        super.n();
        this.t.a();
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void o() {
        F();
        this.t.h();
        super.o();
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void p() {
        try {
            this.t.j();
            try {
                super.p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.y
    public final boolean u() {
        return this.t.e() || super.u();
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.y
    public final boolean v() {
        return super.v() && this.t.d();
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void w() throws com.anythink.expressad.exoplayer.g {
        try {
            this.t.c();
        } catch (h.d e) {
            throw com.anythink.expressad.exoplayer.g.a(e, s());
        }
    }
}
