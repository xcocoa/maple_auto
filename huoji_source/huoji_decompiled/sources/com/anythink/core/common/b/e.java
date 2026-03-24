package com.anythink.core.common.b;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import com.anythink.core.common.o.s;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements Application.ActivityLifecycleCallbacks {
    public static final String a = "start_time";
    public static final String b = "end_time";
    public static final String c = "psid";
    public static final String d = "launch_mode";
    public static final int e = 0;
    public static final int f = 1;
    public long g;
    public JSONObject i;
    private final String k = e.class.getName();
    public Runnable j = new Runnable() { // from class: com.anythink.core.common.b.e.1
        @Override // java.lang.Runnable
        public final void run() {
            e.a(e.this);
        }
    };
    public int h = 0;
    private final Handler l = com.anythink.core.common.o.b.b.a().a(14);

    public e(long j) {
        this.g = j;
    }

    private void a() {
        if (this.i != null) {
            s.a(n.a().f(), h.p, n.a().o() + "playRecord", "");
            this.g = 0L;
            JSONObject jSONObject = this.i;
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(c);
            int iOptInt = jSONObject.optInt(d);
            this.i = null;
            com.anythink.core.common.n.e.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
            new StringBuilder("Time up to send application playTime, reset playStartTime and send agent, playtime:").append((jOptLong2 - jOptLong) / 1000);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(long j) {
        long j2;
        this.l.removeCallbacks(this.j);
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        JSONObject jSONObject = this.i;
        if (jSONObject != null) {
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(c);
            int iOptInt = jSONObject.optInt(d);
            if (System.currentTimeMillis() - jOptLong2 > aVarB.D()) {
                new StringBuilder("onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:").append((jOptLong2 - jOptLong) / 1000);
                s.a(n.a().f(), h.p, n.a().o() + "playRecord", "");
                com.anythink.core.common.n.e.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
                j2 = 0;
                this.g = 0L;
            } else {
                j2 = 0;
            }
        }
        this.i = null;
        if (this.g == j2) {
            this.h = 1;
            try {
                this.g = n.a().a(n.a().f(), n.a().o(), 1);
            } catch (Exception unused) {
            }
        } else {
            String strO = n.a().o();
            s.a(n.a().f(), h.p, strO + "playRecord", "");
        }
        if (this.g == 0) {
            this.g = System.currentTimeMillis();
        }
        new StringBuilder("onActivityResumed: Method use time:").append(System.currentTimeMillis() - j);
    }

    public static /* synthetic */ void a(e eVar) {
        if (eVar.i != null) {
            s.a(n.a().f(), h.p, n.a().o() + "playRecord", "");
            eVar.g = 0L;
            JSONObject jSONObject = eVar.i;
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(c);
            int iOptInt = jSONObject.optInt(d);
            eVar.i = null;
            com.anythink.core.common.n.e.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
            new StringBuilder("Time up to send application playTime, reset playStartTime and send agent, playtime:").append((jOptLong2 - jOptLong) / 1000);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(e eVar, long j) {
        long j2;
        eVar.l.removeCallbacks(eVar.j);
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        JSONObject jSONObject = eVar.i;
        if (jSONObject != null) {
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(c);
            int iOptInt = jSONObject.optInt(d);
            if (System.currentTimeMillis() - jOptLong2 > aVarB.D()) {
                new StringBuilder("onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:").append((jOptLong2 - jOptLong) / 1000);
                s.a(n.a().f(), h.p, n.a().o() + "playRecord", "");
                com.anythink.core.common.n.e.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
                j2 = 0;
                eVar.g = 0L;
            } else {
                j2 = 0;
            }
        }
        eVar.i = null;
        if (eVar.g == j2) {
            eVar.h = 1;
            try {
                eVar.g = n.a().a(n.a().f(), n.a().o(), 1);
            } catch (Exception unused) {
            }
        } else {
            String strO = n.a().o();
            s.a(n.a().f(), h.p, strO + "playRecord", "");
        }
        if (eVar.g == 0) {
            eVar.g = System.currentTimeMillis();
        }
        new StringBuilder("onActivityResumed: Method use time:").append(System.currentTimeMillis() - j);
    }

    private void b(long j) {
        String strO = n.a().o();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c, n.a().q());
            jSONObject.put("start_time", this.g);
            jSONObject.put("end_time", System.currentTimeMillis());
            jSONObject.put(d, this.h);
            this.i = jSONObject;
            s.a(n.a().f(), h.p, strO + "playRecord", jSONObject.toString());
            new StringBuilder("onActivityPaused: record leave time:").append(jSONObject.toString());
        } catch (Exception unused) {
        }
        if (com.anythink.core.d.b.a(n.a().f()).b(strO).F() == 1) {
            this.l.postDelayed(this.j, r0.D());
        }
        new StringBuilder("onActivityPaused: Method use time:").append(System.currentTimeMillis() - j);
    }

    public static /* synthetic */ void b(e eVar, long j) {
        String strO = n.a().o();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c, n.a().q());
            jSONObject.put("start_time", eVar.g);
            jSONObject.put("end_time", System.currentTimeMillis());
            jSONObject.put(d, eVar.h);
            eVar.i = jSONObject;
            s.a(n.a().f(), h.p, strO + "playRecord", jSONObject.toString());
            new StringBuilder("onActivityPaused: record leave time:").append(jSONObject.toString());
        } catch (Exception unused) {
        }
        if (com.anythink.core.d.b.a(n.a().f()).b(strO).F() == 1) {
            eVar.l.postDelayed(eVar.j, r0.D());
        }
        new StringBuilder("onActivityPaused: Method use time:").append(System.currentTimeMillis() - j);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.l.post(new Runnable() { // from class: com.anythink.core.common.b.e.3
            @Override // java.lang.Runnable
            public final void run() {
                e.b(e.this, jCurrentTimeMillis);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.l.post(new Runnable() { // from class: com.anythink.core.common.b.e.2
            @Override // java.lang.Runnable
            public final void run() {
                e.a(e.this, jCurrentTimeMillis);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
