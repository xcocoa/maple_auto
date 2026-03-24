package com.anythink.splashad.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATMediationRequestInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ba;
import com.anythink.core.common.f.v;
import com.anythink.core.common.j;
import com.anythink.core.common.n;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.p;
import com.anythink.core.common.u;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public boolean a;
    public n b;
    public long c;
    public com.anythink.core.common.f.b d;
    public String e;
    public String f;
    public String g;
    public int h;
    public String i;
    public String j;
    public int k = -1;
    public Map<String, Object> l;
    public v m;
    private Context n;
    private boolean o;

    /* JADX INFO: renamed from: com.anythink.splashad.a.f$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ CustomSplashAdapter a;

        public AnonymousClass1(CustomSplashAdapter customSplashAdapter) {
            this.a = customSplashAdapter;
        }

        @Override // java.lang.Runnable
        public final void run() {
            CustomSplashAdapter customSplashAdapter = this.a;
            if (customSplashAdapter != null) {
                customSplashAdapter.internalDestory();
            }
        }
    }

    public class a implements ATCustomLoadListener {
        public CustomSplashAdapter a;

        public a(CustomSplashAdapter customSplashAdapter) {
            this.a = customSplashAdapter;
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdCacheLoaded(BaseAd... baseAdArr) {
            f.this.a(this.a, baseAdArr);
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdDataLoaded() {
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdLoadError(String str, String str2) {
            f.this.a(this.a, ErrorCode.getErrorCode(ErrorCode.noADError, str, str2), this.a.getTrackingInfo());
        }
    }

    public f(Context context) {
        this.n = context.getApplicationContext();
    }

    private void a(ATMediationRequestInfo aTMediationRequestInfo) {
        this.g = aTMediationRequestInfo.getAdSourceId();
        this.h = aTMediationRequestInfo.getNetworkFirmId();
        this.i = aTMediationRequestInfo.getClassName();
        Map<String, Object> requestParamMap = aTMediationRequestInfo.getRequestParamMap();
        this.l = requestParamMap;
        this.k = 4;
        requestParamMap.put("ad_type", 4);
    }

    private void a(CustomSplashAdapter customSplashAdapter, AdError adError) {
        if (customSplashAdapter != null) {
            com.anythink.core.common.b.n.a().b(new AnonymousClass1(customSplashAdapter));
        }
        n nVar = this.b;
        if (nVar != null) {
            nVar.a(3, this.m, (ba) null, adError);
        }
        this.b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(CustomSplashAdapter customSplashAdapter, AdError adError, com.anythink.core.common.f.h hVar) {
        if (this.a) {
            return;
        }
        if (hVar != null) {
            p.a(hVar, h.n.b, h.n.m, adError.printStackTrace());
        }
        this.a = true;
        this.o = false;
        if (customSplashAdapter != null) {
            com.anythink.core.common.b.n.a().b(new AnonymousClass1(customSplashAdapter));
        }
        n nVar = this.b;
        if (nVar != null) {
            nVar.a(3, this.m, (ba) null, adError);
        }
        this.b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(CustomSplashAdapter customSplashAdapter, BaseAd... baseAdArr) {
        if (this.a) {
            return;
        }
        if (customSplashAdapter != null) {
            customSplashAdapter.getTrackingInfo().f(SystemClock.elapsedRealtime() - this.c);
            customSplashAdapter.getTrackingInfo().g(customSplashAdapter.getInternalNetworkPlacementId());
            p.a(customSplashAdapter.getTrackingInfo(), h.n.b, h.n.l, "");
            com.anythink.core.common.n.c.a(this.n).a(12, customSplashAdapter.getTrackingInfo());
            com.anythink.core.common.n.c.a(this.n).a(2, customSplashAdapter.getTrackingInfo());
            com.anythink.core.common.f.b bVar = new com.anythink.core.common.f.b();
            bVar.a(customSplashAdapter);
            bVar.c(System.currentTimeMillis());
            bVar.b(600000L);
            bVar.a(600000L);
            if (baseAdArr != null && baseAdArr.length > 0) {
                baseAdArr[0].setTrackingInfo(customSplashAdapter.getTrackingInfo().V());
                bVar.a(baseAdArr[0]);
            }
            this.d = bVar;
        }
        this.a = true;
        this.o = false;
        n nVar = this.b;
        if (nVar != null) {
            nVar.a(3, this.m, (ba) null, -1);
        }
        this.b = null;
    }

    private void a(String str) {
        this.g = "0";
        this.l = new HashMap(1);
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.g = jSONObject.optString("unit_id");
            this.h = jSONObject.optInt("nw_firm_id");
            this.i = jSONObject.optString(j.B);
            this.j = jSONObject.optString("content");
            this.k = jSONObject.optInt("ad_type", -1);
            Map<String, Object> mapC = i.c(this.j);
            this.l = mapC;
            mapC.put("ad_type", Integer.valueOf(this.k));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b() {
        n nVar = this.b;
        if (nVar != null) {
            nVar.a(3, this.m, (ba) null, -1);
        }
        this.b = null;
    }

    private void c() {
        this.b = null;
    }

    private void d() {
        this.d = null;
    }

    private com.anythink.core.common.f.b e() {
        com.anythink.core.common.f.b bVar = this.d;
        if (bVar == null || bVar.c() > 0) {
            return null;
        }
        return this.d;
    }

    private com.anythink.core.common.f.b f() {
        return this.d;
    }

    public final void a(Context context, String str, String str2, v vVar, n nVar) {
        Object obj;
        this.m = vVar;
        this.b = nVar;
        this.e = str2;
        this.f = str;
        if (TextUtils.isEmpty(vVar.c)) {
            ATMediationRequestInfo aTMediationRequestInfo = this.m.b;
            if (aTMediationRequestInfo != null) {
                this.g = aTMediationRequestInfo.getAdSourceId();
                this.h = aTMediationRequestInfo.getNetworkFirmId();
                this.i = aTMediationRequestInfo.getClassName();
                Map<String, Object> requestParamMap = aTMediationRequestInfo.getRequestParamMap();
                this.l = requestParamMap;
                this.k = 4;
                requestParamMap.put("ad_type", 4);
            }
        } else {
            String str3 = this.m.c;
            this.g = "0";
            this.l = new HashMap(1);
            try {
                JSONObject jSONObject = new JSONObject(str3);
                this.g = jSONObject.optString("unit_id");
                this.h = jSONObject.optInt("nw_firm_id");
                this.i = jSONObject.optString(j.B);
                this.j = jSONObject.optString("content");
                this.k = jSONObject.optInt("ad_type", -1);
                Map<String, Object> mapC = i.c(this.j);
                this.l = mapC;
                mapC.put("ad_type", Integer.valueOf(this.k));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.anythink.core.common.b.n.a();
        com.anythink.core.common.b.n.o(this.g);
        com.anythink.core.common.f.h hVar = new com.anythink.core.common.f.h();
        hVar.w(str);
        hVar.x(str2);
        hVar.y(this.h);
        hVar.y("4");
        hVar.l(TextUtils.isEmpty(this.g) ? "0" : this.g);
        hVar.v("0");
        hVar.J(2);
        hVar.b(true);
        if (!TextUtils.isEmpty(this.j)) {
            hVar.n(this.j);
        }
        if (!TextUtils.isEmpty(this.m.c)) {
            hVar.e(8);
        }
        hVar.A(this.k);
        try {
            ATBaseAdAdapter aTBaseAdAdapterA = com.anythink.core.common.o.j.a(this.i);
            if (!(aTBaseAdAdapterA instanceof CustomSplashAdapter)) {
                throw new Exception("The class isn't instanceof CustomSplashAdapter");
            }
            ((CustomSplashAdapter) aTBaseAdAdapterA).setFetchAdTimeout(this.m.h);
            this.o = true;
            this.a = false;
            this.c = SystemClock.elapsedRealtime();
            try {
                hVar.u(aTBaseAdAdapterA.getInternalNetworkName());
                hVar.u = aTBaseAdAdapterA.getInternalNetworkSDKVersion();
                hVar.q = 2;
            } catch (Throwable unused) {
            }
            aTBaseAdAdapterA.setTrackingInfo(hVar);
            p.a(hVar, h.n.a, h.n.n, "");
            com.anythink.core.common.n.c.a(this.n).a(10, hVar);
            com.anythink.core.common.n.c.a(this.n).a(1, hVar);
            Map<String, Object> mapB = u.a().b(str);
            if (this.h == 2 && (obj = mapB.get("admob_content_urls")) != null && (obj instanceof List)) {
                com.anythink.core.common.n.e.a(this.f, hVar, "admob_content_urls", obj);
            }
            aTBaseAdAdapterA.internalLoad(context, this.l, mapB, new com.anythink.core.common.p.a(hVar, this.g, this.l, new a((CustomSplashAdapter) aTBaseAdAdapterA)));
        } catch (Throwable th2) {
            a((CustomSplashAdapter) null, ErrorCode.getErrorCode(ErrorCode.adapterNotExistError, "", th2.getMessage()), hVar);
        }
    }

    public final boolean a() {
        return this.o;
    }
}
