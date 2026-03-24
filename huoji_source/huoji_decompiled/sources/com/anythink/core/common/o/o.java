package com.anythink.core.common.o;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.IExHandler;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final String A = "it_src";
    public static final String a = "platform";
    public static final String b = "os_vn";
    public static final String c = "os_vc";
    public static final String d = "package_name";
    public static final String e = "app_vn";
    public static final String f = "app_vc";
    public static final String g = "brand";
    public static final String h = "model";
    public static final String i = "screen";
    public static final String j = "network_type";
    public static final String k = "mnc";
    public static final String l = "mcc";
    public static final String m = "language";
    public static final String n = "timezone";
    public static final String o = "sdk_ver";
    public static final String p = "gp_ver";
    public static final String q = "nw_ver";
    public static final String r = "ua";
    public static final String s = "orient";
    public static final String t = "system";
    public static final String u = "android_id";
    public static final String v = "gaid";
    public static final String w = "channel";
    public static final String x = "sub_channel";
    public static final String y = "upid";
    public static final String z = "ps_id";

    public static JSONObject a() {
        JSONObject jSONObjectB = b();
        JSONObject jSONObjectC = c();
        try {
            jSONObjectB.put("app_id", com.anythink.core.common.b.n.a().o());
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectB.put(next, jSONObjectC.opt(next));
            }
        } catch (JSONException unused) {
        }
        return jSONObjectB;
    }

    private static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        Context contextF = com.anythink.core.common.b.n.a().f();
        try {
            jSONObject.put("platform", 1);
            jSONObject.put("os_vn", e.e());
            jSONObject.put("os_vc", e.d());
            jSONObject.put("package_name", e.l(contextF));
            jSONObject.put("app_vn", e.j(contextF));
            jSONObject.put("app_vc", e.i(contextF));
            jSONObject.put("brand", e.b());
            jSONObject.put("model", e.a());
            jSONObject.put("screen", e.k(contextF));
            jSONObject.put("network_type", String.valueOf(e.n(contextF)));
            jSONObject.put("mnc", e.c(contextF));
            jSONObject.put("mcc", e.b(contextF));
            jSONObject.put("language", e.f(contextF));
            jSONObject.put("timezone", e.c());
            jSONObject.put("sdk_ver", h.a());
            jSONObject.put("gp_ver", e.o(contextF));
            jSONObject.put("ua", e.i());
            jSONObject.put("orient", e.g(contextF));
            jSONObject.put("system", 1);
            if (!TextUtils.isEmpty(com.anythink.core.common.b.n.a().m())) {
                jSONObject.put("channel", com.anythink.core.common.b.n.a().m());
            }
            if (!TextUtils.isEmpty(com.anythink.core.common.b.n.a().n())) {
                jSONObject.put("sub_channel", com.anythink.core.common.b.n.a().n());
            }
            jSONObject.put("upid", com.anythink.core.common.b.n.a().x());
            jSONObject.put("ps_id", com.anythink.core.common.b.n.a().q());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static JSONObject c() {
        String strH;
        String str;
        Context contextF = com.anythink.core.common.b.n.a().f();
        JSONObject jSONObject = new JSONObject();
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(contextF).b(com.anythink.core.common.b.n.a().o());
        if (aVarB != null) {
            try {
                strH = aVarB.H();
            } catch (Exception unused) {
            }
        } else {
            strH = "";
        }
        boolean z3 = true;
        if (!TextUtils.isEmpty(strH)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strH);
                if (!jSONObject2.isNull("a")) {
                    if (jSONObject2.optInt("a") != 1) {
                        z3 = false;
                    }
                }
            } catch (Exception unused2) {
            }
        }
        jSONObject.put("android_id", z3 ? e.d(contextF) : "");
        jSONObject.put("gaid", e.f());
        IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
        if (iExHandlerB != null) {
            iExHandlerB.fillRequestData(jSONObject, aVarB);
            str = "1";
        } else {
            str = "0";
        }
        jSONObject.put("is_cn_sdk", str);
        String strM = e.m(contextF);
        jSONObject.put("it_src", TextUtils.isEmpty(strM) ? "" : strM);
        return jSONObject;
    }
}
