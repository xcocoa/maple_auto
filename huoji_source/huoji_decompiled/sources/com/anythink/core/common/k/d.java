package com.anythink.core.common.k;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.AdError;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.az;
import com.anythink.core.common.f.h;
import com.anythink.core.common.h.k;
import com.anythink.core.common.n.e;
import com.anythink.core.d.f;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d implements com.anythink.core.common.g.c {
    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2, long j, long j2, h hVar, ATBaseAdAdapter aTBaseAdAdapter, Object obj) {
        Map<String, Object> networkInfoMap;
        try {
            networkInfoMap = aTBaseAdAdapter.getNetworkInfoMap();
        } catch (Throwable unused) {
        }
        String string = networkInfoMap != null ? new JSONObject(networkInfoMap).toString() : "";
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pl_id", str);
            jSONObject.put("req_id", hVar.ai());
            jSONObject.put("show_id", hVar.t());
            jSONObject.put("unit_id", hVar.F());
            jSONObject.put("nw_firm_id", hVar.P());
            jSONObject.put("scenario_id", hVar.B);
            jSONObject.put("rv_start_ts", j);
            jSONObject.put("r_callback_ts", j2);
            jSONObject.put("rv_play_dur", j2 - j);
            jSONObject.put(az.m, hVar.m());
            jSONObject.put("extra_info", string);
            jSONObject.put("user_id", aTBaseAdAdapter.getUserId());
            jSONObject.put("extra_data", aTBaseAdAdapter.getUserCustomData());
            jSONObject.put("curr_ts", System.currentTimeMillis());
            jSONObject.put("api_c", obj);
            jSONObject.put(f.a.i, j.a(hVar, aTBaseAdAdapter).toString());
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(f.a.an, str2);
            }
            return jSONObject.toString();
        } catch (Throwable unused2) {
            return "";
        }
    }

    @Override // com.anythink.core.common.g.c
    public final void a(final long j, final long j2, final ATBaseAdAdapter aTBaseAdAdapter, final h hVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.k.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    final String strAh = hVar.ah();
                    String strE = hVar.e();
                    String str = "";
                    if (TextUtils.isEmpty(strE) || TextUtils.equals(strAh, strE)) {
                        strE = strAh;
                    } else {
                        str = strAh;
                    }
                    f fVarA = com.anythink.core.d.h.a(n.a().f()).a(strE);
                    if (fVarA.m() != 1) {
                        return;
                    }
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j3 = j2;
                    long j4 = (j3 == 0 || jElapsedRealtime < j3) ? jElapsedRealtime : j3;
                    JSONObject jSONObject = new JSONObject(a.a(fVarA.H()));
                    int iOptInt = jSONObject.optInt("a");
                    String strOptString = jSONObject.optString("b");
                    Object objOpt = jSONObject.opt("api_c");
                    if (objOpt == null) {
                        objOpt = new JSONObject();
                    }
                    b bVarA = a.a(strOptString, d.b(strE, str, j, j4, hVar, aTBaseAdAdapter, objOpt));
                    if (TextUtils.isEmpty(bVarA.a())) {
                        e.a(strE, str, hVar, fVarA, "", bVarA.b());
                    } else {
                        new c(n.a().f(), iOptInt, bVarA.a(), hVar, fVarA, strE, str).a(0, new k() { // from class: com.anythink.core.common.k.d.1.1
                            @Override // com.anythink.core.common.h.k
                            public final void onLoadCanceled(int i) {
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadError(int i, String str2, AdError adError) {
                                Log.e("anythink_s2s_reward", "S2S reward error! PlacementId: " + strAh + ", " + adError.printStackTrace());
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadFinish(int i, Object obj) {
                                if (n.a().A()) {
                                    Log.i("anythink_s2s_reward", "S2S reward succeeded. PlacementId: " + strAh);
                                }
                            }

                            @Override // com.anythink.core.common.h.k
                            public final void onLoadStart(int i) {
                            }
                        });
                    }
                } catch (Throwable unused) {
                }
            }
        }, 2, true);
    }
}
