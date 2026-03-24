package com.anythink.expressad.exoplayer.f;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.d.f;
import com.anythink.expressad.exoplayer.d.g;
import com.anythink.expressad.exoplayer.d.k;
import com.anythink.expressad.exoplayer.f.d;
import com.anythink.expressad.exoplayer.k.ad;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.p;
import com.anythink.expressad.exoplayer.m;
import com.anythink.expressad.exoplayer.n;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public abstract class b extends com.anythink.expressad.exoplayer.a {
    private static final int A = 1;
    private static final int B = 2;
    private static final byte[] C = af.g("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private static final int D = 32;
    public static final int n = 0;
    public static final int o = 1;
    public static final int p = 3;
    private static final String r = "MediaCodecRenderer";
    private static final long s = 1000;
    private static final int t = 0;
    private static final int u = 1;
    private static final int v = 2;
    private static final int w = 0;
    private static final int x = 1;
    private static final int y = 2;
    private static final int z = 0;
    private final com.anythink.expressad.exoplayer.f.c E;

    @Nullable
    private final g<k> F;
    private final boolean G;
    private final com.anythink.expressad.exoplayer.c.e H;
    private final com.anythink.expressad.exoplayer.c.e I;
    private final n J;
    private final List<Long> K;
    private final MediaCodec.BufferInfo L;
    private m M;
    private f<k> N;
    private f<k> O;
    private MediaCodec P;
    private com.anythink.expressad.exoplayer.f.a Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;
    private ByteBuffer[] aa;
    private ByteBuffer[] ab;
    private long ac;
    private int ad;
    private int ae;
    private ByteBuffer af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private int aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    public com.anythink.expressad.exoplayer.c.d q;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.f.b$b, reason: collision with other inner class name */
    public static class C0115b extends Exception {
        private static final int e = -50000;
        private static final int f = -49999;
        private static final int g = -49998;
        public final String a;
        public final boolean b;
        public final String c;
        public final String d;

        public C0115b(m mVar, Throwable th, boolean z, int i) {
            super("Decoder init failed: [" + i + "], " + mVar, th);
            this.a = mVar.h;
            this.b = z;
            this.c = null;
            this.d = "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        public C0115b(m mVar, Throwable th, boolean z, String str) {
            super("Decoder init failed: " + str + ", " + mVar, th);
            this.a = mVar.h;
            this.b = z;
            this.c = str;
            String diagnosticInfo = null;
            if (af.a >= 21 && (th instanceof MediaCodec.CodecException)) {
                diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            this.d = diagnosticInfo;
        }

        private static String a(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        @TargetApi(21)
        private static String a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface c {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface d {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface e {
    }

    public b(int i, com.anythink.expressad.exoplayer.f.c cVar, @Nullable g<k> gVar, boolean z3) {
        super(i);
        com.anythink.expressad.exoplayer.k.a.b(af.a >= 16);
        this.E = (com.anythink.expressad.exoplayer.f.c) com.anythink.expressad.exoplayer.k.a.a(cVar);
        this.F = gVar;
        this.G = false;
        this.H = new com.anythink.expressad.exoplayer.c.e(0);
        this.I = com.anythink.expressad.exoplayer.c.e.e();
        this.J = new n();
        this.K = new ArrayList();
        this.L = new MediaCodec.BufferInfo();
        this.ai = 0;
        this.aj = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean C() throws com.anythink.expressad.exoplayer.g {
        int iPosition;
        int iA;
        boolean z3;
        MediaCodec mediaCodec = this.P;
        if (mediaCodec == null || this.aj == 2 || this.am) {
            return false;
        }
        if (this.ad < 0) {
            int iDequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.ad = iDequeueInputBuffer;
            if (iDequeueInputBuffer < 0) {
                return false;
            }
            this.H.e = af.a >= 21 ? this.P.getInputBuffer(iDequeueInputBuffer) : this.aa[iDequeueInputBuffer];
            this.H.a();
        }
        if (this.aj == 1) {
            if (!this.U) {
                this.al = true;
                this.P.queueInputBuffer(this.ad, 0, 0, 0L, 4);
                G();
            }
            this.aj = 2;
            return false;
        }
        if (this.Y) {
            this.Y = false;
            ByteBuffer byteBuffer = this.H.e;
            byte[] bArr = C;
            byteBuffer.put(bArr);
            this.P.queueInputBuffer(this.ad, 0, bArr.length, 0L, 0);
            G();
            this.ak = true;
            return true;
        }
        if (this.ao) {
            iA = -4;
            iPosition = 0;
        } else {
            if (this.ai == 1) {
                for (int i = 0; i < this.M.j.size(); i++) {
                    this.H.e.put(this.M.j.get(i));
                }
                this.ai = 2;
            }
            iPosition = this.H.e.position();
            iA = a(this.J, this.H, false);
        }
        if (iA == -3) {
            return false;
        }
        if (iA == -5) {
            if (this.ai == 2) {
                this.H.a();
                this.ai = 1;
            }
            b(this.J.a);
            return true;
        }
        if (this.H.c()) {
            if (this.ai == 2) {
                this.H.a();
                this.ai = 1;
            }
            this.am = true;
            if (!this.ak) {
                L();
                return false;
            }
            try {
                if (!this.U) {
                    this.al = true;
                    this.P.queueInputBuffer(this.ad, 0, 0, 0L, 4);
                    G();
                }
                return false;
            } catch (Exception e2) {
                throw com.anythink.expressad.exoplayer.g.a(e2, s());
            }
        }
        if (this.ap && !this.H.d()) {
            this.H.a();
            if (this.ai == 2) {
                this.ai = 1;
            }
            return true;
        }
        this.ap = false;
        boolean zG = this.H.g();
        f<k> fVar = this.N;
        if (fVar == null || (!zG && this.G)) {
            z3 = false;
        } else {
            int iE = fVar.e();
            if (iE == 1) {
                throw com.anythink.expressad.exoplayer.g.a(this.N.f(), s());
            }
            if (iE != 4) {
                z3 = true;
            }
        }
        this.ao = z3;
        if (z3) {
            return false;
        }
        if (this.S && !zG) {
            p.a(this.H.e);
            if (this.H.e.position() == 0) {
                return true;
            }
            this.S = false;
        }
        try {
            com.anythink.expressad.exoplayer.c.e eVar = this.H;
            long j = eVar.f;
            if (eVar.b()) {
                this.K.add(Long.valueOf(j));
            }
            this.H.h();
            a(this.H);
            if (zG) {
                MediaCodec.CryptoInfo cryptoInfoA = this.H.d.a();
                if (iPosition != 0) {
                    if (cryptoInfoA.numBytesOfClearData == null) {
                        cryptoInfoA.numBytesOfClearData = new int[1];
                    }
                    int[] iArr = cryptoInfoA.numBytesOfClearData;
                    iArr[0] = iArr[0] + iPosition;
                }
                this.P.queueSecureInputBuffer(this.ad, 0, cryptoInfoA, j, 0);
            } else {
                this.P.queueInputBuffer(this.ad, 0, this.H.e.limit(), j, 0);
            }
            G();
            this.ak = true;
            this.ai = 0;
            this.q.c++;
            return true;
        } catch (Exception e3) {
            throw com.anythink.expressad.exoplayer.g.a(e3, s());
        }
    }

    private void D() {
        if (af.a < 21) {
            this.aa = this.P.getInputBuffers();
            this.ab = this.P.getOutputBuffers();
        }
    }

    private void E() {
        if (af.a < 21) {
            this.aa = null;
            this.ab = null;
        }
    }

    private boolean F() {
        return this.ae >= 0;
    }

    private void G() {
        this.ad = -1;
        this.H.e = null;
    }

    private void H() {
        this.ae = -1;
        this.af = null;
    }

    private static long I() {
        return 0L;
    }

    private void J() {
        MediaFormat outputFormat = this.P.getOutputFormat();
        if (this.R != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.Z = true;
            return;
        }
        if (this.X) {
            outputFormat.setInteger("channel-count", 1);
        }
        a(this.P, outputFormat);
    }

    private void K() {
        if (af.a < 21) {
            this.ab = this.P.getOutputBuffers();
        }
    }

    private void L() throws com.anythink.expressad.exoplayer.g {
        if (this.aj == 2) {
            A();
            x();
        } else {
            this.an = true;
            w();
        }
    }

    private static boolean M() {
        if (!"Amazon".equals(af.c)) {
            return false;
        }
        String str = af.d;
        return "AFTM".equals(str) || "AFTB".equals(str);
    }

    private static MediaCodec.CryptoInfo a(com.anythink.expressad.exoplayer.c.e eVar, int i) {
        MediaCodec.CryptoInfo cryptoInfoA = eVar.d.a();
        if (i == 0) {
            return cryptoInfoA;
        }
        if (cryptoInfoA.numBytesOfClearData == null) {
            cryptoInfoA.numBytesOfClearData = new int[1];
        }
        int[] iArr = cryptoInfoA.numBytesOfClearData;
        iArr[0] = iArr[0] + i;
        return cryptoInfoA;
    }

    private void a(C0115b c0115b) throws com.anythink.expressad.exoplayer.g {
        throw com.anythink.expressad.exoplayer.g.a(c0115b, s());
    }

    private static boolean a(String str) {
        int i = af.a;
        if (i < 18) {
            return true;
        }
        if (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) {
            return true;
        }
        if (i == 19 && af.d.startsWith("SM-G800")) {
            return "OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str);
        }
        return false;
    }

    private static boolean a(String str, m mVar) {
        return af.a < 21 && mVar.j.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static int b(String str) {
        int i = af.a;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = af.d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = af.b;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private ByteBuffer b(int i) {
        return af.a >= 21 ? this.P.getInputBuffer(i) : this.aa[i];
    }

    private boolean b(long j, long j2) throws com.anythink.expressad.exoplayer.g {
        boolean zA;
        int iDequeueOutputBuffer;
        boolean z3;
        if (!F()) {
            if (this.W && this.al) {
                try {
                    iDequeueOutputBuffer = this.P.dequeueOutputBuffer(this.L, 0L);
                } catch (IllegalStateException unused) {
                    L();
                    if (this.an) {
                        A();
                    }
                    return false;
                }
            } else {
                iDequeueOutputBuffer = this.P.dequeueOutputBuffer(this.L, 0L);
            }
            if (iDequeueOutputBuffer < 0) {
                if (iDequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.P.getOutputFormat();
                    if (this.R != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                        this.Z = true;
                    } else {
                        if (this.X) {
                            outputFormat.setInteger("channel-count", 1);
                        }
                        a(this.P, outputFormat);
                    }
                    return true;
                }
                if (iDequeueOutputBuffer == -3) {
                    if (af.a < 21) {
                        this.ab = this.P.getOutputBuffers();
                    }
                    return true;
                }
                if (this.U && (this.am || this.aj == 2)) {
                    L();
                }
                return false;
            }
            if (this.Z) {
                this.Z = false;
                this.P.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.L;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                L();
                return false;
            }
            this.ae = iDequeueOutputBuffer;
            ByteBuffer outputBuffer = af.a >= 21 ? this.P.getOutputBuffer(iDequeueOutputBuffer) : this.ab[iDequeueOutputBuffer];
            this.af = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.L.offset);
                ByteBuffer byteBuffer = this.af;
                MediaCodec.BufferInfo bufferInfo2 = this.L;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            long j3 = this.L.presentationTimeUs;
            int size = this.K.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z3 = false;
                    break;
                }
                if (this.K.get(i).longValue() == j3) {
                    this.K.remove(i);
                    z3 = true;
                    break;
                }
                i++;
            }
            this.ag = z3;
        }
        if (this.W && this.al) {
            try {
                MediaCodec mediaCodec = this.P;
                ByteBuffer byteBuffer2 = this.af;
                int i2 = this.ae;
                MediaCodec.BufferInfo bufferInfo3 = this.L;
                zA = a(j, j2, mediaCodec, byteBuffer2, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.ag);
            } catch (IllegalStateException unused2) {
                L();
                if (this.an) {
                    A();
                }
                return false;
            }
        } else {
            MediaCodec mediaCodec2 = this.P;
            ByteBuffer byteBuffer3 = this.af;
            int i3 = this.ae;
            MediaCodec.BufferInfo bufferInfo4 = this.L;
            zA = a(j, j2, mediaCodec2, byteBuffer3, i3, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.ag);
        }
        if (zA) {
            c(this.L.presentationTimeUs);
            boolean z4 = (this.L.flags & 4) != 0;
            H();
            if (!z4) {
                return true;
            }
            L();
        }
        return false;
    }

    private static boolean b(com.anythink.expressad.exoplayer.f.a aVar) {
        String str = aVar.c;
        if (af.a > 17 || !("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str))) {
            return "Amazon".equals(af.c) && "AFTS".equals(af.d) && aVar.h;
        }
        return true;
    }

    private static boolean b(String str, m mVar) {
        return af.a <= 18 && mVar.u == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private boolean b(boolean z3) throws com.anythink.expressad.exoplayer.g {
        f<k> fVar = this.N;
        if (fVar == null || (!z3 && this.G)) {
            return false;
        }
        int iE = fVar.e();
        if (iE != 1) {
            return iE != 4;
        }
        throw com.anythink.expressad.exoplayer.g.a(this.N.f(), s());
    }

    private ByteBuffer c(int i) {
        return af.a >= 21 ? this.P.getOutputBuffer(i) : this.ab[i];
    }

    private static boolean c(String str) {
        int i = af.a;
        if (i <= 23 && "OMX.google.vorbis.decoder".equals(str)) {
            return true;
        }
        if (i > 19 || !"hb2000".equals(af.b)) {
            return false;
        }
        return "OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str);
    }

    private boolean d(long j) {
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            if (this.K.get(i).longValue() == j) {
                this.K.remove(i);
                return true;
            }
        }
        return false;
    }

    private static boolean d(String str) {
        return af.a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    public void A() {
        this.ac = com.anythink.expressad.exoplayer.b.b;
        G();
        H();
        this.ao = false;
        this.ag = false;
        this.K.clear();
        if (af.a < 21) {
            this.aa = null;
            this.ab = null;
        }
        this.Q = null;
        this.ah = false;
        this.ak = false;
        this.S = false;
        this.T = false;
        this.R = 0;
        this.U = false;
        this.V = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.al = false;
        this.ai = 0;
        this.aj = 0;
        MediaCodec mediaCodec = this.P;
        if (mediaCodec != null) {
            this.q.b++;
            try {
                mediaCodec.stop();
                try {
                    this.P.release();
                    this.P = null;
                    f<k> fVar = this.N;
                    if (fVar == null || this.O == fVar) {
                        return;
                    }
                    try {
                        this.F.a(fVar);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.P = null;
                    f<k> fVar2 = this.N;
                    if (fVar2 != null && this.O != fVar2) {
                        try {
                            this.F.a(fVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.P.release();
                    this.P = null;
                    f<k> fVar3 = this.N;
                    if (fVar3 != null && this.O != fVar3) {
                        try {
                            this.F.a(fVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.P = null;
                    f<k> fVar4 = this.N;
                    if (fVar4 != null && this.O != fVar4) {
                        try {
                            this.F.a(fVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    public void B() throws com.anythink.expressad.exoplayer.g {
        this.ac = com.anythink.expressad.exoplayer.b.b;
        G();
        H();
        this.ap = true;
        this.ao = false;
        this.ag = false;
        this.K.clear();
        this.Y = false;
        this.Z = false;
        if (this.T || ((this.V && this.al) || this.aj != 0)) {
            A();
            x();
        } else {
            this.P.flush();
            this.ak = false;
        }
        if (!this.ah || this.M == null) {
            return;
        }
        this.ai = 1;
    }

    public int a(com.anythink.expressad.exoplayer.f.a aVar, m mVar, m mVar2) {
        return 0;
    }

    public abstract int a(com.anythink.expressad.exoplayer.f.c cVar, g<k> gVar, m mVar);

    @Override // com.anythink.expressad.exoplayer.z
    public final int a(m mVar) throws com.anythink.expressad.exoplayer.g {
        try {
            return a(this.E, this.F, mVar);
        } catch (d.b e2) {
            throw com.anythink.expressad.exoplayer.g.a(e2, s());
        }
    }

    public com.anythink.expressad.exoplayer.f.a a(com.anythink.expressad.exoplayer.f.c cVar, m mVar, boolean z3) {
        return cVar.a(mVar.h, z3);
    }

    @Override // com.anythink.expressad.exoplayer.y
    public final void a(long j, long j2) throws com.anythink.expressad.exoplayer.g {
        if (this.an) {
            w();
            return;
        }
        if (this.M == null) {
            this.I.a();
            int iA = a(this.J, this.I, true);
            if (iA != -5) {
                if (iA == -4) {
                    com.anythink.expressad.exoplayer.k.a.b(this.I.c());
                    this.am = true;
                    L();
                    return;
                }
                return;
            }
            b(this.J.a);
        }
        x();
        if (this.P != null) {
            ad.a("drainAndFeed");
            while (b(j, j2)) {
            }
            while (C()) {
            }
            ad.a();
            return;
        }
        this.q.d += b(j);
        this.I.a();
        int iA2 = a(this.J, this.I, false);
        if (iA2 == -5) {
            b(this.J.a);
        } else if (iA2 == -4) {
            com.anythink.expressad.exoplayer.k.a.b(this.I.c());
            this.am = true;
            L();
        }
    }

    @Override // com.anythink.expressad.exoplayer.a
    public void a(long j, boolean z3) throws com.anythink.expressad.exoplayer.g {
        this.am = false;
        this.an = false;
        if (this.P != null) {
            B();
        }
    }

    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    public void a(com.anythink.expressad.exoplayer.c.e eVar) {
    }

    public abstract void a(com.anythink.expressad.exoplayer.f.a aVar, MediaCodec mediaCodec, m mVar, MediaCrypto mediaCrypto);

    public void a(String str, long j, long j2) {
    }

    @Override // com.anythink.expressad.exoplayer.a
    public void a(boolean z3) {
        this.q = new com.anythink.expressad.exoplayer.c.d();
    }

    public abstract boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z3);

    public boolean a(com.anythink.expressad.exoplayer.f.a aVar) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(m mVar) throws com.anythink.expressad.exoplayer.g {
        int iA;
        m mVar2 = this.M;
        this.M = mVar;
        if (!af.a(mVar.k, mVar2 == null ? null : mVar2.k)) {
            if (this.M.k != null) {
                g<k> gVar = this.F;
                if (gVar == null) {
                    throw com.anythink.expressad.exoplayer.g.a(new IllegalStateException("Media requires a DrmSessionManager"), s());
                }
                f fVarA = gVar.a(Looper.myLooper(), this.M.k);
                this.O = fVarA;
                if (fVarA == this.N) {
                    this.F.a(fVarA);
                }
            } else {
                this.O = null;
            }
        }
        boolean z3 = false;
        if (this.O == this.N && this.P != null && (iA = a(this.Q, mVar2, this.M)) != 0) {
            if (iA != 1) {
                if (iA != 3) {
                    throw new IllegalStateException();
                }
                this.ah = true;
                this.ai = 1;
                int i = this.R;
                if (i == 2) {
                    z3 = true;
                    this.Y = z3;
                } else {
                    if (i == 1) {
                        m mVar3 = this.M;
                        if (mVar3.m == mVar2.m && mVar3.n == mVar2.n) {
                        }
                    }
                    this.Y = z3;
                }
            }
            z3 = true;
        }
        if (z3) {
            return;
        }
        if (this.ak) {
            this.aj = 1;
        } else {
            A();
            x();
        }
    }

    public void c(long j) {
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.z
    public final int m() {
        return 8;
    }

    @Override // com.anythink.expressad.exoplayer.a
    public void n() {
    }

    @Override // com.anythink.expressad.exoplayer.a
    public void o() {
    }

    @Override // com.anythink.expressad.exoplayer.a
    public void p() {
        this.M = null;
        try {
            A();
            try {
                f<k> fVar = this.N;
                if (fVar != null) {
                    this.F.a(fVar);
                }
                try {
                    f<k> fVar2 = this.O;
                    if (fVar2 != null && fVar2 != this.N) {
                        this.F.a(fVar2);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    f<k> fVar3 = this.O;
                    if (fVar3 != null && fVar3 != this.N) {
                        this.F.a(fVar3);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.N != null) {
                    this.F.a(this.N);
                }
                try {
                    f<k> fVar4 = this.O;
                    if (fVar4 != null && fVar4 != this.N) {
                        this.F.a(fVar4);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    f<k> fVar5 = this.O;
                    if (fVar5 != null && fVar5 != this.N) {
                        this.F.a(fVar5);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.y
    public boolean u() {
        if (this.M == null || this.ao) {
            return false;
        }
        if (t() || F()) {
            return true;
        }
        return this.ac != com.anythink.expressad.exoplayer.b.b && SystemClock.elapsedRealtime() < this.ac;
    }

    @Override // com.anythink.expressad.exoplayer.y
    public boolean v() {
        return this.an;
    }

    public void w() {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x() throws com.anythink.expressad.exoplayer.g {
        m mVar;
        MediaCrypto mediaCryptoA;
        boolean zA;
        int i;
        if (this.P != null || (mVar = this.M) == null) {
            return;
        }
        f<k> fVar = this.O;
        this.N = fVar;
        String str = mVar.h;
        boolean z3 = false;
        if (fVar != null) {
            k kVar = (k) fVar.g();
            if (kVar != null) {
                mediaCryptoA = kVar.a();
                zA = kVar.a(str);
            } else {
                if (this.N.f() == null) {
                    return;
                }
                mediaCryptoA = null;
                zA = false;
            }
            if ("Amazon".equals(af.c)) {
                String str2 = af.d;
                boolean z4 = "AFTM".equals(str2) || "AFTB".equals(str2);
                if (z4) {
                    int iE = this.N.e();
                    if (iE == 1) {
                        throw com.anythink.expressad.exoplayer.g.a(this.N.f(), s());
                    }
                    if (iE != 4) {
                        return;
                    }
                }
            }
        } else {
            mediaCryptoA = null;
            zA = false;
        }
        if (this.Q == null) {
            try {
                com.anythink.expressad.exoplayer.f.a aVarA = a(this.E, this.M, zA);
                this.Q = aVarA;
                if (aVarA == null && zA) {
                    com.anythink.expressad.exoplayer.f.a aVarA2 = a(this.E, this.M, false);
                    this.Q = aVarA2;
                    if (aVarA2 != null) {
                        Log.w(r, "Drm session requires secure decoder for " + str + ", but no secure decoder available. Trying to proceed with " + this.Q.c + ".");
                    }
                }
            } catch (d.b e2) {
                a(new C0115b(this.M, e2, zA, -49998));
            }
            if (this.Q == null) {
                a(new C0115b(this.M, (Throwable) null, zA, -49999));
            }
        }
        if (a(this.Q)) {
            String str3 = this.Q.c;
            int i2 = af.a;
            if (i2 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str3)) {
                String str4 = af.d;
                if (str4.startsWith("SM-T585") || str4.startsWith("SM-A510") || str4.startsWith("SM-A520") || str4.startsWith("SM-J700")) {
                    i = 2;
                }
            } else if (i2 >= 24 || !("OMX.Nvidia.h264.decode".equals(str3) || "OMX.Nvidia.h264.decode.secure".equals(str3))) {
                i = 0;
            } else {
                String str5 = af.b;
                if ("flounder".equals(str5) || "flounder_lte".equals(str5) || "grouper".equals(str5) || "tilapia".equals(str5)) {
                    i = 1;
                }
            }
            this.R = i;
            this.S = i2 < 21 && this.M.j.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str3);
            this.T = i2 < 18 || (i2 == 18 && ("OMX.SEC.avc.dec".equals(str3) || "OMX.SEC.avc.dec.secure".equals(str3))) || (i2 == 19 && af.d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str3) || "OMX.Exynos.avc.dec.secure".equals(str3)));
            com.anythink.expressad.exoplayer.f.a aVar = this.Q;
            String str6 = aVar.c;
            this.U = (i2 <= 17 && ("OMX.rk.video_decoder.avc".equals(str6) || "OMX.allwinner.video.decoder.avc".equals(str6))) || ("Amazon".equals(af.c) && "AFTS".equals(af.d) && aVar.h);
            this.V = (i2 <= 23 && "OMX.google.vorbis.decoder".equals(str3)) || (i2 <= 19 && "hb2000".equals(af.b) && ("OMX.amlogic.avc.decoder.awesome".equals(str3) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str3)));
            this.W = i2 == 21 && "OMX.google.aac.decoder".equals(str3);
            m mVar2 = this.M;
            if (i2 <= 18 && mVar2.u == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str3)) {
                z3 = true;
            }
            this.X = z3;
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ad.a("createCodec:".concat(String.valueOf(str3)));
                this.P = MediaCodec.createByCodecName(str3);
                ad.a();
                ad.a("configureCodec");
                a(this.Q, this.P, this.M, mediaCryptoA);
                ad.a();
                ad.a("startCodec");
                this.P.start();
                ad.a();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                a(str3, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                if (i2 < 21) {
                    this.aa = this.P.getInputBuffers();
                    this.ab = this.P.getOutputBuffers();
                }
            } catch (Exception e3) {
                a(new C0115b(this.M, e3, zA, str3));
            }
            this.ac = a_() == 2 ? SystemClock.elapsedRealtime() + s : com.anythink.expressad.exoplayer.b.b;
            G();
            H();
            this.ap = true;
            this.q.a++;
        }
    }

    public final MediaCodec y() {
        return this.P;
    }

    public final com.anythink.expressad.exoplayer.f.a z() {
        return this.Q;
    }
}
