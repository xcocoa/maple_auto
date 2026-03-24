package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.as;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.idtracking.g;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final String p = "thtstart";
    private static final String q = "gkvc";
    private static final String r = "ekvc";
    public String a;
    private com.umeng.commonsdk.statistics.internal.c f;
    private g g;
    private com.umeng.commonsdk.statistics.idtracking.e h;
    private g.a i;
    private ABTest j;
    private ImLatent k;
    private Defcon l;
    private long m;
    private int n;
    private int o;
    private Context s;
    private final int e = 1;
    private ReportPolicy.ReportStrategy t = null;

    public d(Context context) {
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = 0L;
        this.n = 0;
        this.o = 0;
        this.a = null;
        this.s = context;
        this.i = g.a(context).b();
        this.j = ABTest.getService(this.s);
        this.l = Defcon.getService(this.s);
        Context context2 = this.s;
        this.k = ImLatent.getService(context2, StatTracer.getInstance(context2));
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.s);
        this.m = sharedPreferences.getLong(p, 0L);
        this.n = sharedPreferences.getInt(q, 0);
        this.o = sharedPreferences.getInt(r, 0);
        this.a = UMEnvelopeBuild.imprintProperty(this.s, "track_list", null);
        g gVarA = g.a(this.s);
        this.g = gVarA;
        gVarA.a(new com.umeng.commonsdk.statistics.internal.d() { // from class: com.umeng.commonsdk.statistics.d.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(g.a aVar) {
                d.this.j.onImprintChanged(aVar);
                d.this.l.onImprintChanged(aVar);
                d.this.k.onImprintChanged(aVar);
                d dVar = d.this;
                dVar.a = UMEnvelopeBuild.imprintProperty(dVar.s, "track_list", null);
                try {
                    q qVar = new q(d.this.s);
                    String strA = com.umeng.commonsdk.framework.a.a(d.this.s, v.d, (String) null);
                    String strG = qVar.g();
                    if (TextUtils.isEmpty(strA)) {
                        return;
                    }
                    if (TextUtils.isEmpty(strG) || !strA.equals(strG)) {
                        qVar.a(strA);
                    }
                } catch (Throwable unused) {
                }
            }
        });
        this.h = com.umeng.commonsdk.statistics.idtracking.e.a(this.s);
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.s);
        this.f = cVar;
        cVar.a(StatTracer.getInstance(this.s));
    }

    private int a(byte[] bArr) {
        Response response = new Response();
        try {
            new ad(new as.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.g.b(response.getImprint());
                this.g.c();
            }
            MLog.i("send log:" + response.getMsg());
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(this.s, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }

    public boolean a() {
        if (!this.l.isOpen()) {
            ReportPolicy.ReportStrategy reportStrategy = this.t;
            if (!((reportStrategy instanceof ReportPolicy.LatentPolicy) && reportStrategy.isValid()) && this.k.shouldStartLatency()) {
                this.t = new ReportPolicy.LatentPolicy((int) this.k.getDelayTime());
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(File file) {
        StatTracer statTracer;
        if (file == null) {
            return false;
        }
        try {
            byte[] bArrA = com.umeng.commonsdk.framework.b.a(file.getPath());
            if (bArrA == null) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a.a(this.s).b(file.getName());
            byte[] bArrA2 = this.f.a(bArrA, com.umeng.commonsdk.statistics.internal.a.a(this.s).a(file.getName()));
            int iA = bArrA2 == null ? 1 : a(bArrA2);
            if (iA == 2) {
                this.h.d();
                statTracer = StatTracer.getInstance(this.s);
            } else {
                if (iA != 3) {
                    return iA != 2;
                }
                statTracer = StatTracer.getInstance(this.s);
            }
            statTracer.saveSate();
            if (iA != 2) {
            }
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(this.s, th);
            return false;
        }
    }

    public int b() {
        this.k.getDelayTime();
        return (int) (System.currentTimeMillis() - StatTracer.getInstance(this.s).getLastReqTime());
    }
}
