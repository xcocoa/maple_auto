package com.anythink.expressad.exoplayer.b;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManagerImpl;
import com.anythink.expressad.exoplayer.b.f;
import com.anythink.expressad.exoplayer.b.h;
import com.anythink.expressad.exoplayer.b.j;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.v;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import z2.p7;

/* JADX INFO: loaded from: classes.dex */
public final class l implements h {
    public static boolean b = false;
    public static boolean c = false;
    private static final long d = 250000;
    private static final long e = 750000;
    private static final long f = 250000;
    private static final int g = 4;
    private static final int h = -2;
    private static final int i = 0;
    private static final int j = 1;
    private static final int k = 1;

    @SuppressLint({"InlinedApi"})
    private static final int l = 1;
    private static final String m = "AudioTrack";
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;

    @Nullable
    private h.c A;

    @Nullable
    private AudioTrack B;
    private AudioTrack C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private int H;
    private int I;
    private com.anythink.expressad.exoplayer.b.b J;
    private boolean K;
    private boolean L;
    private int M;

    @Nullable
    private v N;
    private v O;
    private long P;
    private long Q;

    @Nullable
    private ByteBuffer R;
    private int S;
    private int T;
    private long U;
    private long V;
    private int W;
    private long X;
    private long Y;
    private int Z;
    private int aa;
    private long ab;
    private float ac;
    private com.anythink.expressad.exoplayer.b.f[] ad;
    private ByteBuffer[] ae;

    @Nullable
    private ByteBuffer af;

    @Nullable
    private ByteBuffer ag;
    private byte[] ah;
    private int ai;
    private int aj;
    private boolean ak;
    private boolean al;
    private int am;
    private boolean an;
    private long ao;

    @Nullable
    private final com.anythink.expressad.exoplayer.b.c q;
    private final a r;
    private final boolean s;
    private final k t;
    private final u u;
    private final com.anythink.expressad.exoplayer.b.f[] v;
    private final com.anythink.expressad.exoplayer.b.f[] w;
    private final ConditionVariable x;
    private final j y;
    private final ArrayDeque<d> z;

    public interface a {
        long a(long j);

        v a(v vVar);

        com.anythink.expressad.exoplayer.b.f[] a();

        long b();
    }

    public static class b implements a {
        private final com.anythink.expressad.exoplayer.b.f[] a;
        private final q b;
        private final t c;

        public b(com.anythink.expressad.exoplayer.b.f... fVarArr) {
            com.anythink.expressad.exoplayer.b.f[] fVarArr2 = (com.anythink.expressad.exoplayer.b.f[]) Arrays.copyOf(fVarArr, fVarArr.length + 2);
            this.a = fVarArr2;
            q qVar = new q();
            this.b = qVar;
            t tVar = new t();
            this.c = tVar;
            fVarArr2[fVarArr.length] = qVar;
            fVarArr2[fVarArr.length + 1] = tVar;
        }

        @Override // com.anythink.expressad.exoplayer.b.l.a
        public final long a(long j) {
            return this.c.a(j);
        }

        @Override // com.anythink.expressad.exoplayer.b.l.a
        public final v a(v vVar) {
            this.b.a(vVar.d);
            return new v(this.c.a(vVar.b), this.c.b(vVar.c), vVar.d);
        }

        @Override // com.anythink.expressad.exoplayer.b.l.a
        public final com.anythink.expressad.exoplayer.b.f[] a() {
            return this.a;
        }

        @Override // com.anythink.expressad.exoplayer.b.l.a
        public final long b() {
            return this.b.j();
        }
    }

    public static final class c extends RuntimeException {
        private c(String str) {
            super(str);
        }

        public /* synthetic */ c(String str, byte b) {
            this(str);
        }
    }

    public static final class d {
        private final v a;
        private final long b;
        private final long c;

        private d(v vVar, long j, long j2) {
            this.a = vVar;
            this.b = j;
            this.c = j2;
        }

        public /* synthetic */ d(v vVar, long j, long j2, byte b) {
            this(vVar, j, j2);
        }
    }

