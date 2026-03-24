package com.anythink.expressad.video.signal.container;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.video.signal.b;
import com.anythink.expressad.video.signal.e;
import com.anythink.expressad.video.signal.factory.IJSFactory;
import com.anythink.expressad.video.signal.factory.a;
import com.anythink.expressad.video.signal.g;
import com.anythink.expressad.video.signal.i;
import com.anythink.expressad.videocommon.a;
import com.anythink.expressad.videocommon.c.c;
import com.anythink.expressad.videocommon.e.d;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractJSContainer extends FrameLayout implements IJSFactory {
    public static final String l = "AbstractJSContainer";
    public IJSFactory A;
    private int a;
    private int b;
    public Activity m;
    public String n;
    public String o;
    public d p;
    public String q;
    public c r;
    public String s;
    public int t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public int y;
    public boolean z;

    public AbstractJSContainer(Context context) {
        super(context);
        this.a = 0;
        this.b = 1;
        this.t = 2;
        this.u = false;
        this.v = false;
        this.z = false;
        this.A = new a();
    }

    public AbstractJSContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 1;
        this.t = 2;
        this.u = false;
        this.v = false;
        this.z = false;
        this.A = new a();
    }

    private static String a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String string = jSONObject.toString();
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void a(WindVaneWebView windVaneWebView, String str, String str2) {
        j.a();
        j.a((WebView) windVaneWebView, str, Base64.encodeToString(str2.getBytes(), 2));
    }

    public static void a(Object obj, String str) {
        j.a().b(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    private void b(Object obj) {
        j.a().b(obj, a(this.b));
    }

    private static void b(Object obj, String str) {
        j.a().a(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private boolean b(int i) {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = false;
        try {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                if (i2 >= 18) {
                    this.m.setRequestedOrientation(11);
                } else {
                    this.m.setRequestedOrientation(0);
                }
            } else if (i2 >= 18) {
                this.m.setRequestedOrientation(12);
            } else {
                this.m.setRequestedOrientation(1);
            }
            z = true;
            return true;
        } catch (Throwable th) {
            th.getMessage();
            return z;
        }
    }

    public final void a(d dVar, com.anythink.expressad.foundation.d.c cVar) {
        c.C0131c c0131cM;
        if (c(cVar) == 1) {
            return;
        }
        boolean zB = false;
        if (cVar != null && (c0131cM = cVar.M()) != null) {
            zB = b(c0131cM.c());
        }
        if (zB || dVar == null) {
            return;
        }
        b(this.p.b());
    }

    public final void a(Object obj) {
        j.a().a(obj, a(this.a));
    }

    public void a(String str) {
        Activity activity = this.m;
        if (activity != null) {
            activity.finish();
        }
    }

    public final com.anythink.expressad.video.signal.a.j b(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null) {
            return null;
        }
        a.C0154a c0154aA = com.anythink.expressad.videocommon.a.a(this.u ? com.anythink.expressad.foundation.g.a.aU : 94, cVar);
        if (c0154aA != null && c0154aA.c()) {
            WindVaneWebView windVaneWebViewA = c0154aA.a();
            if (windVaneWebViewA.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                return (com.anythink.expressad.video.signal.a.j) windVaneWebViewA.getObject();
            }
        }
        return null;
    }

    public final String b() {
        d dVar;
        return (!TextUtils.isEmpty(this.o) || (dVar = this.p) == null || TextUtils.isEmpty(dVar.O())) ? this.o : this.p.O();
    }

    public final int c(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.expressad.video.signal.a.j jVarB = b(cVar);
        if (jVarB != null) {
            return jVarB.d();
        }
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public com.anythink.expressad.video.signal.a getActivityProxy() {
        return this.A.getActivityProxy();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public i getIJSRewardVideoV1() {
        return this.A.getIJSRewardVideoV1();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public b getJSBTModule() {
        return this.A.getJSBTModule();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public com.anythink.expressad.video.signal.c getJSCommon() {
        return this.A.getJSCommon();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public e getJSContainerModule() {
        return this.A.getJSContainerModule();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        return this.A.getJSNotifyProxy();
    }

    @Override // com.anythink.expressad.video.signal.factory.IJSFactory
    public com.anythink.expressad.video.signal.j getJSVideoModule() {
        return this.A.getJSVideoModule();
    }

    public String getPlacementId() {
        return this.o;
    }

    public String getUnitId() {
        return this.n;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (getJSCommon().g()) {
            getActivityProxy().a(configuration);
        }
    }

    public void onDestroy() {
        if (getJSCommon().g()) {
            getActivityProxy().c();
        }
    }

    public void onPause() {
        if (getJSCommon().g()) {
            getActivityProxy().a();
        }
        getActivityProxy().a(1);
    }

    public void onRestart() {
        if (getJSCommon().g()) {
            getActivityProxy();
        }
        getActivityProxy().a(4);
    }

    public void onResume() {
        if (com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        if (getJSCommon().g()) {
            getActivityProxy().b();
        }
        getActivityProxy().a(0);
    }

    public void onStart() {
        if (getJSCommon().g()) {
            getActivityProxy();
        }
        getActivityProxy().a(2);
    }

    public void onStop() {
        if (getJSCommon().g()) {
            getActivityProxy();
        }
        getActivityProxy().a(3);
    }

    public void registerJsFactory(IJSFactory iJSFactory) {
        this.A = iJSFactory;
    }

    public void setActivity(Activity activity) {
        this.m = activity;
    }

    public void setBidCampaign(boolean z) {
        this.v = z;
    }

    public void setBigOffer(boolean z) {
        this.z = z;
    }

    public void setIV(boolean z) {
        this.u = z;
    }

    public void setIVRewardEnable(int i, int i2, int i3) {
        this.w = i;
        this.x = i2;
        this.y = i3;
    }

    public void setMute(int i) {
        this.t = i;
    }

    public void setPlacementId(String str) {
        this.o = str;
    }

    public void setReward(com.anythink.expressad.videocommon.c.c cVar) {
        this.r = cVar;
    }

    public void setRewardId(String str) {
        this.s = str;
    }

    public void setRewardUnitSetting(d dVar) {
        this.p = dVar;
    }

    public void setUnitId(String str) {
        this.n = str;
    }

    public void setUserId(String str) {
        this.q = str;
    }
}
