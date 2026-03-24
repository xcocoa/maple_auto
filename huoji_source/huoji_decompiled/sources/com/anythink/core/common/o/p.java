package com.anythink.core.common.o;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.b.h;
import com.anythink.core.common.c.g;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.az;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final String a = "anythink_bidding";

    public static void a(com.anythink.core.common.f.h hVar, String str, String str2, String str3) {
        if (!ATSDK.isNetworkLogDebug() || hVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            int iP = hVar.P();
            if (iP == 66) {
                jSONObject.put("isAdxNetworkMode", hVar.X());
            }
            if (hVar.g() == 2) {
                jSONObject.put(CallMraidJS.a, "shared placement");
            }
            if (hVar.G() != 0) {
                jSONObject.put("defaultAdSourceType", hVar.G());
            }
            jSONObject.put(com.anythink.expressad.videocommon.e.b.v, hVar.ah());
            jSONObject.put("adType", hVar.ak());
            jSONObject.put("mixedFormatAdType", hVar.T());
            jSONObject.put(NativeAdvancedJsUtils.p, str);
            jSONObject.put("refresh", hVar.N());
            jSONObject.put(com.anythink.expressad.foundation.d.r.ah, str2);
            jSONObject.put("segmentId", hVar.Q());
            jSONObject.put(az.i, hVar.F());
            jSONObject.put(RequestParameters.POSITION, hVar.H());
            jSONObject.put("networkType", iP);
            jSONObject.put("networkName", hVar.ae());
            jSONObject.put("networkVersion", hVar.u);
            jSONObject.put("networkUnit", hVar.O());
            if (hVar.D() == 1) {
                String strA = h.a(hVar.i());
                if (TextUtils.isEmpty(strA)) {
                    jSONObject.put(com.anythink.core.common.f.p.f, 1);
                } else {
                    jSONObject.put(com.anythink.core.common.f.p.f, "1 (" + strA + ")");
                }
            } else {
                jSONObject.put(com.anythink.core.common.f.p.f, 0);
            }
            jSONObject.put("msg", str3);
            jSONObject.put("hourly_frequency", hVar.J());
            jSONObject.put("daily_frequency", hVar.K());
            jSONObject.put("network_list", hVar.L());
            jSONObject.put("request_network_num", hVar.M());
            jSONObject.put("handle_class", hVar.q());
        } catch (Throwable unused) {
        }
        a("network", jSONObject.toString());
    }

    public static void a(String str, com.anythink.core.common.f.h hVar, String str2, av avVar, int i, int i2) {
        a(str, hVar, str2, avVar, i, i2, null);
    }

    public static void a(String str, com.anythink.core.common.f.h hVar, String str2, av avVar, int i, int i2, List<String> list) {
        if (ATSDK.isNetworkLogDebug()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.anythink.expressad.foundation.d.r.ac, str2);
                jSONObject.put(com.anythink.expressad.videocommon.e.b.v, str);
                jSONObject.put("adtype", hVar.ak());
                jSONObject.put("adsourceId", avVar.u());
                jSONObject.put("networkFirmId", avVar.d());
                jSONObject.put("content", hVar.O());
                jSONObject.put("hourly_frequency", i);
                jSONObject.put("hourly_limit", avVar.g());
                jSONObject.put("daily_frequency", i2);
                jSONObject.put("daily_limit", avVar.f());
                jSONObject.put("pacing_limit", avVar.t());
                jSONObject.put("request_fail_interval", avVar.H());
                jSONObject.put("filter_source_ids", list != null ? list : "");
                a("anythink_network", jSONObject.toString(), true);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, String str2) {
        if (ATSDK.isNetworkLogDebug()) {
            a("anythink_".concat(String.valueOf(str)), str2, false);
        }
    }

    public static void a(String str, String str2, String str3, av avVar) {
        if (ATSDK.isNetworkLogDebug()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NativeAdvancedJsUtils.p, h.n.B);
                jSONObject.put(com.anythink.expressad.foundation.d.r.ah, str);
                jSONObject.put(com.anythink.expressad.videocommon.e.b.v, str2);
                jSONObject.put("adtype", str3);
                jSONObject.put("adsourceId", avVar.u());
                jSONObject.put("networkFirmId", avVar.d());
                jSONObject.put("content", avVar.h());
                jSONObject.put("msg", avVar.A());
                a(a, jSONObject.toString(), TextUtils.equals(h.n.m, str));
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(String str, String str2, String str3, String str4) {
        if (ATSDK.isNetworkLogDebug()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NativeAdvancedJsUtils.p, h.n.C);
                jSONObject.put(com.anythink.expressad.foundation.d.r.ah, str);
                jSONObject.put(com.anythink.expressad.videocommon.e.b.v, str2);
                jSONObject.put("adtype", str3);
                jSONObject.put("errorMsg", str4);
                a("anythink_network", jSONObject.toString(), TextUtils.equals(h.n.m, str));
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        String str6;
        if (ATSDK.isNetworkLogDebug()) {
            str2.hashCode();
            switch (str2) {
                case "0":
                    str6 = h.n.r;
                    break;
                case "1":
                    str6 = h.n.q;
                    break;
                case "2":
                    str6 = h.n.o;
                    break;
                case "3":
                    str6 = h.n.p;
                    break;
                case "4":
                    str6 = h.n.s;
                    break;
                default:
                    str6 = "";
                    break;
            }
            a(str, str6, str3, str4, str5, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        String str6;
        if (ATSDK.isNetworkLogDebug()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.anythink.expressad.videocommon.e.b.v, str);
                jSONObject.put("adtype", str2);
                jSONObject.put("api", str3);
                jSONObject.put(com.anythink.expressad.foundation.d.r.ah, str4);
                jSONObject.put(com.anythink.expressad.foundation.d.r.ac, str5);
                if (z) {
                    if (!TextUtils.isEmpty(str)) {
                        Map<String, Object> mapB = com.anythink.core.common.u.a().b(str);
                        if (mapB.size() > 0) {
                            String str7 = "";
                            for (Map.Entry<String, Object> entry : mapB.entrySet()) {
                                str7 = str7 + "key=" + entry.getKey() + ",value=" + entry.getValue().toString() + ";";
                            }
                            str6 = "[" + str7 + "]";
                        } else {
                            str6 = "";
                        }
                        jSONObject.put(g.a.h, str6);
                    }
                }
                StringBuilder sb = new StringBuilder("anythink_network");
                sb.append(com.anythink.core.common.b.n.a().v() ? "(DebuggerMode)" : "");
                Log.i(sb.toString(), jSONObject.toString());
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, String str2, boolean z) {
        String property = System.getProperty("line.separator");
        try {
            if (str2.startsWith("{")) {
                str2 = new JSONObject(str2).toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        String str3 = "╔═══════════════════════════════════════════════════════════════════════════════════════";
        for (String str4 : str2.split(property)) {
            str3 = (str3 + "\n") + "║ " + str4;
        }
        String str5 = str3 + "\n╚═══════════════════════════════════════════════════════════════════════════════════════";
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(com.anythink.core.common.b.n.a().v() ? "(DebuggerMode)" : "");
            Log.e(sb.toString(), " \n".concat(String.valueOf(str5)));
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(com.anythink.core.common.b.n.a().v() ? "(DebuggerMode)" : "");
        Log.i(sb2.toString(), " \n".concat(String.valueOf(str5)));
    }

    public static void b(String str, String str2, String str3, String str4, String str5) {
        a(str, str2, str3, str4, str5, false);
    }
}
