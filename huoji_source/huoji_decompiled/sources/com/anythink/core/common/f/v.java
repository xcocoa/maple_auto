package com.anythink.core.common.f;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.ATMediationRequestInfo;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public String a;
    public ATMediationRequestInfo b;
    public String c;
    public int d;
    public com.anythink.core.common.b.b e;
    public com.anythink.core.common.n f;
    public Map<String, Object> g;
    public int h;
    public c i;
    public boolean j = false;
    public long k = SystemClock.elapsedRealtime();
    public ATAdxBidFloorInfo l;
    private Context m;
    private WeakReference<Activity> n;

    private int d() {
        return this.d;
    }

    public final Context a() {
        Activity activity;
        WeakReference<Activity> weakReference = this.n;
        if (weakReference != null && (activity = weakReference.get()) != null) {
            return activity;
        }
        Activity activityF = com.anythink.core.common.b.n.a().F();
        return activityF != null ? activityF : this.m;
    }

    public final void a(Context context) {
        this.m = com.anythink.core.common.b.n.a().f();
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        this.n = new WeakReference<>((Activity) context);
    }

    public final v b() {
        v vVar = new v();
        vVar.b = this.b;
        vVar.c = this.c;
        vVar.m = this.m;
        vVar.n = this.n;
        vVar.d = this.d;
        vVar.e = this.e;
        vVar.f = this.f;
        vVar.g = this.g;
        vVar.h = this.h;
        return vVar;
    }

    public final boolean c() {
        int i = this.d;
        return i == 13 || i == 14;
    }
}
