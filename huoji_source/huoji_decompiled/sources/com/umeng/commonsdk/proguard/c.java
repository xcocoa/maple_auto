package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.os.Build;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements UMLogDataProtocol {
    private static final String b = "info";
    private static final String c = "stat";
    private Context a;

    public c(Context context) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
    }

    private static void a(Context context) {
        WifiInfo wifiInfoC;
        if (context == null || (wifiInfoC = j.c(context)) == null) {
            return;
        }
        j.c cVar = new j.c();
        cVar.a = wifiInfoC.describeContents();
        cVar.b = wifiInfoC.getBSSID();
        cVar.c = wifiInfoC.getSSID();
        cVar.d = Build.VERSION.SDK_INT >= 21 ? wifiInfoC.getFrequency() : -1;
        boolean z = true;
        if (wifiInfoC.getHiddenSSID()) {
            cVar.e = 1;
        } else {
            cVar.e = 0;
        }
        cVar.f = wifiInfoC.getIpAddress();
        cVar.g = wifiInfoC.getLinkSpeed();
        cVar.h = DeviceConfig.getMac(context);
        cVar.i = wifiInfoC.getNetworkId();
        cVar.j = wifiInfoC.getRssi();
        cVar.k = j.g(context);
        cVar.l = System.currentTimeMillis();
        if (wifiInfoC != null) {
            try {
                JSONArray jSONArrayB = n.b(context);
                if (jSONArrayB == null || jSONArrayB.length() <= 0) {
                    z = false;
                } else {
                    for (int i = 0; i < jSONArrayB.length(); i++) {
                        String strOptString = jSONArrayB.optJSONObject(i).optString("ssid", null);
                        if (strOptString != null && strOptString.equals(cVar.c)) {
                            break;
                        }
                    }
                    z = false;
                }
                if (z) {
                    return;
                }
                n.a(context, cVar);
            } catch (Exception e) {
                com.umeng.commonsdk.statistics.common.e.e("wifiChange:" + e.getMessage());
            }
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return null;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent");
        try {
            switch (i) {
                case a.e /* 32769 */:
                    com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent send envelope");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(v.aq, a.d);
                    JSONObject jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(this.a, jSONObject, d.d(this.a));
                    if (jSONObjectBuildEnvelopeWithExtHeader != null && !jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                        com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent send envelope back, result is ok");
                        j.f(this.a);
                        r.d(this.a);
                    }
                    break;
                case a.f /* 32770 */:
                    com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent cache location, event is " + obj.toString());
                    SharedPreferences sharedPreferences = this.a.getSharedPreferences(h.a, 0);
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(h.b, obj.toString());
                        editorEdit.commit();
                        break;
                    }
                    break;
                case a.g /* 32771 */:
                    com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent cache battery, event is " + obj.toString());
                    s.b(this.a, obj.toString());
                    break;
                case a.h /* 32772 */:
                    com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] workEvent cache station, event is " + obj.toString());
                    s.a(this.a, obj.toString());
                    break;
                case a.i /* 32773 */:
                    n.a(this.a, (j.b) obj);
                    break;
                case a.j /* 32774 */:
                    try {
                        a(this.a);
                    } catch (Exception e) {
                        e = e;
                        com.umeng.commonsdk.statistics.common.e.e("UM_INTERNAL_CACHE_WIFICHANGE_KEY:" + e.getMessage());
                        e.a(this.a, e);
                        return;
                    }
                    break;
                case a.k /* 32775 */:
                    n.a(this.a, (String) obj);
                    break;
                case a.l /* 32776 */:
                    SharedPreferences sharedPreferences2 = this.a.getApplicationContext().getSharedPreferences(b, 0);
                    if (sharedPreferences2 != null) {
                        sharedPreferences2.edit().putString(c, (String) obj).commit();
                    }
                    break;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
