package com.anythink.core.common.f;

import android.os.SystemClock;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class ba {
    private final String a = ba.class.getSimpleName();
    private com.anythink.core.d.f b;
    private v c;
    private boolean d;
    private long e;
    private boolean f;
    private int g;
    private int h;
    private boolean i;
    private long j;

    public ba(v vVar, com.anythink.core.d.f fVar) {
        int i = vVar.d;
        this.c = vVar;
        this.b = fVar;
        this.d = (ATAdxSetting.getInstance().isAdxNetworkMode(fVar.a()) || fVar.w() != 1 || i == 8) ? false : true;
        this.e = fVar.j();
        this.f = fVar.h() != 1 && fVar.w() == 1;
        this.g = i == 9 ? fVar.f() : fVar.x();
        this.h = i == 9 ? fVar.g() : fVar.ak();
        this.i = fVar.h() != 1;
        this.j = -1L;
        StringBuilder sb = new StringBuilder("LoadType: ");
        sb.append(i);
        sb.append(" :::Generate WaterfallSetting:");
        sb.append(toString());
    }

    private long q() {
        return this.b.B();
    }

    public final com.anythink.core.d.f a() {
        return this.b;
    }

    public final boolean b() {
        return this.d;
    }

    public final long c() {
        return this.e;
    }

    public final boolean d() {
        return this.f;
    }

    public final int e() {
        return this.g;
    }

    public final int f() {
        return this.h;
    }

    public final boolean g() {
        return this.i;
    }

    public final int h() {
        return this.b.ay();
    }

    public final long i() {
        return this.b.ac();
    }

    public final long j() {
        v vVar = this.c;
        if (!vVar.j) {
            return this.b.z();
        }
        long j = this.j;
        if (j >= 0) {
            return j;
        }
        long jElapsedRealtime = (((long) vVar.h) - (SystemClock.elapsedRealtime() - this.c.k)) - 100;
        this.j = jElapsedRealtime;
        if (jElapsedRealtime < 0) {
            this.j = 0L;
        }
        return this.j;
    }

    public final int k() {
        return this.b.o();
    }

    public final long l() {
        return this.b.S();
    }

    public final long m() {
        return this.b.M();
    }

    public final long n() {
        return this.b.ad();
    }

    public final long o() {
        return this.b.G();
    }

    public final boolean p() {
        com.anythink.core.d.f fVar = this.b;
        return fVar != null && fVar.aR() == 1;
    }

    public final String toString() {
        return "WaterfallSetting{canLoadFailRetry=" + this.d + ", loadFailRetryDelayTime=" + this.e + ", cannBiddingFailRetry=" + this.f + ", requestType=" + this.g + ", requestNum=" + this.h + ", canBuyerIdOverTimeToBid=" + this.i + ", cacheNum:" + this.b.ay() + MessageFormatter.DELIM_STOP;
    }
}
