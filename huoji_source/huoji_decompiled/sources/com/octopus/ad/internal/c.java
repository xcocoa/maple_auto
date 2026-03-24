package com.octopus.ad.internal;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.view.BannerAdViewImpl;
import com.octopus.ad.internal.view.InterstitialAdViewImpl;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private ScheduledExecutorService a;
    private final com.octopus.ad.internal.a f;
    private o g;
    private int b = -1;
    private long d = -1;
    private long e = -1;
    private EnumC0195c h = EnumC0195c.STOPPED;
    private final b c = new b(this);

    /* JADX INFO: renamed from: com.octopus.ad.internal.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[l.values().length];
            b = iArr;
            try {
                iArr[l.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[l.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[l.SPLASH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[l.NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[l.PREFETCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[EnumC0195c.values().length];
            a = iArr2;
            try {
                iArr2[EnumC0195c.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[EnumC0195c.SINGLE_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[EnumC0195c.AUTO_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public class a implements Runnable {
        private a() {
        }

        public /* synthetic */ a(c cVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.handler_message_pass));
            c.this.c.sendEmptyMessage(0);
        }
    }

    public static class b extends Handler {
        private final c a;

        public b(c cVar) {
            super(Looper.getMainLooper());
            this.a = cVar;
        }

        @Override // android.os.Handler
        @SuppressLint({"NewApi"})
        public synchronized void handleMessage(Message message) {
            o fVar;
            c cVar = this.a;
            if (cVar != null && cVar.f.isReadyToStart()) {
                if (cVar.d != -1) {
                    HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.new_ad_since, Math.max(0, (int) (System.currentTimeMillis() - cVar.d))));
                }
                cVar.d = System.currentTimeMillis();
                int i = AnonymousClass1.b[cVar.f.getMediaType().ordinal()];
                if (i == 1) {
                    fVar = new f((BannerAdViewImpl) cVar.f);
                } else if (i == 2) {
                    fVar = new f((InterstitialAdViewImpl) cVar.f);
                } else if (i == 3) {
                    fVar = new f((BannerAdViewImpl) cVar.f);
                } else if (i == 4) {
                    fVar = new com.octopus.ad.internal.nativead.b((com.octopus.ad.internal.nativead.a) cVar.f);
                } else {
                    if (i != 5) {
                        cVar.g.a();
                    }
                    fVar = new n();
                }
                cVar.g = fVar;
                cVar.g.a();
            }
        }
    }

    /* JADX INFO: renamed from: com.octopus.ad.internal.c$c, reason: collision with other inner class name */
    public enum EnumC0195c {
        STOPPED,
        SINGLE_REQUEST,
        AUTO_REFRESH
    }

    public c(com.octopus.ad.internal.a aVar) {
        this.f = aVar;
    }

    private void d() {
        if (this.a == null) {
            this.a = Executors.newScheduledThreadPool(4);
        }
    }

    private void e() {
        ScheduledExecutorService scheduledExecutorService = this.a;
        if (scheduledExecutorService == null) {
            return;
        }
        scheduledExecutorService.shutdownNow();
        try {
            this.a.awaitTermination(this.b, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
        } catch (Throwable th) {
            this.a = null;
            throw th;
        }
        this.a = null;
    }

    public void a() {
        o oVar = this.g;
        if (oVar != null) {
            oVar.c();
            this.g = null;
        }
        e();
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.stop));
        this.e = System.currentTimeMillis();
        this.h = EnumC0195c.STOPPED;
    }

    public void a(int i) {
        boolean z = this.b != i;
        this.b = i;
        if (!z || this.h.equals(EnumC0195c.STOPPED)) {
            return;
        }
        HaoboLog.d(HaoboLog.baseLogTag, "AdFetcher refresh mPeriod changed to " + this.b);
        HaoboLog.d(HaoboLog.baseLogTag, "Resetting AdFetcher");
        a();
        b();
    }

    public void b() {
        EnumC0195c enumC0195c;
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.start));
        d();
        int i = AnonymousClass1.a[this.h.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        long jMin = 0;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.fetcher_start_single));
            this.a.schedule(new a(this, anonymousClass1), 0L, TimeUnit.SECONDS);
            return;
        }
        if (this.b <= 0) {
            HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.fetcher_start_single));
            this.a.schedule(new a(this, anonymousClass1), 0L, TimeUnit.SECONDS);
            enumC0195c = EnumC0195c.SINGLE_REQUEST;
        } else {
            HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.fetcher_start_auto));
            int i2 = this.b;
            long j = this.e;
            if (j != -1) {
                long j2 = this.d;
                if (j2 != -1) {
                    long j3 = i2;
                    jMin = Math.min(j3, Math.max(0L, j3 - (j - j2)));
                }
            }
            long j4 = jMin;
            HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.request_delayed_by_x_ms, j4));
            this.a.scheduleAtFixedRate(new a(this, anonymousClass1), j4, i2, TimeUnit.MILLISECONDS);
            enumC0195c = EnumC0195c.AUTO_REFRESH;
        }
        this.h = enumC0195c;
    }

    public void c() {
        this.d = -1L;
        this.e = -1L;
    }
}