    public final class e implements j.a {
        private e() {
        }

        public /* synthetic */ e(l lVar, byte b) {
            this();
        }

        @Override // com.anythink.expressad.exoplayer.b.j.a
        public final void a(int i, long j) {
            if (l.this.A != null) {
                l.this.A.a(i, j, SystemClock.elapsedRealtime() - l.this.ao);
            }
        }

        @Override // com.anythink.expressad.exoplayer.b.j.a
        public final void a(long j) {
            Log.w(l.m, "Ignoring impossibly large audio latency: ".concat(String.valueOf(j)));
        }

        @Override // com.anythink.expressad.exoplayer.b.j.a
        public final void a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + l.this.r() + ", " + l.this.s();
            if (l.c) {
                throw new c(str, (byte) 0);
            }
            Log.w(l.m, str);
        }

        @Override // com.anythink.expressad.exoplayer.b.j.a
        public final void b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + l.this.r() + ", " + l.this.s();
            if (l.c) {
                throw new c(str, (byte) 0);
            }
            Log.w(l.m, str);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface f {
    }

    private l(@Nullable com.anythink.expressad.exoplayer.b.c cVar, a aVar) {
        this.q = cVar;
        this.r = (a) com.anythink.expressad.exoplayer.k.a.a(aVar);
        this.s = false;
        this.x = new ConditionVariable(true);
        this.y = new j(new e(this, (byte) 0));
        k kVar = new k();
        this.t = kVar;
        u uVar = new u();
        this.u = uVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new p(), kVar, uVar);
        Collections.addAll(arrayList, aVar.a());
        this.v = (com.anythink.expressad.exoplayer.b.f[]) arrayList.toArray(new com.anythink.expressad.exoplayer.b.f[arrayList.size()]);
        this.w = new com.anythink.expressad.exoplayer.b.f[]{new n()};
        this.ac = 1.0f;
        this.aa = 0;
        this.J = com.anythink.expressad.exoplayer.b.b.a;
        this.am = 0;
        this.O = v.a;
        this.aj = -1;
        this.ad = new com.anythink.expressad.exoplayer.b.f[0];
        this.ae = new ByteBuffer[0];
        this.z = new ArrayDeque<>();
    }

    public l(@Nullable com.anythink.expressad.exoplayer.b.c cVar, com.anythink.expressad.exoplayer.b.f[] fVarArr) {
        this(cVar, fVarArr, (byte) 0);
    }

    private l(@Nullable com.anythink.expressad.exoplayer.b.c cVar, com.anythink.expressad.exoplayer.b.f[] fVarArr, byte b2) {
        this(cVar, new b(fVarArr));
    }

    private static int a(int i2, ByteBuffer byteBuffer) {
        if (i2 == 7 || i2 == 8) {
            return m.a(byteBuffer);
        }
        if (i2 == 5) {
            return com.anythink.expressad.exoplayer.b.a.a();
        }
        if (i2 == 6) {
            return com.anythink.expressad.exoplayer.b.a.a(byteBuffer);
        }
        if (i2 != 14) {
            throw new IllegalStateException("Unexpected audio encoding: ".concat(String.valueOf(i2)));
        }
        int iB = com.anythink.expressad.exoplayer.b.a.b(byteBuffer);
        if (iB == -1) {
            return 0;
        }
        return com.anythink.expressad.exoplayer.b.a.a(byteBuffer, iB) * 16;
    }

    @TargetApi(21)
    private static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2) {
        return audioTrack.write(byteBuffer, i2, 1);
    }

    @TargetApi(21)
    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2, long j2) {
        if (this.R == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.R = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.R.putInt(1431633921);
        }
        if (this.S == 0) {
            this.R.putInt(4, i2);
            this.R.putLong(8, j2 * 1000);
            this.R.position(0);
            this.S = i2;
        }
        int iRemaining = this.R.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.R, iRemaining, 1);
            if (iWrite < 0) {
                this.S = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iWrite2 = audioTrack.write(byteBuffer, i2, 1);
        if (iWrite2 < 0) {
            this.S = 0;
            return iWrite2;
        }
        this.S -= iWrite2;
        return iWrite2;
    }

    private void a(long j2) throws h.d {
        ByteBuffer byteBuffer;
        int length = this.ad.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.ae[i2 - 1];
            } else {
                byteBuffer = this.af;
                if (byteBuffer == null) {
                    byteBuffer = com.anythink.expressad.exoplayer.b.f.a;
                }
            }
            if (i2 == length) {
                b(byteBuffer, j2);
            } else {
                com.anythink.expressad.exoplayer.b.f fVar = this.ad[i2];
                fVar.a(byteBuffer);
                ByteBuffer byteBufferF = fVar.f();
                this.ae[i2] = byteBufferF;
                if (byteBufferF.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    @TargetApi(21)
    private static void a(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    private long b(long j2) {
        long j3;
        long jA;
        d dVarRemove = null;
        while (!this.z.isEmpty() && j2 >= this.z.getFirst().c) {
            dVarRemove = this.z.remove();
        }
        if (dVarRemove != null) {
            this.O = dVarRemove.a;
            this.Q = dVarRemove.c;
            this.P = dVarRemove.b - this.ab;
        }
        if (this.O.b == 1.0f) {
            return (j2 + this.P) - this.Q;
        }
        if (this.z.isEmpty()) {
            j3 = this.P;
            jA = this.r.a(j2 - this.Q);
        } else {
            j3 = this.P;
            jA = af.a(j2 - this.Q, this.O.b);
        }
        return j3 + jA;
    }

    private static void b(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    private void b(ByteBuffer byteBuffer, long j2) throws h.d {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.ag;
            int iWrite = 0;
            if (byteBuffer2 != null) {
                com.anythink.expressad.exoplayer.k.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.ag = byteBuffer;
                if (af.a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.ah;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.ah = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.ah, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.ai = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (af.a < 21) {
                int iB = this.y.b(this.X);
                if (iB > 0) {
                    iWrite = this.C.write(this.ah, this.ai, Math.min(iRemaining2, iB));
                    if (iWrite > 0) {
                        this.ai += iWrite;
                        byteBuffer.position(byteBuffer.position() + iWrite);
                    }
                }
            } else if (this.an) {
                com.anythink.expressad.exoplayer.k.a.b(j2 != com.anythink.expressad.exoplayer.b.b);
                iWrite = a(this.C, byteBuffer, iRemaining2, j2);
            } else {
                iWrite = this.C.write(byteBuffer, iRemaining2, 1);
            }
            this.ao = SystemClock.elapsedRealtime();
            if (iWrite < 0) {
                throw new h.d(iWrite);
            }
            boolean z = this.D;
            if (z) {
                this.X += (long) iWrite;
            }
            if (iWrite == iRemaining2) {
                if (!z) {
                    this.Y += (long) this.Z;
                }
                this.ag = null;
            }
        }
    }

    private long c(long j2) {
        return j2 + e(this.r.b());
    }

    private long d(long j2) {
        return (j2 * 1000000) / ((long) this.F);
    }

    private static AudioTrack d(int i2) {
        return new AudioTrack(3, p7.OooO0OO, 4, 2, 2, 0, i2);
    }

    private long e(long j2) {
        return (j2 * 1000000) / ((long) this.G);
    }

    private long f(long j2) {
        return (j2 * ((long) this.G)) / 1000000;
    }

    private void k() {
        ArrayList arrayList = new ArrayList();
        for (com.anythink.expressad.exoplayer.b.f fVar : v()) {
            if (fVar.a()) {
                arrayList.add(fVar);
            } else {
                fVar.h();
            }
        }
        int size = arrayList.size();
        this.ad = (com.anythink.expressad.exoplayer.b.f[]) arrayList.toArray(new com.anythink.expressad.exoplayer.b.f[size]);
        this.ae = new ByteBuffer[size];
        l();
    }

    private void l() {
        int i2 = 0;
        while (true) {
            com.anythink.expressad.exoplayer.b.f[] fVarArr = this.ad;
            if (i2 >= fVarArr.length) {
                return;
            }
            com.anythink.expressad.exoplayer.b.f fVar = fVarArr[i2];
            fVar.h();
            this.ae[i2] = fVar.f();
            i2++;
        }
    }

    private void m() throws h.b {
        this.x.block();
        AudioTrack audioTrackT = t();
        this.C = audioTrackT;
        int audioSessionId = audioTrackT.getAudioSessionId();
        if (b && af.a < 21) {
            AudioTrack audioTrack = this.B;
            if (audioTrack != null && audioSessionId != audioTrack.getAudioSessionId()) {
                p();
            }
            if (this.B == null) {
                this.B = new AudioTrack(3, p7.OooO0OO, 4, 2, 2, 0, audioSessionId);
            }
        }
        if (this.am != audioSessionId) {
            this.am = audioSessionId;
            h.c cVar = this.A;
            if (cVar != null) {
                cVar.a(audioSessionId);
            }
        }
        this.O = this.L ? this.r.a(this.O) : v.a;
        k();
        this.y.a(this.C, this.I, this.W, this.M);
        o();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0032 -> B:8:0x0010). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean n() throws h.d {
        boolean z;
        int i2;
        com.anythink.expressad.exoplayer.b.f[] fVarArr;
        if (this.aj == -1) {
            int length = this.K ? 0 : this.ad.length;
            this.aj = length;
            z = true;
            i2 = this.aj;
            fVarArr = this.ad;
            if (i2 < fVarArr.length) {
                com.anythink.expressad.exoplayer.b.f fVar = fVarArr[i2];
                if (z) {
                    fVar.e();
                }
                a(com.anythink.expressad.exoplayer.b.b);
                if (!fVar.g()) {
                    return false;
                }
                length = this.aj + 1;
                this.aj = length;
                z = true;
                i2 = this.aj;
                fVarArr = this.ad;
                if (i2 < fVarArr.length) {
                    ByteBuffer byteBuffer = this.ag;
                    if (byteBuffer != null) {
                        b(byteBuffer, com.anythink.expressad.exoplayer.b.b);
                        if (this.ag != null) {
                            return false;
                        }
                    }
                    this.aj = -1;
                    return true;
                }
            }
        } else {
            z = false;
            i2 = this.aj;
            fVarArr = this.ad;
            if (i2 < fVarArr.length) {
            }
        }
    }

    private void o() {
        if (q()) {
            if (af.a >= 21) {
                this.C.setVolume(this.ac);
                return;
            }
            AudioTrack audioTrack = this.C;
            float f2 = this.ac;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    private void p() {
        final AudioTrack audioTrack = this.B;
        if (audioTrack == null) {
            return;
        }
        this.B = null;
        new Thread() { // from class: com.anythink.expressad.exoplayer.b.l.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                audioTrack.release();
            }
        }.start();
    }

    private boolean q() {
        return this.C != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        return this.D ? this.U / ((long) this.T) : this.V;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long s() {
        return this.D ? this.X / ((long) this.W) : this.Y;
    }

    private AudioTrack t() throws h.b {
        AudioTrack audioTrack;
        if (af.a >= 21) {
            AudioAttributes audioAttributesBuild = this.an ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : this.J.a();
            AudioFormat audioFormatBuild = new AudioFormat.Builder().setChannelMask(this.H).setEncoding(this.I).setSampleRate(this.G).build();
            int i2 = this.am;
            audioTrack = new AudioTrack(audioAttributesBuild, audioFormatBuild, this.M, 1, i2 != 0 ? i2 : 0);
        } else {
            int iF = af.f(this.J.d);
            audioTrack = this.am == 0 ? new AudioTrack(iF, this.G, this.H, this.I, this.M, 1) : new AudioTrack(iF, this.G, this.H, this.I, this.M, 1, this.am);
        }
        int state = audioTrack.getState();
        if (state == 1) {
            return audioTrack;
        }
        try {
            audioTrack.release();
        } catch (Exception unused) {
        }
        throw new h.b(state, this.G, this.H, this.M);
    }

    @TargetApi(21)
    private AudioTrack u() {
        AudioAttributes audioAttributesBuild = this.an ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : this.J.a();
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setChannelMask(this.H).setEncoding(this.I).setSampleRate(this.G).build();
        int i2 = this.am;
        return new AudioTrack(audioAttributesBuild, audioFormatBuild, this.M, 1, i2 != 0 ? i2 : 0);
    }

    private com.anythink.expressad.exoplayer.b.f[] v() {
        return this.E ? this.w : this.v;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final long a(boolean z) {
        long jA;
        if (!q() || this.aa == 0) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.y.a(z), e(s()));
        long j2 = this.ab;
        d dVarRemove = null;
        while (!this.z.isEmpty() && jMin >= this.z.getFirst().c) {
            dVarRemove = this.z.remove();
        }
        if (dVarRemove != null) {
            this.O = dVarRemove.a;
            this.Q = dVarRemove.c;
            this.P = dVarRemove.b - this.ab;
        }
        if (this.O.b == 1.0f) {
            jA = (jMin + this.P) - this.Q;
        } else {
            boolean zIsEmpty = this.z.isEmpty();
            jA = (zIsEmpty ? this.r.a(jMin - this.Q) : af.a(jMin - this.Q, this.O.b)) + this.P;
        }
        return j2 + jA + e(this.r.b());
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final v a(v vVar) {
        if (q() && !this.L) {
            v vVar2 = v.a;
            this.O = vVar2;
            return vVar2;
        }
        v vVar3 = this.N;
        if (vVar3 == null) {
            vVar3 = !this.z.isEmpty() ? this.z.getLast().a : this.O;
        }
        if (!vVar.equals(vVar3)) {
            if (q()) {
                this.N = vVar;
            } else {
                this.O = this.r.a(vVar);
            }
        }
        return this.O;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void a() {
        this.al = true;
        if (q()) {
            this.y.a();
            this.C.play();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void a(float f2) {
        if (this.ac != f2) {
            this.ac = f2;
            o();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0161  */
    @Override // com.anythink.expressad.exoplayer.b.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i2, int i3, int i4, @Nullable int[] iArr, int i5, int i6) throws h.a {
        int iC;
        boolean z;
        int iD;
        boolean zA;
        int iB;
        int i7;
        int i8;
        int i9;
        int iA;
        this.F = i4;
        this.D = af.b(i2);
        this.E = this.s && a(1073741824) && af.c(i2);
        if (this.D) {
            this.T = af.b(i2, i3);
        }
        int i10 = 4;
        if (this.D) {
            iC = i2;
            z = iC != 4;
            this.L = (z || this.E) ? false : true;
            if (z) {
                iD = i4;
                zA = false;
                iB = i3;
            } else {
                this.u.a(i5, i6);
                this.t.a(iArr);
                iD = i4;
                zA = false;
                iB = i3;
                for (com.anythink.expressad.exoplayer.b.f fVar : v()) {
                    try {
                        zA |= fVar.a(iD, iB, iC);
                        if (fVar.a()) {
                            iB = fVar.b();
                            iD = fVar.d();
                            iC = fVar.c();
                        }
                    } catch (f.a e2) {
                        throw new h.a(e2);
                    }
                }
            }
            i7 = 252;
            switch (iB) {
                case 1:
                    break;
                case 2:
                    i10 = 12;
                    break;
                case 3:
                    i10 = 28;
                    break;
                case 4:
                    i10 = UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE;
                    break;
                case 5:
                    i10 = FragmentManagerImpl.ANIM_DUR;
                    break;
                case 6:
                    i10 = 252;
                    break;
                case 7:
                    i10 = 1276;
                    break;
                case 8:
                    i10 = com.anythink.expressad.exoplayer.b.C;
                    break;
                default:
                    throw new h.a("Unsupported channel count: ".concat(String.valueOf(iB)));
            }
            i8 = af.a;
            if (i8 <= 23 || !"foster".equals(af.b) || !"NVIDIA".equals(af.c)) {
                i7 = i10;
            } else if (iB != 3 && iB != 5) {
                if (iB == 7) {
                    i7 = com.anythink.expressad.exoplayer.b.C;
                }
            }
            i9 = (i8 <= 25 || !"fugu".equals(af.b) || this.D || iB != 1) ? i7 : 12;
            if (zA && q() && this.I == iC && this.G == iD && this.H == i9) {
                return;
            }
            i();
            this.K = z;
            this.G = iD;
            this.H = i9;
            this.I = iC;
            this.W = !this.D ? af.b(iC, iB) : -1;
            if (this.D) {
                int i11 = this.I;
                iA = (i11 == 5 || i11 == 6) ? com.anythink.expressad.exoplayer.j.a.b.a : i11 == 7 ? 49152 : 294912;
            } else {
                int minBufferSize = AudioTrack.getMinBufferSize(iD, i9, this.I);
                com.anythink.expressad.exoplayer.k.a.b(minBufferSize != -2);
                iA = af.a(minBufferSize * 4, ((int) f(250000L)) * this.W, (int) Math.max(minBufferSize, f(e) * ((long) this.W)));
            }
            this.M = iA;
        }
        iC = i2;
        this.L = (z || this.E) ? false : true;
        if (z) {
        }
        i7 = 252;
        switch (iB) {
        }
        i8 = af.a;
        if (i8 <= 23) {
            i7 = i10;
        }
        if (i8 <= 25) {
        }
        if (zA) {
        }
        i();
        this.K = z;
        this.G = iD;
        this.H = i9;
        this.I = iC;
        this.W = !this.D ? af.b(iC, iB) : -1;
        if (this.D) {
        }
        this.M = iA;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void a(com.anythink.expressad.exoplayer.b.b bVar) {
        if (this.J.equals(bVar)) {
            return;
        }
        this.J = bVar;
        if (this.an) {
            return;
        }
        i();
        this.am = 0;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void a(h.c cVar) {
        this.A = cVar;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final boolean a(int i2) {
        if (af.b(i2)) {
            return i2 != 4 || af.a >= 21;
        }
        com.anythink.expressad.exoplayer.b.c cVar = this.q;
        return cVar != null && cVar.a(i2);
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final boolean a(ByteBuffer byteBuffer, long j2) throws h.b, h.d {
        int iA;
        ByteBuffer byteBuffer2 = this.af;
        com.anythink.expressad.exoplayer.k.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!q()) {
            this.x.block();
            AudioTrack audioTrackT = t();
            this.C = audioTrackT;
            int audioSessionId = audioTrackT.getAudioSessionId();
            if (b && af.a < 21) {
                AudioTrack audioTrack = this.B;
                if (audioTrack != null && audioSessionId != audioTrack.getAudioSessionId()) {
                    p();
                }
                if (this.B == null) {
                    this.B = new AudioTrack(3, p7.OooO0OO, 4, 2, 2, 0, audioSessionId);
                }
            }
            if (this.am != audioSessionId) {
                this.am = audioSessionId;
                h.c cVar = this.A;
                if (cVar != null) {
                    cVar.a(audioSessionId);
                }
            }
            this.O = this.L ? this.r.a(this.O) : v.a;
            k();
            this.y.a(this.C, this.I, this.W, this.M);
            o();
            if (this.al) {
                a();
            }
        }
        if (!this.y.a(s())) {
            return false;
        }
        if (this.af == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (!this.D && this.Z == 0) {
                int i2 = this.I;
                if (i2 == 7 || i2 == 8) {
                    iA = m.a(byteBuffer);
                } else if (i2 == 5) {
                    iA = com.anythink.expressad.exoplayer.b.a.a();
                } else if (i2 == 6) {
                    iA = com.anythink.expressad.exoplayer.b.a.a(byteBuffer);
                } else {
                    if (i2 != 14) {
                        throw new IllegalStateException("Unexpected audio encoding: ".concat(String.valueOf(i2)));
                    }
                    int iB = com.anythink.expressad.exoplayer.b.a.b(byteBuffer);
                    iA = iB == -1 ? 0 : com.anythink.expressad.exoplayer.b.a.a(byteBuffer, iB) * 16;
                }
                this.Z = iA;
                if (iA == 0) {
                    return true;
                }
            }
            if (this.N != null) {
                if (!n()) {
                    return false;
                }
                v vVar = this.N;
                this.N = null;
                this.z.add(new d(this.r.a(vVar), Math.max(0L, j2), e(s()), (byte) 0));
                k();
            }
            if (this.aa == 0) {
                this.ab = Math.max(0L, j2);
                this.aa = 1;
            } else {
                long jR = this.ab + ((r() * 1000000) / ((long) this.F));
                if (this.aa == 1 && Math.abs(jR - j2) > 200000) {
                    Log.e(m, "Discontinuity detected [expected " + jR + ", got " + j2 + "]");
                    this.aa = 2;
                }
                if (this.aa == 2) {
                    this.ab += j2 - jR;
                    this.aa = 1;
                    h.c cVar2 = this.A;
                    if (cVar2 != null) {
                        cVar2.a();
                    }
                }
            }
            if (this.D) {
                this.U += (long) byteBuffer.remaining();
            } else {
                this.V += (long) this.Z;
            }
            this.af = byteBuffer;
        }
        if (this.K) {
            a(j2);
        } else {
            b(this.af, j2);
        }
        if (!this.af.hasRemaining()) {
            this.af = null;
            return true;
        }
        if (!this.y.c(s())) {
            return false;
        }
        Log.w(m, "Resetting stalled audio track");
        i();
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void b() {
        if (this.aa == 1) {
            this.aa = 2;
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void b(int i2) {
        if (this.am != i2) {
            this.am = i2;
            i();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void c() {
        if (!this.ak && q() && n()) {
            this.y.d(s());
            this.C.stop();
            this.S = 0;
            this.ak = true;
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void c(int i2) {
        com.anythink.expressad.exoplayer.k.a.b(af.a >= 21);
        if (this.an && this.am == i2) {
            return;
        }
        this.an = true;
        this.am = i2;
        i();
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final boolean d() {
        if (q()) {
            return this.ak && !e();
        }
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final boolean e() {
        return q() && this.y.e(s());
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final v f() {
        return this.O;
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void g() {
        if (this.an) {
            this.an = false;
            this.am = 0;
            i();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void h() {
        this.al = false;
        if (q() && this.y.c()) {
            this.C.pause();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void i() {
        if (q()) {
            this.U = 0L;
            this.V = 0L;
            this.X = 0L;
            this.Y = 0L;
            this.Z = 0;
            v vVar = this.N;
            if (vVar != null) {
                this.O = vVar;
                this.N = null;
            } else if (!this.z.isEmpty()) {
                this.O = this.z.getLast().a;
            }
            this.z.clear();
            this.P = 0L;
            this.Q = 0L;
            this.af = null;
            this.ag = null;
            l();
            this.ak = false;
            this.aj = -1;
            this.R = null;
            this.S = 0;
            this.aa = 0;
            if (this.y.b()) {
                this.C.pause();
            }
            final AudioTrack audioTrack = this.C;
            this.C = null;
            this.y.d();
            this.x.close();
            new Thread() { // from class: com.anythink.expressad.exoplayer.b.l.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        l.this.x.open();
                    }
                }
            }.start();
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.h
    public final void j() {
        i();
        p();
        for (com.anythink.expressad.exoplayer.b.f fVar : this.v) {
            fVar.i();
        }
        for (com.anythink.expressad.exoplayer.b.f fVar2 : this.w) {
            fVar2.i();
        }
        this.am = 0;
        this.al = false;
    }
}
