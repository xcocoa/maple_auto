package com.anythink.expressad.exoplayer.l;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.d.k;
import com.anythink.expressad.exoplayer.k.ad;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.exoplayer.l.h;
import com.anythink.expressad.exoplayer.m;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.proguard.bg;
import java.nio.ByteBuffer;
import z2.h4;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public class e extends com.anythink.expressad.exoplayer.f.b {
    private static boolean A = false;
    private static final String s = "MediaCodecVideoRenderer";
    private static final String t = "crop-left";
    private static final String u = "crop-right";
    private static final String v = "crop-bottom";
    private static final String w = "crop-top";
    private static final int[] x = {1920, 1600, h4.OooO00o, 1280, 960, 854, 640, 540, 480};
    private static final int y = 10;
    private static boolean z;
    private final Context B;
    private final f C;
    private final h.a D;
    private final long E;
    private final int F;
    private final boolean G;
    private final long[] H;
    private final long[] I;
    private a J;
    private boolean K;
    private Surface L;
    private Surface M;
    private int N;
    private boolean O;
    private long P;
    private long Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private long V;
    private int W;
    private float X;
    private int Y;
    private int Z;
    private int aa;
    private float ab;
    private int ac;
    private int ad;
    private int ae;
    private float af;
    private boolean ag;
    private int ah;
    private long ai;
    private long aj;
    private int ak;
    public b r;

    public static final class a {
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    @TargetApi(23)
    public final class b implements MediaCodec.OnFrameRenderedListener {
        private b(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        public /* synthetic */ b(e eVar, MediaCodec mediaCodec, byte b) {
            this(mediaCodec);
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public final void onFrameRendered(@NonNull MediaCodec mediaCodec, long j, long j2) {
            e eVar = e.this;
            if (this != eVar.r) {
                return;
            }
            eVar.C();
        }
    }

    private e(Context context, com.anythink.expressad.exoplayer.f.c cVar) {
        this(context, cVar, (byte) 0);
    }

    private e(Context context, com.anythink.expressad.exoplayer.f.c cVar, byte b2) {
        this(context, cVar, null, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, com.anythink.expressad.exoplayer.f.c cVar, long j, @Nullable com.anythink.expressad.exoplayer.d.g<k> gVar, @Nullable Handler handler, @Nullable h hVar, int i) {
        super(2, cVar, gVar, false);
        boolean z3 = false;
        this.E = j;
        this.F = i;
        Context applicationContext = context.getApplicationContext();
        this.B = applicationContext;
        this.C = new f(applicationContext);
        this.D = new h.a(handler, hVar);
        if (af.a <= 22 && "foster".equals(af.b) && "NVIDIA".equals(af.c)) {
            z3 = true;
        }
        this.G = z3;
        this.H = new long[10];
        this.I = new long[10];
        this.aj = com.anythink.expressad.exoplayer.b.b;
        this.ai = com.anythink.expressad.exoplayer.b.b;
        this.Q = com.anythink.expressad.exoplayer.b.b;
        this.Y = -1;
        this.Z = -1;
        this.ab = -1.0f;
        this.X = -1.0f;
        this.N = 1;
        G();
    }

    private e(Context context, com.anythink.expressad.exoplayer.f.c cVar, @Nullable Handler handler, @Nullable h hVar) {
        this(context, cVar, 0L, null, handler, hVar, -1);
    }

    private void D() {
        this.Q = this.E > 0 ? SystemClock.elapsedRealtime() + this.E : com.anythink.expressad.exoplayer.b.b;
    }

    private void E() {
        MediaCodec mediaCodecY;
        byte b2 = 0;
        this.O = false;
        if (af.a < 23 || !this.ag || (mediaCodecY = y()) == null) {
            return;
        }
        this.r = new b(this, mediaCodecY, b2);
    }

    private void F() {
        if (this.O) {
            this.D.a(this.L);
        }
    }

    private void G() {
        this.ac = -1;
        this.ad = -1;
        this.af = -1.0f;
        this.ae = -1;
    }

    private void H() {
        int i = this.Y;
        if (i == -1 && this.Z == -1) {
            return;
        }
        if (this.ac == i && this.ad == this.Z && this.ae == this.aa && this.af == this.ab) {
            return;
        }
        this.D.a(i, this.Z, this.aa, this.ab);
        this.ac = this.Y;
        this.ad = this.Z;
        this.ae = this.aa;
        this.af = this.ab;
    }

    private void I() {
        int i = this.ac;
        if (i == -1 && this.ad == -1) {
            return;
        }
        this.D.a(i, this.ad, this.ae, this.af);
    }

    private void J() {
        if (this.S > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.D.a(this.S, jElapsedRealtime - this.R);
            this.S = 0;
            this.R = jElapsedRealtime;
        }
    }

    private static boolean K() {
        return af.a <= 22 && "foster".equals(af.b) && "NVIDIA".equals(af.c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int a(com.anythink.expressad.exoplayer.f.a aVar, String str, int i, int i2) {
        int i3;
        int iA;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        i3 = 4;
        switch (str) {
            case "video/3gpp":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                iA = i * i2;
                i3 = 2;
                break;
            case "video/hevc":
            case "video/x-vnd.on2.vp9":
                iA = i * i2;
                break;
            case "video/avc":
                String str2 = af.d;
                if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(af.c) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !aVar.h)))) {
                    iA = af.a(i, 16) * af.a(i2, 16) * 16 * 16;
                    i3 = 2;
                    break;
                }
                break;
        }
        return -1;
    }

    private static Point a(com.anythink.expressad.exoplayer.f.a aVar, m mVar) {
        int i = mVar.n;
        int i2 = mVar.m;
        boolean z3 = i > i2;
        int i3 = z3 ? i : i2;
        if (z3) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : x) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (af.a >= 21) {
                int i6 = z3 ? i5 : i4;
                if (!z3) {
                    i4 = i5;
                }
                Point pointA = aVar.a(i6, i4);
                if (aVar.a(pointA.x, pointA.y, mVar.o)) {
                    return pointA;
                }
            } else {
                int iA = af.a(i4, 16) * 16;
                int iA2 = af.a(i5, 16) * 16;
                if (iA * iA2 <= com.anythink.expressad.exoplayer.f.d.b()) {
                    int i7 = z3 ? iA2 : iA;
                    if (!z3) {
                        iA = iA2;
                    }
                    return new Point(i7, iA);
                }
            }
        }
        return null;
    }

    @SuppressLint({"InlinedApi"})
    private static MediaFormat a(m mVar, a aVar, boolean z3, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", mVar.h);
        mediaFormat.setInteger("width", mVar.m);
        mediaFormat.setInteger("height", mVar.n);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, mVar.j);
        float f = mVar.o;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "rotation-degrees", mVar.p);
        com.anythink.expressad.exoplayer.l.b bVar = mVar.t;
        if (bVar != null) {
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-transfer", bVar.c);
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-standard", bVar.a);
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-range", bVar.b);
            byte[] bArr = bVar.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        mediaFormat.setInteger("max-width", aVar.a);
        mediaFormat.setInteger("max-height", aVar.b);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "max-input-size", aVar.c);
        if (af.a >= 23) {
            mediaFormat.setInteger("priority", 0);
        }
        if (z3) {
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i);
        }
        return mediaFormat;
    }

    private static a a(com.anythink.expressad.exoplayer.f.a aVar, m mVar, m[] mVarArr) {
        int iMax = mVar.m;
        int iMax2 = mVar.n;
        int iB = b(aVar, mVar);
        if (mVarArr.length == 1) {
            return new a(iMax, iMax2, iB);
        }
        boolean z3 = false;
        for (m mVar2 : mVarArr) {
            if (a(aVar.f, mVar, mVar2)) {
                int i = mVar2.m;
                z3 |= i == -1 || mVar2.n == -1;
                iMax = Math.max(iMax, i);
                iMax2 = Math.max(iMax2, mVar2.n);
                iB = Math.max(iB, b(aVar, mVar2));
            }
        }
        if (z3) {
            Log.w(s, "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointA = a(aVar, mVar);
            if (pointA != null) {
                iMax = Math.max(iMax, pointA.x);
                iMax2 = Math.max(iMax2, pointA.y);
                iB = Math.max(iB, a(aVar, mVar.h, iMax, iMax2));
                Log.w(s, "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iB);
    }

    private void a(MediaCodec mediaCodec, int i) {
        ad.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        ad.a();
        ((com.anythink.expressad.exoplayer.f.b) this).q.f++;
    }

    @TargetApi(21)
    private void a(MediaCodec mediaCodec, int i, long j) {
        H();
        ad.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        ad.a();
        this.V = SystemClock.elapsedRealtime() * 1000;
        ((com.anythink.expressad.exoplayer.f.b) this).q.e++;
        this.T = 0;
        C();
    }

    @TargetApi(23)
    private static void a(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    @TargetApi(21)
    private static void a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    private void a(Surface surface) throws com.anythink.expressad.exoplayer.g {
        if (surface == null) {
            Surface surface2 = this.M;
            if (surface2 != null) {
                surface = surface2;
            } else {
                com.anythink.expressad.exoplayer.f.a aVarZ = z();
                if (aVarZ != null && b(aVarZ)) {
                    surface = c.a(this.B, aVarZ.h);
                    this.M = surface;
                }
            }
        }
        if (this.L == surface) {
            if (surface == null || surface == this.M) {
                return;
            }
            I();
            if (this.O) {
                this.D.a(this.L);
                return;
            }
            return;
        }
        this.L = surface;
        int iA_ = a_();
        if (iA_ == 1 || iA_ == 2) {
            MediaCodec mediaCodecY = y();
            if (af.a < 23 || mediaCodecY == null || surface == null || this.K) {
                A();
                x();
            } else {
                mediaCodecY.setOutputSurface(surface);
            }
        }
        if (surface == null || surface == this.M) {
            G();
            E();
            return;
        }
        I();
        E();
        if (iA_ == 2) {
            D();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:368:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x05cb A[Catch: all -> 0x05d3, TryCatch #0 {, blocks: (B:9:0x0014, B:11:0x0018, B:12:0x0020, B:369:0x059b, B:372:0x05a1, B:388:0x05cd, B:387:0x05cb, B:377:0x05b2, B:380:0x05bc, B:371:0x059f, B:14:0x0025, B:17:0x0031, B:20:0x003d, B:23:0x0049, B:26:0x0055, B:29:0x0061, B:32:0x006d, B:35:0x0079, B:38:0x0085, B:41:0x0091, B:44:0x009d, B:47:0x00a9, B:50:0x00b5, B:53:0x00bf, B:56:0x00cb, B:59:0x00d7, B:62:0x00e3, B:65:0x00ef, B:68:0x00fb, B:71:0x0106, B:74:0x0112, B:77:0x011e, B:80:0x012a, B:83:0x0136, B:86:0x0142, B:89:0x014e, B:92:0x015a, B:95:0x0166, B:98:0x0172, B:101:0x017e, B:104:0x018a, B:107:0x0196, B:110:0x01a2, B:113:0x01ae, B:116:0x01ba, B:119:0x01c5, B:122:0x01d1, B:125:0x01dd, B:128:0x01e9, B:131:0x01f5, B:134:0x0201, B:137:0x020d, B:140:0x0219, B:143:0x0225, B:146:0x0231, B:149:0x023d, B:152:0x0249, B:155:0x0255, B:158:0x0261, B:161:0x026d, B:164:0x0278, B:167:0x0284, B:170:0x0290, B:173:0x029c, B:176:0x02a8, B:179:0x02b4, B:182:0x02c0, B:185:0x02cc, B:188:0x02d8, B:191:0x02e3, B:194:0x02ee, B:197:0x02f9, B:200:0x0305, B:203:0x0311, B:206:0x031d, B:209:0x0329, B:212:0x0335, B:215:0x0341, B:218:0x034d, B:221:0x0359, B:224:0x0365, B:227:0x0371, B:230:0x037d, B:233:0x0389, B:236:0x0395, B:239:0x03a1, B:242:0x03ad, B:245:0x03b9, B:248:0x03c5, B:251:0x03d1, B:254:0x03dd, B:257:0x03e9, B:260:0x03f5, B:263:0x0401, B:266:0x040d, B:269:0x0419, B:272:0x0425, B:275:0x0431, B:278:0x043d, B:281:0x0449, B:284:0x0454, B:287:0x0460, B:290:0x046c, B:293:0x0478, B:296:0x0484, B:299:0x048f, B:302:0x049b, B:305:0x04a7, B:308:0x04b3, B:311:0x04bf, B:314:0x04cb, B:317:0x04d7, B:320:0x04e3, B:323:0x04ef, B:326:0x04fb, B:329:0x0507, B:332:0x0513, B:335:0x051f, B:338:0x052b, B:341:0x0537, B:344:0x0542, B:347:0x054d, B:350:0x0558, B:353:0x0563, B:356:0x056e, B:359:0x0579, B:362:0x0584, B:365:0x058f, B:389:0x05cf), top: B:396:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(String str) {
        byte b2 = 27;
        byte b3 = 0;
        if (af.a >= 27 || str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (e.class) {
            if (!z) {
                String str2 = af.b;
                switch (str2.hashCode()) {
                    case -2144781245:
                        b2 = !str2.equals("GIONEE_SWW1609") ? (byte) -1 : (byte) 39;
                        break;
                    case -2144781185:
                        if (str2.equals("GIONEE_SWW1627")) {
                            b2 = 40;
                            break;
                        }
                        break;
                    case -2144781160:
                        if (str2.equals("GIONEE_SWW1631")) {
                            b2 = 41;
                            break;
                        }
                        break;
                    case -2097309513:
                        if (str2.equals("K50a40")) {
                            b2 = 57;
                            break;
                        }
                        break;
                    case -2022874474:
                        if (str2.equals("CP8676_I02")) {
                            b2 = bg.n;
                            break;
                        }
                        break;
                    case -1978993182:
                        if (str2.equals("NX541J")) {
                            b2 = 69;
                            break;
                        }
                        break;
                    case -1978990237:
                        if (str2.equals("NX573J")) {
                            b2 = 70;
                            break;
                        }
                        break;
                    case -1936688988:
                        if (str2.equals("PGN528")) {
                            b2 = 80;
                            break;
                        }
                        break;
                    case -1936688066:
                        if (str2.equals("PGN610")) {
                            b2 = 81;
                            break;
                        }
                        break;
                    case -1936688065:
                        if (str2.equals("PGN611")) {
                            b2 = 82;
                            break;
                        }
                        break;
                    case -1931988508:
                        if (str2.equals("AquaPowerM")) {
                            b2 = 10;
                            break;
                        }
                        break;
                    case -1696512866:
                        if (str2.equals("XT1663")) {
                            b2 = 115;
                            break;
                        }
                        break;
                    case -1680025915:
                        if (str2.equals("ComioS1")) {
                            b2 = bg.m;
                            break;
                        }
                        break;
                    case -1615810839:
                        if (str2.equals("Phantom6")) {
                            b2 = 83;
                            break;
                        }
                        break;
                    case -1554255044:
                        if (str2.equals("vernee_M5")) {
                            b2 = 108;
                            break;
                        }
                        break;
                    case -1481772737:
                        if (str2.equals("panell_dl")) {
                            b2 = 76;
                            break;
                        }
                        break;
                    case -1481772730:
                        if (str2.equals("panell_ds")) {
                            b2 = 77;
                            break;
                        }
                        break;
                    case -1481772729:
                        if (str2.equals("panell_dt")) {
                            b2 = 78;
                            break;
                        }
                        break;
                    case -1320080169:
                        if (str2.equals("GiONEE_GBL7319")) {
                            b2 = 37;
                            break;
                        }
                        break;
                    case -1217592143:
                        if (str2.equals("BRAVIA_ATV2")) {
                            b2 = bg.k;
                            break;
                        }
                        break;
                    case -1180384755:
                        if (str2.equals("iris60")) {
                            b2 = 53;
                            break;
                        }
                        break;
                    case -1139198265:
                        if (str2.equals("Slate_Pro")) {
                            b2 = 96;
                            break;
                        }
                        break;
                    case -1052835013:
                        if (str2.equals("namath")) {
                            b2 = 67;
                            break;
                        }
                        break;
                    case -993250464:
                        if (str2.equals("A10-70F")) {
                            b2 = 3;
                            break;
                        }
                        break;
                    case -965403638:
                        if (str2.equals("s905x018")) {
                            b2 = 98;
                            break;
                        }
                        break;
                    case -958336948:
                        if (str2.equals("ELUGA_Ray_X")) {
                            b2 = 26;
                            break;
                        }
                        break;
                    case -879245230:
                        if (str2.equals("tcl_eu")) {
                            b2 = 104;
                            break;
                        }
                        break;
                    case -842500323:
                        if (str2.equals("nicklaus_f")) {
                            b2 = 68;
                            break;
                        }
                        break;
                    case -821392978:
                        if (str2.equals("A7000-a")) {
                            b2 = 6;
                            break;
                        }
                        break;
                    case -797483286:
                        if (str2.equals("SVP-DTV15")) {
                            b2 = 97;
                            break;
                        }
                        break;
                    case -794946968:
                        if (str2.equals("watson")) {
                            b2 = 109;
                            break;
                        }
                        break;
                    case -788334647:
                        if (str2.equals("whyred")) {
                            b2 = 110;
                            break;
                        }
                        break;
                    case -782144577:
                        if (str2.equals("OnePlus5T")) {
                            b2 = 71;
                            break;
                        }
                        break;
                    case -575125681:
                        if (str2.equals("GiONEE_CBL7513")) {
                            b2 = 36;
                            break;
                        }
                        break;
                    case -521118391:
                        if (str2.equals("GIONEE_GBL7360")) {
                            b2 = 38;
                            break;
                        }
                        break;
                    case -430914369:
                        if (str2.equals("Pixi4-7_3G")) {
                            b2 = 84;
                            break;
                        }
                        break;
                    case -290434366:
                        if (str2.equals("taido_row")) {
                            b2 = 99;
                            break;
                        }
                        break;
                    case -282781963:
                        if (str2.equals("BLACK-1X")) {
                            b2 = 12;
                            break;
                        }
                        break;
                    case -277133239:
                        if (str2.equals("Z12_PRO")) {
                            b2 = 116;
                            break;
                        }
                        break;
                    case -173639913:
                        if (str2.equals("ELUGA_A3_Pro")) {
                            b2 = 23;
                            break;
                        }
                        break;
                    case -56598463:
                        if (str2.equals("woods_fn")) {
                            b2 = 112;
                            break;
                        }
                        break;
                    case 2126:
                        if (str2.equals("C1")) {
                            b2 = bg.l;
                            break;
                        }
                        break;
                    case 2564:
                        if (str2.equals("Q5")) {
                            b2 = 92;
                            break;
                        }
                        break;
                    case 2715:
                        if (str2.equals("V1")) {
                            b2 = 105;
                            break;
                        }
                        break;
                    case 2719:
                        if (str2.equals("V5")) {
                            b2 = 107;
                            break;
                        }
                        break;
                    case 3483:
                        if (str2.equals("mh")) {
                            b2 = 64;
                            break;
                        }
                        break;
                    case 73405:
                        if (str2.equals("JGZ")) {
                            b2 = 56;
                            break;
                        }
                        break;
                    case 75739:
                        if (str2.equals("M5c")) {
                            b2 = 60;
                            break;
                        }
                        break;
                    case 76779:
                        if (str2.equals("MX6")) {
                            b2 = 66;
                            break;
                        }
                        break;
                    case 78669:
                        if (str2.equals("P85")) {
                            b2 = 74;
                            break;
                        }
                        break;
                    case 79305:
                        if (str2.equals("PLE")) {
                            b2 = 86;
                            break;
                        }
                        break;
                    case 80618:
                        if (str2.equals("QX1")) {
                            b2 = 94;
                            break;
                        }
                        break;
                    case 88274:
                        if (str2.equals("Z80")) {
                            b2 = 117;
                            break;
                        }
                        break;
                    case 98846:
                        if (str2.equals("cv1")) {
                            b2 = 19;
                            break;
                        }
                        break;
                    case 98848:
                        if (str2.equals("cv3")) {
                            b2 = 20;
                            break;
                        }
                        break;
                    case 99329:
                        if (str2.equals("deb")) {
                            b2 = 21;
                            break;
                        }
                        break;
                    case 101481:
                        if (str2.equals("flo")) {
                            b2 = 35;
                            break;
                        }
                        break;
                    case 1513190:
                        if (str2.equals("1601")) {
                            b2 = 0;
                            break;
                        }
                        break;
                    case 1514184:
                        if (str2.equals("1713")) {
                            b2 = 1;
                            break;
                        }
                        break;
                    case 1514185:
                        if (str2.equals("1714")) {
                            b2 = 2;
                            break;
                        }
                        break;
                    case 2436959:
                        if (str2.equals("P681")) {
                            b2 = 73;
                            break;
                        }
                        break;
                    case 2463773:
                        if (str2.equals("Q350")) {
                            b2 = 88;
                            break;
                        }
                        break;
                    case 2464648:
                        if (str2.equals("Q427")) {
                            b2 = 90;
                            break;
                        }
                        break;
                    case 2689555:
                        if (str2.equals("XE2X")) {
                            b2 = 114;
                            break;
                        }
                        break;
                    case 3351335:
                        if (str2.equals("mido")) {
                            b2 = 65;
                            break;
                        }
                        break;
                    case 3386211:
                        if (str2.equals("p212")) {
                            b2 = 72;
                            break;
                        }
                        break;
                    case 41325051:
                        if (str2.equals("MEIZU_M5")) {
                            b2 = 63;
                            break;
                        }
                        break;
                    case 55178625:
                        if (str2.equals("Aura_Note_2")) {
                            b2 = 11;
                            break;
                        }
                        break;
                    case 61542055:
                        if (str2.equals("A1601")) {
                            b2 = 4;
                            break;
                        }
                        break;
                    case 65355429:
                        if (str2.equals("E5643")) {
                            b2 = 22;
                            break;
                        }
                        break;
                    case 66214468:
                        if (str2.equals("F3111")) {
                            b2 = 28;
                            break;
                        }
                        break;
                    case 66214470:
                        if (str2.equals("F3113")) {
                            b2 = 29;
                            break;
                        }
                        break;
                    case 66214473:
                        if (str2.equals("F3116")) {
                            b2 = 30;
                            break;
                        }
                        break;
                    case 66215429:
                        if (str2.equals("F3211")) {
                            b2 = 31;
                            break;
                        }
                        break;
                    case 66215431:
                        if (str2.equals("F3213")) {
                            b2 = 32;
                            break;
                        }
                        break;
                    case 66215433:
                        if (str2.equals("F3215")) {
                            b2 = 33;
                            break;
                        }
                        break;
                    case 66216390:
                        if (str2.equals("F3311")) {
                            b2 = 34;
                            break;
                        }
                        break;
                    case 76402249:
                        if (str2.equals("PRO7S")) {
                            b2 = 87;
                            break;
                        }
                        break;
                    case 76404105:
                        if (str2.equals("Q4260")) {
                            b2 = 89;
                            break;
                        }
                        break;
                    case 76404911:
                        if (str2.equals("Q4310")) {
                            b2 = 91;
                            break;
                        }
                        break;
                    case 80963634:
                        if (str2.equals("V23GB")) {
                            b2 = 106;
                            break;
                        }
                        break;
                    case 82882791:
                        if (str2.equals("X3_HK")) {
                            b2 = 113;
                            break;
                        }
                        break;
                    case 102844228:
                        if (str2.equals("le_x6")) {
                            b2 = 58;
                            break;
                        }
                        break;
                    case 165221241:
                        if (str2.equals("A2016a40")) {
                            b2 = 5;
                            break;
                        }
                        break;
                    case 182191441:
                        if (str2.equals("CPY83_I00")) {
                            b2 = 18;
                            break;
                        }
                        break;
                    case 245388979:
                        if (str2.equals("marino_f")) {
                            b2 = 62;
                            break;
                        }
                        break;
                    case 287431619:
                        if (str2.equals("griffin")) {
                            b2 = 45;
                            break;
                        }
                        break;
                    case 307593612:
                        if (str2.equals("A7010a48")) {
                            b2 = 8;
                            break;
                        }
                        break;
                    case 308517133:
                        if (str2.equals("A7020a48")) {
                            b2 = 9;
                            break;
                        }
                        break;
                    case 316215098:
                        if (str2.equals("TB3-730F")) {
                            b2 = 100;
                            break;
                        }
                        break;
                    case 316215116:
                        if (str2.equals("TB3-730X")) {
                            b2 = 101;
                            break;
                        }
                        break;
                    case 316246811:
                        if (str2.equals("TB3-850F")) {
                            b2 = 102;
                            break;
                        }
                        break;
                    case 316246818:
                        if (str2.equals("TB3-850M")) {
                            b2 = 103;
                            break;
                        }
                        break;
                    case 407160593:
                        if (str2.equals("Pixi5-10_4G")) {
                            b2 = 85;
                            break;
                        }
                        break;
                    case 507412548:
                        if (str2.equals("QM16XE_U")) {
                            b2 = 93;
                            break;
                        }
                        break;
                    case 793982701:
                        if (str2.equals("GIONEE_WBL5708")) {
                            b2 = 42;
                            break;
                        }
                        break;
                    case 794038622:
                        if (str2.equals("GIONEE_WBL7365")) {
                            b2 = 43;
                            break;
                        }
                        break;
                    case 794040393:
                        if (str2.equals("GIONEE_WBL7519")) {
                            b2 = 44;
                            break;
                        }
                        break;
                    case 835649806:
                        if (str2.equals("manning")) {
                            b2 = 61;
                            break;
                        }
                        break;
                    case 917340916:
                        if (str2.equals("A7000plus")) {
                            b2 = 7;
                            break;
                        }
                        break;
                    case 958008161:
                        if (str2.equals("j2xlteins")) {
                            b2 = 55;
                            break;
                        }
                        break;
                    case 1060579533:
                        if (str2.equals("panell_d")) {
                            b2 = 75;
                            break;
                        }
                        break;
                    case 1150207623:
                        if (str2.equals("LS-5017")) {
                            b2 = 59;
                            break;
                        }
                        break;
                    case 1176899427:
                        if (str2.equals("itel_S41")) {
                            b2 = 54;
                            break;
                        }
                        break;
                    case 1280332038:
                        if (str2.equals("hwALE-H")) {
                            b2 = 47;
                            break;
                        }
                        break;
                    case 1306947716:
                        if (str2.equals("EverStar_S")) {
                            break;
                        }
                        break;
                    case 1349174697:
                        if (str2.equals("htc_e56ml_dtul")) {
                            b2 = 46;
                            break;
                        }
                        break;
                    case 1522194893:
                        if (str2.equals("woods_f")) {
                            b2 = 111;
                            break;
                        }
                        break;
                    case 1691543273:
                        if (str2.equals("CPH1609")) {
                            b2 = 17;
                            break;
                        }
                        break;
                    case 1709443163:
                        if (str2.equals("iball8735_9806")) {
                            b2 = 51;
                            break;
                        }
                        break;
                    case 1865889110:
                        if (str2.equals("santoni")) {
                            b2 = 95;
                            break;
                        }
                        break;
                    case 1906253259:
                        if (str2.equals("PB2-670M")) {
                            b2 = 79;
                            break;
                        }
                        break;
                    case 1977196784:
                        if (str2.equals("Infinix-X572")) {
                            b2 = 52;
                            break;
                        }
                        break;
                    case 2029784656:
                        if (str2.equals("HWBLN-H")) {
                            b2 = 48;
                            break;
                        }
                        break;
                    case 2030379515:
                        if (str2.equals("HWCAM-H")) {
                            b2 = 49;
                            break;
                        }
                        break;
                    case 2047190025:
                        if (str2.equals("ELUGA_Note")) {
                            b2 = 24;
                            break;
                        }
                        break;
                    case 2047252157:
                        if (str2.equals("ELUGA_Prim")) {
                            b2 = 25;
                            break;
                        }
                        break;
                    case 2048319463:
                        if (str2.equals("HWVNS-H")) {
                            b2 = 50;
                            break;
                        }
                        break;
                    default:
                        break;
                }
                switch (b2) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    case 93:
                    case 94:
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case 108:
                    case 109:
                    case 110:
                    case 111:
                    case 112:
                    case 113:
                    case 114:
                    case 115:
                    case 116:
                    case 117:
                        A = true;
                        break;
                }
                String str3 = af.d;
                int iHashCode = str3.hashCode();
                if (iHashCode != 2006354) {
                    b3 = (iHashCode == 2006367 && str3.equals("AFTN")) ? (byte) 1 : (byte) -1;
                    if (b3 != 0 || b3 == 1) {
                        A = true;
                    }
                    z = true;
                } else {
                    if (str3.equals("AFTA")) {
                    }
                    if (b3 != 0) {
                        A = true;
                        z = true;
                    }
                }
            }
        }
        return A;
    }

    private static boolean a(boolean z3, m mVar, m mVar2) {
        if (mVar.h.equals(mVar2.h) && mVar.p == mVar2.p) {
            return (z3 || (mVar.m == mVar2.m && mVar.n == mVar2.n)) && af.a(mVar.t, mVar2.t);
        }
        return false;
    }

    private static int b(com.anythink.expressad.exoplayer.f.a aVar, m mVar) {
        if (mVar.i == -1) {
            return a(aVar, mVar.h, mVar.m, mVar.n);
        }
        int size = mVar.j.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += mVar.j.get(i).length;
        }
        return mVar.i + length;
    }

    private void b(int i) {
        com.anythink.expressad.exoplayer.c.d dVar = ((com.anythink.expressad.exoplayer.f.b) this).q;
        dVar.g += i;
        this.S += i;
        int i2 = this.T + i;
        this.T = i2;
        dVar.h = Math.max(i2, dVar.h);
        if (this.S >= this.F) {
            J();
        }
    }

    private void b(MediaCodec mediaCodec, int i) {
        ad.a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        ad.a();
        b(1);
    }

    private static boolean b(long j, long j2) {
        return g(j) && j2 > 100000;
    }

    private boolean b(com.anythink.expressad.exoplayer.f.a aVar) {
        if (af.a < 23 || this.ag || a(aVar.c)) {
            return false;
        }
        return !aVar.h || c.a(this.B);
    }

    private void c(MediaCodec mediaCodec, int i) {
        H();
        ad.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        ad.a();
        this.V = SystemClock.elapsedRealtime() * 1000;
        ((com.anythink.expressad.exoplayer.f.b) this).q.e++;
        this.T = 0;
        C();
    }

    private static boolean d(long j) {
        return g(j);
    }

    private static boolean e(long j) {
        return j < -500000;
    }

    private boolean f(long j) throws com.anythink.expressad.exoplayer.g {
        int iB = b(j);
        if (iB == 0) {
            return false;
        }
        ((com.anythink.expressad.exoplayer.f.b) this).q.i++;
        b(this.U + iB);
        B();
        return true;
    }

    private static boolean g(long j) {
        return j < -30000;
    }

    private static boolean h(long j) {
        return j < -500000;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    @CallSuper
    public final void A() {
        try {
            super.A();
            this.U = 0;
            Surface surface = this.M;
            if (surface != null) {
                if (this.L == surface) {
                    this.L = null;
                }
                surface.release();
                this.M = null;
            }
        } catch (Throwable th) {
            this.U = 0;
            if (this.M != null) {
                Surface surface2 = this.L;
                Surface surface3 = this.M;
                if (surface2 == surface3) {
                    this.L = null;
                }
                surface3.release();
                this.M = null;
            }
            throw th;
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    @CallSuper
    public final void B() throws com.anythink.expressad.exoplayer.g {
        super.B();
        this.U = 0;
    }

    public final void C() {
        if (this.O) {
            return;
        }
        this.O = true;
        this.D.a(this.L);
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final int a(com.anythink.expressad.exoplayer.f.a aVar, m mVar, m mVar2) {
        if (!a(aVar.f, mVar, mVar2)) {
            return 0;
        }
        int i = mVar2.m;
        a aVar2 = this.J;
        if (i > aVar2.a || mVar2.n > aVar2.b || b(aVar, mVar2) > this.J.c) {
            return 0;
        }
        return mVar.b(mVar2) ? 1 : 3;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final int a(com.anythink.expressad.exoplayer.f.c cVar, com.anythink.expressad.exoplayer.d.g<k> gVar, m mVar) {
        boolean z3;
        int i;
        int i2;
        String str = mVar.h;
        if (!o.b(str)) {
            return 0;
        }
        com.anythink.expressad.exoplayer.d.e eVar = mVar.k;
        if (eVar != null) {
            z3 = false;
            for (int i3 = 0; i3 < eVar.b; i3++) {
                z3 |= eVar.a(i3).d;
            }
        } else {
            z3 = false;
        }
        com.anythink.expressad.exoplayer.f.a aVarA = cVar.a(str, z3);
        if (aVarA == null) {
            return (!z3 || cVar.a(str, false) == null) ? 1 : 2;
        }
        if (!com.anythink.expressad.exoplayer.a.a(gVar, eVar)) {
            return 2;
        }
        boolean zB = aVarA.b(mVar.e);
        if (zB && (i = mVar.m) > 0 && (i2 = mVar.n) > 0) {
            if (af.a >= 21) {
                zB = aVarA.a(i, i2, mVar.o);
            } else {
                boolean z4 = i * i2 <= com.anythink.expressad.exoplayer.f.d.b();
                if (!z4) {
                    Log.d(s, "FalseCheck [legacyFrameSize, " + mVar.m + "x" + mVar.n + "] [" + af.e + "]");
                }
                zB = z4;
            }
        }
        return (zB ? 4 : 3) | (aVarA.f ? 16 : 8) | (aVarA.g ? 32 : 0);
    }

    @Override // com.anythink.expressad.exoplayer.a, com.anythink.expressad.exoplayer.x.b
    public final void a(int i, Object obj) throws com.anythink.expressad.exoplayer.g {
        if (i != 1) {
            if (i != 4) {
                super.a(i, obj);
                return;
            }
            this.N = ((Integer) obj).intValue();
            MediaCodec mediaCodecY = y();
            if (mediaCodecY != null) {
                mediaCodecY.setVideoScalingMode(this.N);
                return;
            }
            return;
        }
        Surface surfaceA = (Surface) obj;
        if (surfaceA == null) {
            Surface surface = this.M;
            if (surface != null) {
                surfaceA = surface;
            } else {
                com.anythink.expressad.exoplayer.f.a aVarZ = z();
                if (aVarZ != null && b(aVarZ)) {
                    surfaceA = c.a(this.B, aVarZ.h);
                    this.M = surfaceA;
                }
            }
        }
        if (this.L == surfaceA) {
            if (surfaceA == null || surfaceA == this.M) {
                return;
            }
            I();
            if (this.O) {
                this.D.a(this.L);
                return;
            }
            return;
        }
        this.L = surfaceA;
        int iA_ = a_();
        if (iA_ == 1 || iA_ == 2) {
            MediaCodec mediaCodecY2 = y();
            if (af.a < 23 || mediaCodecY2 == null || surfaceA == null || this.K) {
                A();
                x();
            } else {
                mediaCodecY2.setOutputSurface(surfaceA);
            }
        }
        if (surfaceA == null || surfaceA == this.M) {
            G();
            E();
            return;
        }
        I();
        E();
        if (iA_ == 2) {
            D();
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void a(long j, boolean z3) throws com.anythink.expressad.exoplayer.g {
        super.a(j, z3);
        E();
        this.P = com.anythink.expressad.exoplayer.b.b;
        this.T = 0;
        this.ai = com.anythink.expressad.exoplayer.b.b;
        int i = this.ak;
        if (i != 0) {
            this.aj = this.H[i - 1];
            this.ak = 0;
        }
        if (z3) {
            D();
        } else {
            this.Q = com.anythink.expressad.exoplayer.b.b;
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z3 = mediaFormat.containsKey(u) && mediaFormat.containsKey(t) && mediaFormat.containsKey(v) && mediaFormat.containsKey(w);
        this.Y = z3 ? (mediaFormat.getInteger(u) - mediaFormat.getInteger(t)) + 1 : mediaFormat.getInteger("width");
        int integer = z3 ? (mediaFormat.getInteger(v) - mediaFormat.getInteger(w)) + 1 : mediaFormat.getInteger("height");
        this.Z = integer;
        float f = this.X;
        this.ab = f;
        if (af.a >= 21) {
            int i = this.W;
            if (i == 90 || i == 270) {
                int i2 = this.Y;
                this.Y = integer;
                this.Z = i2;
                this.ab = 1.0f / f;
            }
        } else {
            this.aa = this.W;
        }
        mediaCodec.setVideoScalingMode(this.N);
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    @CallSuper
    public final void a(com.anythink.expressad.exoplayer.c.e eVar) {
        this.U++;
        this.ai = Math.max(eVar.f, this.ai);
        if (af.a >= 23 || !this.ag) {
            return;
        }
        C();
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(com.anythink.expressad.exoplayer.f.a aVar, MediaCodec mediaCodec, m mVar, MediaCrypto mediaCrypto) {
        a aVar2;
        m[] mVarArrQ = q();
        int iMax = mVar.m;
        int iMax2 = mVar.n;
        int iB = b(aVar, mVar);
        byte b2 = 0;
        if (mVarArrQ.length == 1) {
            aVar2 = new a(iMax, iMax2, iB);
        } else {
            boolean z3 = false;
            for (m mVar2 : mVarArrQ) {
                if (a(aVar.f, mVar, mVar2)) {
                    int i = mVar2.m;
                    z3 |= i == -1 || mVar2.n == -1;
                    iMax = Math.max(iMax, i);
                    iMax2 = Math.max(iMax2, mVar2.n);
                    iB = Math.max(iB, b(aVar, mVar2));
                }
            }
            if (z3) {
                Log.w(s, "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                Point pointA = a(aVar, mVar);
                if (pointA != null) {
                    iMax = Math.max(iMax, pointA.x);
                    iMax2 = Math.max(iMax2, pointA.y);
                    iB = Math.max(iB, a(aVar, mVar.h, iMax, iMax2));
                    Log.w(s, "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                }
            }
            aVar2 = new a(iMax, iMax2, iB);
        }
        this.J = aVar2;
        boolean z4 = this.G;
        int i2 = this.ah;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", mVar.h);
        mediaFormat.setInteger("width", mVar.m);
        mediaFormat.setInteger("height", mVar.n);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, mVar.j);
        float f = mVar.o;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "rotation-degrees", mVar.p);
        com.anythink.expressad.exoplayer.l.b bVar = mVar.t;
        if (bVar != null) {
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-transfer", bVar.c);
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-standard", bVar.a);
            com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "color-range", bVar.b);
            byte[] bArr = bVar.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        mediaFormat.setInteger("max-width", aVar2.a);
        mediaFormat.setInteger("max-height", aVar2.b);
        com.anythink.expressad.exoplayer.f.e.a(mediaFormat, "max-input-size", aVar2.c);
        int i3 = af.a;
        if (i3 >= 23) {
            mediaFormat.setInteger("priority", 0);
        }
        if (z4) {
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i2 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i2);
        }
        if (this.L == null) {
            com.anythink.expressad.exoplayer.k.a.b(b(aVar));
            if (this.M == null) {
                this.M = c.a(this.B, aVar.h);
            }
            this.L = this.M;
        }
        mediaCodec.configure(mediaFormat, this.L, mediaCrypto, 0);
        if (i3 < 23 || !this.ag) {
            return;
        }
        this.r = new b(this, mediaCodec, b2);
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void a(String str, long j, long j2) {
        this.D.a(str, j, j2);
        this.K = a(str);
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void a(boolean z3) {
        super.a(z3);
        int i = r().b;
        this.ah = i;
        this.ag = i != 0;
        this.D.a(((com.anythink.expressad.exoplayer.f.b) this).q);
        this.C.a();
    }

    @Override // com.anythink.expressad.exoplayer.a
    public final void a(m[] mVarArr, long j) {
        if (this.aj == com.anythink.expressad.exoplayer.b.b) {
            this.aj = j;
        } else {
            int i = this.ak;
            if (i == this.H.length) {
                Log.w(s, "Too many stream changes, so dropping offset: " + this.H[this.ak - 1]);
            } else {
                this.ak = i + 1;
            }
            long[] jArr = this.H;
            int i2 = this.ak;
            jArr[i2 - 1] = j;
            this.I[i2 - 1] = this.ai;
        }
        super.a(mVarArr, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        if ((g(r8) && r10 - r19.V > 100000) != false) goto L72;
     */
    @Override // com.anythink.expressad.exoplayer.f.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z3) throws com.anythink.expressad.exoplayer.g {
        boolean z4;
        if (this.P == com.anythink.expressad.exoplayer.b.b) {
            this.P = j;
        }
        if (z3) {
            a(mediaCodec, i);
            return true;
        }
        long j4 = j3 - j;
        if (this.L == this.M) {
            if (!g(j4)) {
                return false;
            }
            a(mediaCodec, i);
            return true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        boolean z5 = a_() == 2;
        if (this.O) {
            if (z5) {
            }
            if (!z5 || j == this.P) {
                return false;
            }
            long j5 = j4 - (jElapsedRealtime - j2);
            long jNanoTime = System.nanoTime();
            long jA = this.C.a(j3, (j5 * 1000) + jNanoTime);
            long j6 = (jA - jNanoTime) / 1000;
            if (j6 < -500000) {
                int iB = b(j);
                if (iB == 0) {
                    z4 = false;
                } else {
                    ((com.anythink.expressad.exoplayer.f.b) this).q.i++;
                    b(this.U + iB);
                    B();
                    z4 = true;
                }
                if (z4) {
                    return false;
                }
            }
            if (g(j6)) {
                ad.a("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                ad.a();
                b(1);
                return true;
            }
            if (af.a >= 21) {
                if (j6 >= 50000) {
                    return false;
                }
                a(mediaCodec, i, jA);
                return true;
            }
            if (j6 >= 30000) {
                return false;
            }
            if (j6 > 11000) {
                try {
                    Thread.sleep((j6 - UMAmapConfig.AMAP_CACHE_WRITE_TIME) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return false;
                }
            }
            c(mediaCodec, i);
            return true;
        }
        if (af.a >= 21) {
            a(mediaCodec, i, System.nanoTime());
            return true;
        }
        c(mediaCodec, i);
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final boolean a(com.anythink.expressad.exoplayer.f.a aVar) {
        return this.L != null || b(aVar);
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    public final void b(m mVar) throws com.anythink.expressad.exoplayer.g {
        super.b(mVar);
        this.D.a(mVar);
        this.X = mVar.q;
        this.W = mVar.p;
    }

    @Override // com.anythink.expressad.exoplayer.f.b
    @CallSuper
    public final void c(long j) {
        this.U--;
        while (true) {
            int i = this.ak;
            if (i == 0 || j < this.I[0]) {
                return;
            }
            long[] jArr = this.H;
            this.aj = jArr[0];
            int i2 = i - 1;
            this.ak = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.I;
            System.arraycopy(jArr2, 1, jArr2, 0, this.ak);
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void n() {
        super.n();
        this.S = 0;
        this.R = SystemClock.elapsedRealtime();
        this.V = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void o() {
        this.Q = com.anythink.expressad.exoplayer.b.b;
        J();
        super.o();
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.a
    public final void p() {
        this.Y = -1;
        this.Z = -1;
        this.ab = -1.0f;
        this.X = -1.0f;
        this.aj = com.anythink.expressad.exoplayer.b.b;
        this.ai = com.anythink.expressad.exoplayer.b.b;
        this.ak = 0;
        G();
        E();
        this.C.b();
        this.r = null;
        this.ag = false;
        try {
            super.p();
        } finally {
            this.D.b(((com.anythink.expressad.exoplayer.f.b) this).q);
        }
    }

    @Override // com.anythink.expressad.exoplayer.f.b, com.anythink.expressad.exoplayer.y
    public final boolean u() {
        Surface surface;
        if (super.u() && (this.O || (((surface = this.M) != null && this.L == surface) || y() == null || this.ag))) {
            this.Q = com.anythink.expressad.exoplayer.b.b;
            return true;
        }
        if (this.Q == com.anythink.expressad.exoplayer.b.b) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.Q) {
            return true;
        }
        this.Q = com.anythink.expressad.exoplayer.b.b;
        return false;
    }
}
