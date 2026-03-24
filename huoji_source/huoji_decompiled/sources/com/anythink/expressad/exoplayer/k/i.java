package com.anythink.expressad.exoplayer.k;

import android.net.NetworkInfo;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.exoplayer.a.b;
import com.anythink.expressad.exoplayer.ae;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.i.e;
import io.reactivex.annotations.SchedulerSupport;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import z2.kx;

/* JADX INFO: loaded from: classes.dex */
public final class i implements com.anythink.expressad.exoplayer.a.b {
    private static final String a = "EventLogger";
    private static final int b = 3;
    private static final NumberFormat c;

    @Nullable
    private final com.anythink.expressad.exoplayer.i.e d;
    private final ae.b e = new ae.b();
    private final ae.a f = new ae.a();
    private final long g = SystemClock.elapsedRealtime();

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        c = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    private i(@Nullable com.anythink.expressad.exoplayer.i.e eVar) {
        this.d = eVar;
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE";
    }

    private static String a(int i, int i2) {
        return i < 2 ? "N/A" : i2 != 0 ? i2 != 8 ? i2 != 16 ? "?" : "YES" : "YES_NOT_SEAMLESS" : "NO";
    }

    private static String a(long j) {
        return j == com.anythink.expressad.exoplayer.b.b ? "?" : c.format(j / 1000.0f);
    }

    private static String a(com.anythink.expressad.exoplayer.i.f fVar, com.anythink.expressad.exoplayer.h.ae aeVar, int i) {
        return a((fVar == null || fVar.f() != aeVar || fVar.c(i) == -1) ? false : true);
    }

    private static String a(boolean z) {
        return z ? "[X]" : "[ ]";
    }

    private void a(b.a aVar, String str) {
        Log.d(a, b(aVar, str));
    }

    private void a(b.a aVar, String str, Exception exc) {
        a(aVar, "internalError", str, exc);
    }

    private void a(b.a aVar, String str, String str2) {
        Log.d(a, b(aVar, str, str2));
    }

    private void a(b.a aVar, String str, String str2, Throwable th) {
        a(b(aVar, str, str2), th);
    }

    private void a(b.a aVar, String str, Throwable th) {
        a(b(aVar, str), th);
    }

    private static void a(com.anythink.expressad.exoplayer.g.a aVar, String str) {
        for (int i = 0; i < aVar.a(); i++) {
            Log.d(a, str + aVar.a(i));
        }
    }

    private static void a(String str) {
        Log.d(a, str);
    }

    private static void a(String str, Throwable th) {
        Log.e(a, str, th);
    }

