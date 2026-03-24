package com.tramini.plugin.a.h;

import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustAttribution;
import com.anythink.expressad.foundation.d.r;
import com.appsflyer.AppsFlyerLib;
import com.tramini.plugin.a.b.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static b a;

    private b() {
    }

    public static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    private static void a(String str, com.tramini.plugin.b.b bVar) {
        try {
            com.tramini.plugin.a.d.b bVar2 = new com.tramini.plugin.a.d.b();
            bVar2.c = Adjust.getSdkVersion();
            bVar2.d = 2;
            AdjustAttribution attribution = Adjust.getAttribution();
            if (attribution != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adgroup", attribution.adgroup);
                jSONObject.put("adid", attribution.adid);
                jSONObject.put("campaign", attribution.campaign);
                jSONObject.put("clickLabel", attribution.clickLabel);
                jSONObject.put(r.aD, attribution.creative);
                jSONObject.put("network", attribution.network);
                jSONObject.put("trackerName", attribution.trackerName);
                jSONObject.put("trackerToken", attribution.trackerToken);
                jSONObject.put("attr", attribution.toString());
                bVar2.e = jSONObject.toString();
                JSONObject jSONObjectA = bVar2.a();
                if (TextUtils.equals(i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, ""), jSONObject.toString())) {
                    return;
                }
                i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, jSONObject.toString());
                com.tramini.plugin.a.g.a.a().a(str, bVar.c(), d.a, jSONObjectA);
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(String str, com.tramini.plugin.b.b bVar) {
        try {
            com.tramini.plugin.a.d.b bVar2 = new com.tramini.plugin.a.d.b();
            bVar2.c = AppsFlyerLib.getInstance().getSdkVersion();
            bVar2.d = 1;
            String strB = i.b(com.tramini.plugin.a.b.c.a().b(), "appsflyer-data", "attributionId", "");
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            bVar2.e = strB;
            JSONObject jSONObjectA = bVar2.a();
            String strB2 = i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, "");
            if (jSONObjectA == null || TextUtils.equals(strB2, strB)) {
                return;
            }
            i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, strB);
            com.tramini.plugin.a.g.a.a().a(str, bVar.c(), d.a, jSONObjectA);
        } catch (Throwable unused) {
        }
    }

    private static /* synthetic */ void c(String str, com.tramini.plugin.b.b bVar) {
        try {
            com.tramini.plugin.a.d.b bVar2 = new com.tramini.plugin.a.d.b();
            bVar2.c = AppsFlyerLib.getInstance().getSdkVersion();
            bVar2.d = 1;
            String strB = i.b(com.tramini.plugin.a.b.c.a().b(), "appsflyer-data", "attributionId", "");
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            bVar2.e = strB;
            JSONObject jSONObjectA = bVar2.a();
            String strB2 = i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, "");
            if (jSONObjectA == null || TextUtils.equals(strB2, strB)) {
                return;
            }
            i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, strB);
            com.tramini.plugin.a.g.a.a().a(str, bVar.c(), d.a, jSONObjectA);
        } catch (Throwable unused) {
        }
    }

    private static /* synthetic */ void d(String str, com.tramini.plugin.b.b bVar) {
        try {
            com.tramini.plugin.a.d.b bVar2 = new com.tramini.plugin.a.d.b();
            bVar2.c = Adjust.getSdkVersion();
            bVar2.d = 2;
            AdjustAttribution attribution = Adjust.getAttribution();
            if (attribution != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adgroup", attribution.adgroup);
                jSONObject.put("adid", attribution.adid);
                jSONObject.put("campaign", attribution.campaign);
                jSONObject.put("clickLabel", attribution.clickLabel);
                jSONObject.put(r.aD, attribution.creative);
                jSONObject.put("network", attribution.network);
                jSONObject.put("trackerName", attribution.trackerName);
                jSONObject.put("trackerToken", attribution.trackerToken);
                jSONObject.put("attr", attribution.toString());
                bVar2.e = jSONObject.toString();
                JSONObject jSONObjectA = bVar2.a();
                if (TextUtils.equals(i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, ""), jSONObject.toString())) {
                    return;
                }
                i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, jSONObject.toString());
                com.tramini.plugin.a.g.a.a().a(str, bVar.c(), d.a, jSONObjectA);
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(final com.tramini.plugin.b.b bVar) {
        com.tramini.plugin.a.h.b.a.a().a(new Runnable() { // from class: com.tramini.plugin.a.h.b.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (b.this) {
                    try {
                        if (bVar.b() != 1) {
                            return;
                        }
                        String strA = g.a(bVar);
                        com.tramini.plugin.b.b bVar2 = bVar;
                        try {
                            com.tramini.plugin.a.d.b bVar3 = new com.tramini.plugin.a.d.b();
                            bVar3.c = AppsFlyerLib.getInstance().getSdkVersion();
                            bVar3.d = 1;
                            String strB = i.b(com.tramini.plugin.a.b.c.a().b(), "appsflyer-data", "attributionId", "");
                            if (!TextUtils.isEmpty(strB)) {
                                bVar3.e = strB;
                                JSONObject jSONObjectA = bVar3.a();
                                String strB2 = i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, "");
                                if (jSONObjectA != null && !TextUtils.equals(strB2, strB)) {
                                    i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.d, strB);
                                    com.tramini.plugin.a.g.a.a().a(strA, bVar2.c(), d.a, jSONObjectA);
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        com.tramini.plugin.b.b bVar4 = bVar;
                        com.tramini.plugin.a.d.b bVar5 = new com.tramini.plugin.a.d.b();
                        bVar5.c = Adjust.getSdkVersion();
                        bVar5.d = 2;
                        AdjustAttribution attribution = Adjust.getAttribution();
                        if (attribution != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("adgroup", attribution.adgroup);
                            jSONObject.put("adid", attribution.adid);
                            jSONObject.put("campaign", attribution.campaign);
                            jSONObject.put("clickLabel", attribution.clickLabel);
                            jSONObject.put(r.aD, attribution.creative);
                            jSONObject.put("network", attribution.network);
                            jSONObject.put("trackerName", attribution.trackerName);
                            jSONObject.put("trackerToken", attribution.trackerToken);
                            jSONObject.put("attr", attribution.toString());
                            bVar5.e = jSONObject.toString();
                            JSONObject jSONObjectA2 = bVar5.a();
                            if (!TextUtils.equals(i.b(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, ""), jSONObject.toString())) {
                                i.a(com.tramini.plugin.a.b.c.a().b(), "tramini", a.d.e, jSONObject.toString());
                                com.tramini.plugin.a.g.a.a().a(strA, bVar4.c(), d.a, jSONObjectA2);
                            }
                        }
                    } catch (Throwable unused2) {
                    }
                }
            }
        });
    }
}