    private static String b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "YES" : "NO_EXCEEDS_CAPABILITIES" : "NO_UNSUPPORTED_DRM" : "NO_UNSUPPORTED_TYPE" : "NO";
    }

    private String b(b.a aVar, String str) {
        return str + " [" + i(aVar) + "]";
    }

    private String b(b.a aVar, String str, String str2) {
        return str + " [" + i(aVar) + ", " + str2 + "]";
    }

    private static String c(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF";
    }

    private static String d(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "INTERNAL" : "AD_INSERTION" : "SEEK_ADJUSTMENT" : "SEEK" : "PERIOD_TRANSITION";
    }

    private static String e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "DYNAMIC" : "RESET" : "PREPARED";
    }

    private static String f(int i) {
        if (i == 0) {
            return CallMraidJS.f;
        }
        if (i == 1) {
            return o.b;
        }
        if (i == 2) {
            return o.a;
        }
        if (i == 3) {
            return "text";
        }
        if (i == 4) {
            return "metadata";
        }
        if (i == 5) {
            return SchedulerSupport.NONE;
        }
        if (i < 10000) {
            return "?";
        }
        return "custom (" + i + ")";
    }

    private String i(b.a aVar) {
        String str = "window=" + aVar.c;
        if (aVar.d != null) {
            str = str + ", period=" + aVar.d.a;
            if (aVar.d.a()) {
                str = (str + ", adGroup=" + aVar.d.b) + ", ad=" + aVar.d.c;
            }
        }
        return a(aVar.a - this.g) + ", " + a(aVar.f) + ", " + str;
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a() {
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar) {
        a(aVar, "seekStarted");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, int i) {
        int iC = aVar.b.c();
        int iB = aVar.b.b();
        StringBuilder sb = new StringBuilder("timelineChanged [");
        sb.append(i(aVar));
        sb.append(", periodCount=");
        sb.append(iC);
        sb.append(", windowCount=");
        sb.append(iB);
        sb.append(", reason=");
        sb.append(i != 0 ? i != 1 ? i != 2 ? "?" : "DYNAMIC" : "RESET" : "PREPARED");
        Log.d(a, sb.toString());
        for (int i2 = 0; i2 < Math.min(iC, 3); i2++) {
            aVar.b.a(i2, this.f, false);
            Log.d(a, "  period [" + a(com.anythink.expressad.exoplayer.b.a(this.f.d)) + "]");
        }
        if (iC > 3) {
            Log.d(a, "  ...");
        }
        for (int i3 = 0; i3 < Math.min(iB, 3); i3++) {
            aVar.b.a(i3, this.e, false);
            Log.d(a, "  window [" + a(com.anythink.expressad.exoplayer.b.a(this.e.i)) + ", " + this.e.d + ", " + this.e.e + "]");
        }
        if (iB > 3) {
            Log.d(a, "  ...");
        }
        Log.d(a, "]");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, int i, int i2) {
        a(aVar, "viewportSizeChanged", i + ", " + i2);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, int i, long j, long j2) {
        a(aVar, "audioTrackUnderrun", i + ", " + j + ", " + j2 + "]", (Throwable) null);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, int i, com.anythink.expressad.exoplayer.m mVar) {
        a(aVar, "decoderInputFormatChanged", f(i) + ", " + com.anythink.expressad.exoplayer.m.c(mVar));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, int i, String str) {
        a(aVar, "decoderInitialized", f(i) + ", " + str);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, @Nullable NetworkInfo networkInfo) {
        a(aVar, "networkTypeChanged", networkInfo == null ? SchedulerSupport.NONE : networkInfo.toString());
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, Surface surface) {
        a(aVar, "renderedFirstFrame", surface.toString());
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, com.anythink.expressad.exoplayer.g.a aVar2) {
        Log.d(a, "metadata [" + i(aVar) + ", ");
        a(aVar2, "  ");
        Log.d(a, "]");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, com.anythink.expressad.exoplayer.g gVar) {
        a(b(aVar, "playerFailed"), gVar);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, t.c cVar) {
        a(aVar, "downstreamFormatChanged", com.anythink.expressad.exoplayer.m.c(cVar.c));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, com.anythink.expressad.exoplayer.i.g gVar) {
        int i;
        com.anythink.expressad.exoplayer.i.e eVar = this.d;
        e.a aVarA = eVar != null ? eVar.a() : null;
        if (aVarA == null) {
            a(aVar, "tracksChanged", kx.OooOOO);
            return;
        }
        Log.d(a, "tracksChanged [" + i(aVar) + ", ");
        int iA = aVarA.a();
        int i2 = 0;
        while (true) {
            String str = "  ]";
            String str2 = " [";
            if (i2 >= iA) {
                break;
            }
            com.anythink.expressad.exoplayer.h.af afVarB = aVarA.b(i2);
            com.anythink.expressad.exoplayer.i.f fVarA = gVar.a(i2);
            if (afVarB.b > 0) {
                i = iA;
                Log.d(a, "  Renderer:" + i2 + " [");
                int i3 = 0;
                while (i3 < afVarB.b) {
                    com.anythink.expressad.exoplayer.h.ae aeVarA = afVarB.a(i3);
                    com.anythink.expressad.exoplayer.h.af afVar = afVarB;
                    int i4 = aeVarA.a;
                    int iA2 = aVarA.a(i2, i3);
                    String str3 = str;
                    Log.d(a, "    Group:" + i3 + ", adaptive_supported=" + (i4 < 2 ? "N/A" : iA2 != 0 ? iA2 != 8 ? iA2 != 16 ? "?" : "YES" : "YES_NOT_SEAMLESS" : "NO") + str2);
                    int i5 = 0;
                    while (i5 < aeVarA.a) {
                        Log.d(a, "      " + a((fVarA == null || fVarA.f() != aeVarA || fVarA.c(i5) == -1) ? false : true) + " Track:" + i5 + ", " + com.anythink.expressad.exoplayer.m.c(aeVarA.a(i5)) + ", supported=" + b(aVarA.a(i2, i3, i5)));
                        i5++;
                        str2 = str2;
                    }
                    Log.d(a, "    ]");
                    i3++;
                    afVarB = afVar;
                    str = str3;
                }
                String str4 = str;
                if (fVarA != null) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= fVarA.g()) {
                            break;
                        }
                        com.anythink.expressad.exoplayer.g.a aVar2 = fVarA.a(i6).f;
                        if (aVar2 != null) {
                            Log.d(a, "    Metadata [");
                            a(aVar2, "      ");
                            Log.d(a, "    ]");
                            break;
                        }
                        i6++;
                    }
                }
                Log.d(a, str4);
            } else {
                i = iA;
            }
            i2++;
            iA = i;
        }
        String str5 = " [";
        com.anythink.expressad.exoplayer.h.af afVarB2 = aVarA.b();
        if (afVarB2.b > 0) {
            Log.d(a, "  Renderer:None [");
            int i7 = 0;
            while (i7 < afVarB2.b) {
                StringBuilder sb = new StringBuilder("    Group:");
                sb.append(i7);
                String str6 = str5;
                sb.append(str6);
                Log.d(a, sb.toString());
                com.anythink.expressad.exoplayer.h.ae aeVarA2 = afVarB2.a(i7);
                for (int i8 = 0; i8 < aeVarA2.a; i8++) {
                    Log.d(a, "      " + a(false) + " Track:" + i8 + ", " + com.anythink.expressad.exoplayer.m.c(aeVarA2.a(i8)) + ", supported=" + b(0));
                }
                Log.d(a, "    ]");
                i7++;
                str5 = str6;
            }
            Log.d(a, "  ]");
        }
        Log.d(a, "]");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, com.anythink.expressad.exoplayer.v vVar) {
        a(aVar, "playbackParameters", af.a("speed=%.2f, pitch=%.2f, skipSilence=%s", Float.valueOf(vVar.b), Float.valueOf(vVar.c), Boolean.valueOf(vVar.d)));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, IOException iOException) {
        a(aVar, "loadError", (Exception) iOException);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, Exception exc) {
        a(aVar, "drmSessionManagerError", exc);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, boolean z) {
        a(aVar, "shuffleModeEnabled", Boolean.toString(z));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void a(b.a aVar, boolean z, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(z);
        sb.append(", ");
        sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE");
        a(aVar, "state", sb.toString());
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b() {
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b(b.a aVar) {
        a(aVar, "seekProcessed");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b(b.a aVar, int i) {
        a(aVar, "positionDiscontinuity", i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "INTERNAL" : "AD_INSERTION" : "SEEK_ADJUSTMENT" : "SEEK" : "PERIOD_TRANSITION");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b(b.a aVar, int i, int i2) {
        a(aVar, "videoSizeChanged", i + ", " + i2);
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b(b.a aVar, t.c cVar) {
        a(aVar, "upstreamDiscarded", com.anythink.expressad.exoplayer.m.c(cVar.c));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void b(b.a aVar, boolean z) {
        a(aVar, CallMraidJS.e, Boolean.toString(z));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void c() {
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void c(b.a aVar) {
        a(aVar, "mediaPeriodCreated");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void c(b.a aVar, int i) {
        a(aVar, "repeatMode", i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void d() {
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void d(b.a aVar) {
        a(aVar, "mediaPeriodReleased");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void d(b.a aVar, int i) {
        a(aVar, "decoderEnabled", f(i));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void e(b.a aVar) {
        a(aVar, "mediaPeriodReadingStarted");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void e(b.a aVar, int i) {
        a(aVar, "decoderDisabled", f(i));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void f(b.a aVar) {
        a(aVar, "drmKeysLoaded");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void f(b.a aVar, int i) {
        a(aVar, "audioSessionId", Integer.toString(i));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void g(b.a aVar) {
        a(aVar, "drmKeysRestored");
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void g(b.a aVar, int i) {
        a(aVar, "droppedFrames", Integer.toString(i));
    }

    @Override // com.anythink.expressad.exoplayer.a.b
    public final void h(b.a aVar) {
        a(aVar, "drmKeysRemoved");
    }
}
