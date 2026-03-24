package com.anythink.core.common.h;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.api.ATPrivacyConfig;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.q;
import com.anythink.core.common.f.ay;
import com.anythink.core.common.f.s;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final String A = "it_src";
    public static final String B = "lat";
    public static final String C = "lon";
    public static final String D = "inst_wx";
    public static final String E = "mini_sdk";
    public static final String F = "ms_type";
    public static final String G = "device_set";
    public static final String H = "gdpr_cs";
    public static final String I = "abtest_id";
    public static final String J = "first_init_time";
    public static final String K = "days_from_first_init";
    public static final String L = "cs_cl";
    public static final String M = "is_ofm";
    public static final String N = "app_id";
    public static final String O = "api_ver";
    public static final String P = "custom";
    public static final String Q = "data";
    public static final String R = "tcp_tk_da_type";
    public static final String S = "ofl";
    public static final String T = "tcp_rate";
    public static final String U = "p";
    public static final String V = "p2";
    public static final String W = "sign";
    public static final String X = "common";
    public static final int Y = 1;
    public static final int Z = 2;
    public static final String a = "platform";
    public static final String aA = "is_sim";
    public static final String aB = "is_mul";
    public static final String aC = "is_vpn";
    public static final String aD = "is_charge";
    public static final String aE = "battery";
    public static final String aF = "http_able";
    public static final String aG = "bld_type";
    public static final String aH = "bld_tags";
    public static final String aI = "bld_user";
    public static final String aJ = "bld_radio";
    public static final String aK = "bld_bootloader";
    public static final String aL = "bld_hardware";
    public static final String aM = "bld_host";
    public static final String aN = "bld_codename";
    public static final String aO = "bld_incremental";
    public static final String aP = "bld_serial";
    public static final String aQ = "bld_display";
    public static final String aR = "bld_version_codes";
    public static final String aS = "bld_board";
    public static final String aT = "is_s";
    public static final int aa = 3;
    public static final String ab = "area_type";
    public static final String ac = "sp_http";
    public static final String ad = "os_fw";
    public static final String ae = "is_test";
    public static final String af = "user_num";
    public static final String ag = "cp_device_id";
    public static final String ah = "cp_pl_id";
    public static int ai = -1;
    public static int aj = -1;
    public static final String ak = "al_it_apil";
    public static final String al = "wx_data";
    public static final String am = "cached";
    public static final String an = "cached";
    public static final String ao = "n_cache";
    public static final String ap = "get_1st_rl";
    public static final String aq = "value_d";
    public static final String ar = "pl_type";
    public static final String as = "amazon_id";
    public static final String at = "amazon_lat";
    public static final String au = "t_mem";
    public static final String av = "c_num";
    public static final String aw = "t_store";
    public static final String ax = "cpu";
    public static final String ay = "isroot";
    public static final String az = "isagent";
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
        return a(com.anythink.core.common.b.n.a().l());
    }

    public static JSONObject a(int i2) {
        List<s> listN;
        JSONObject jSONObjectAr;
        com.anythink.core.common.o.e.r(com.anythink.core.common.b.n.a().f());
        JSONObject jSONObject = new JSONObject();
        Context contextF = com.anythink.core.common.b.n.a().f();
        try {
            jSONObject.put("platform", 1);
            jSONObject.put("os_vn", com.anythink.core.common.o.e.e());
            jSONObject.put("os_vc", com.anythink.core.common.o.e.d());
            jSONObject.put("package_name", com.anythink.core.common.o.e.l(contextF));
            jSONObject.put("app_vn", com.anythink.core.common.o.e.j(contextF));
            jSONObject.put("app_vc", com.anythink.core.common.o.e.i(contextF));
            jSONObject.put("brand", com.anythink.core.common.o.e.b());
            jSONObject.put("model", com.anythink.core.common.o.e.a());
            jSONObject.put("screen", com.anythink.core.common.o.e.k(contextF));
            jSONObject.put("network_type", com.anythink.core.common.o.e.n(contextF));
            jSONObject.put("mnc", com.anythink.core.common.o.e.c(contextF));
            jSONObject.put("mcc", com.anythink.core.common.o.e.b(contextF));
            jSONObject.put("language", com.anythink.core.common.o.e.f(contextF));
            jSONObject.put("timezone", com.anythink.core.common.o.e.c());
            jSONObject.put("sdk_ver", com.anythink.core.common.o.h.a());
            jSONObject.put("gp_ver", com.anythink.core.common.o.e.o(contextF));
            jSONObject.put("ua", com.anythink.core.common.o.e.i());
            jSONObject.put("orient", com.anythink.core.common.o.e.g(contextF));
            jSONObject.put("system", 1);
            if (!TextUtils.isEmpty(com.anythink.core.common.b.n.a().m())) {
                jSONObject.put("channel", com.anythink.core.common.b.n.a().m());
            }
            if (!TextUtils.isEmpty(com.anythink.core.common.b.n.a().n())) {
                jSONObject.put("sub_channel", com.anythink.core.common.b.n.a().n());
            }
            String strC = "";
            jSONObject.put("upid", q.a(contextF).b() ? com.anythink.core.common.b.n.a().x() : "");
            jSONObject.put("ps_id", com.anythink.core.common.b.n.a().q());
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(contextF).b(com.anythink.core.common.b.n.a().o());
            if (aVarB != null) {
                if (!TextUtils.isEmpty(aVarB.C())) {
                    strC = aVarB.C();
                }
                jSONObject.put(I, strC);
            }
            jSONObject.put(J, com.anythink.core.common.b.n.a().g());
            jSONObject.put(K, com.anythink.core.common.b.n.a().h());
            StringBuilder sb = new StringBuilder();
            sb.append(com.anythink.core.common.b.n.a().d());
            sb.append(q.a(contextF).a());
            jSONObject.put(H, sb.toString());
            if (com.anythink.core.common.b.n.a().i() == 1) {
                jSONObject.put(M, 1);
            }
            jSONObject.put(ac, com.anythink.core.common.b.n.a().C() ? com.anythink.core.common.b.n.a().D() ? "1" : "3" : com.anythink.core.common.b.n.a().D() ? "2" : "4");
            IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
            if (iExHandlerB != null) {
                iExHandlerB.fillRequestDeviceData(jSONObject, i2);
            }
            String strJ = com.anythink.core.common.o.e.j();
            if (!TextUtils.isEmpty(strJ)) {
                jSONObject.put(ad, Integer.parseInt(strJ));
            }
            if ((i2 & 4) == 4) {
                try {
                    com.anythink.core.d.a aVarB2 = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
                    if (aVarB2 != null && (jSONObjectAr = aVarB2.ar()) != null) {
                        jSONObject.put("a_c", jSONObjectAr);
                    }
                } catch (Exception unused) {
                }
            }
            if ((i2 & 16) == 16 && (listN = com.anythink.core.common.o.e.n()) != null && listN.size() > 0) {
                for (int i3 = 0; i3 < listN.size(); i3++) {
                    s sVar = listN.get(i3);
                    if (sVar != null && !TextUtils.isEmpty(sVar.b())) {
                        jSONObject.put(sVar.a(), sVar.b());
                    }
                }
            }
            if ((i2 & 64) == 64) {
                jSONObject.put("isroot", com.anythink.core.common.o.e.r());
                jSONObject.put("cpu", com.anythink.core.common.o.e.q());
                jSONObject.put("isagent", com.anythink.core.common.o.e.u(contextF));
                jSONObject.put(aA, com.anythink.core.common.o.e.w(contextF));
                jSONObject.put(aB, com.anythink.core.common.o.e.x(contextF));
                jSONObject.put(aC, com.anythink.core.common.o.e.v(contextF));
                jSONObject.put(aD, com.anythink.core.common.o.e.y(contextF));
                jSONObject.put("battery", com.anythink.core.common.o.e.z(contextF));
                jSONObject.put(aF, com.anythink.core.common.o.e.s());
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    public static JSONObject a(String str) {
        return a(com.anythink.core.common.b.n.a().d(str));
    }

    public static JSONObject a(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str : map.keySet()) {
                    Object obj = map.get(str);
                    if (obj != null) {
                        try {
                            jSONObject.put(str, obj.toString());
                        } catch (Throwable unused) {
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            return jSONObject;
        } catch (Throwable unused3) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.json.JSONObject] */
    private static void a(Context context, JSONObject jSONObject) throws JSONException {
        int i2 = ai;
        if (i2 == -1) {
            boolean zC = com.anythink.core.common.o.h.c(context);
            boolean zB = com.anythink.core.common.o.h.b(context);
            ?? r3 = zB ? 2 : zC;
            if (zC && zB) {
                r3 = 3;
            }
            if (r3 > 0) {
                jSONObject.put(F, r3);
            }
            ai = r3;
        } else if (i2 > 0) {
            jSONObject.put(F, i2);
        }
        int i3 = aj;
        if (i3 != -1) {
            if (i3 == 1) {
                jSONObject.put(E, i3);
            }
        } else {
            boolean zC2 = com.anythink.core.common.o.h.c();
            if (zC2) {
                jSONObject.put(E, 1);
            }
            aj = zC2 ? 1 : 0;
        }
    }

    public static void a(JSONObject jSONObject) {
        try {
            ay ayVarJ = com.anythink.core.common.b.n.a().J();
            JSONObject jSONObject2 = new JSONObject();
            int i2 = 1;
            if (ayVarJ.b() != 1) {
                i2 = 0;
            }
            jSONObject2.put("has_sdk", i2);
            jSONObject2.put("sdk_ver", String.valueOf(ayVarJ.c()));
            jSONObject2.put("sdk_api_ver", String.valueOf(ayVarJ.d()));
            jSONObject2.put("open_app_id", com.anythink.core.common.o.e.l());
            jSONObject.put(al, jSONObject2);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.anythink.core.api.IExHandler] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r5v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject b(int i2) {
        String strH;
        JSONObject jSONObject;
        String str;
        Context contextF = com.anythink.core.common.b.n.a().f();
        ?? jSONObject2 = new JSONObject();
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(contextF).b(com.anythink.core.common.b.n.a().o());
        if (aVarB != null) {
            try {
                strH = aVarB.H();
            } catch (Exception unused) {
            }
        } else {
            strH = "";
        }
        if (!TextUtils.isEmpty(strH)) {
            try {
                jSONObject = new JSONObject(strH);
            } catch (Exception unused2) {
            }
            if (!jSONObject.isNull("a")) {
                boolean z3 = jSONObject.optInt("a") == 1;
                jSONObject2.put("android_id", z3 ? com.anythink.core.common.o.e.d(contextF) : "");
                jSONObject2.put("gaid", com.anythink.core.common.o.e.f());
                ?? B2 = com.anythink.core.common.b.n.a().b();
                if (B2 != 0) {
                    B2.fillRequestData(jSONObject2, aVarB, i2);
                    str = "1";
                } else {
                    str = "0";
                }
                jSONObject2.put("is_cn_sdk", str);
                String strM = com.anythink.core.common.o.e.m(contextF);
                Location locationR = com.anythink.core.common.b.n.a().r();
                if (locationR != null) {
                    jSONObject2.put("lat", locationR.getLatitude());
                    jSONObject2.put(C, locationR.getLongitude());
                }
                String strS = com.anythink.core.common.b.n.a().s();
                if (!TextUtils.isEmpty(strS)) {
                    jSONObject2.put(D, Integer.parseInt(strS));
                }
                jSONObject2.put("it_src", TextUtils.isEmpty(strM) ? "" : strM);
                jSONObject2.put("area_type", h.f.a);
                int i3 = ai;
                if (i3 == -1) {
                    boolean zC = com.anythink.core.common.o.h.c(contextF);
                    boolean zB = com.anythink.core.common.o.h.b(contextF);
                    ?? r5 = zB ? 2 : zC;
                    if (zC && zB) {
                        r5 = 3;
                    }
                    if (r5 > 0) {
                        jSONObject2.put(F, r5);
                    }
                    ai = r5;
                } else if (i3 > 0) {
                    jSONObject2.put(F, i3);
                }
                int i4 = aj;
                if (i4 == -1) {
                    boolean zC2 = com.anythink.core.common.o.h.c();
                    if (zC2) {
                        jSONObject2.put(E, 1);
                    }
                    aj = zC2 ? 1 : 0;
                } else if (i4 == 1) {
                    jSONObject2.put(E, i4);
                }
                ATPrivacyConfig aTPrivacyConfigI = com.anythink.core.common.b.n.a().I();
                if (aTPrivacyConfigI != null) {
                    String devGaid = aTPrivacyConfigI.getDevGaid();
                    String devImei = aTPrivacyConfigI.getDevImei();
                    String devOaid = aTPrivacyConfigI.getDevOaid();
                    JSONObject jSONObject3 = new JSONObject();
                    if (!TextUtils.isEmpty(devGaid)) {
                        jSONObject3.put("set_gaid", devGaid);
                    }
                    if (!TextUtils.isEmpty(devImei)) {
                        jSONObject3.put("set_imei", devImei);
                    }
                    if (!TextUtils.isEmpty(devOaid)) {
                        jSONObject3.put("set_oaid", devOaid);
                    }
                    jSONObject2.put(G, jSONObject3);
                }
                Map<String, Object> mapL = com.anythink.core.common.b.n.a().l();
                try {
                    Object obj = mapL.get(ATCustomRuleKeys.USER_NUMBER);
                    if (obj != null) {
                        jSONObject2.put(af, Long.parseLong(obj.toString()));
                    }
                } catch (Throwable unused3) {
                }
                try {
                    Object obj2 = mapL.get(ATCustomRuleKeys.USER_DEVICE_ID);
                    if (obj2 != null) {
                        jSONObject2.put(ag, obj2.toString());
                    }
                } catch (Throwable unused4) {
                }
                String strO = com.anythink.core.common.o.e.o();
                if (!TextUtils.isEmpty(strO)) {
                    jSONObject2.put("amazon_id", strO);
                }
                int iP = com.anythink.core.common.o.e.p();
                if (iP > 0) {
                    jSONObject2.put(at, iP);
                }
                if ((i2 & 32) == 32) {
                    if (com.anythink.core.common.i.e.a().f() > 0) {
                        jSONObject2.put("t_mem", com.anythink.core.common.i.e.a().f());
                    }
                    if (com.anythink.core.common.i.e.a().g() > 0) {
                        jSONObject2.put("c_num", com.anythink.core.common.i.e.a().g());
                    }
                    if (com.anythink.core.common.i.e.a().h() > 0) {
                        jSONObject2.put("t_store", com.anythink.core.common.i.e.a().h());
                    }
                }
                if ((i2 & 64) == 64) {
                    jSONObject2.put("bld_type", com.anythink.core.common.o.e.t());
                    jSONObject2.put("bld_tags", com.anythink.core.common.o.e.u());
                    jSONObject2.put("bld_user", com.anythink.core.common.o.e.v());
                    jSONObject2.put("bld_radio", com.anythink.core.common.o.e.w());
                    jSONObject2.put("bld_bootloader", com.anythink.core.common.o.e.x());
                    jSONObject2.put("bld_hardware", com.anythink.core.common.o.e.y());
                    jSONObject2.put("bld_host", com.anythink.core.common.o.e.z());
                    jSONObject2.put("bld_codename", com.anythink.core.common.o.e.A());
                    jSONObject2.put("bld_incremental", com.anythink.core.common.o.e.B());
                    jSONObject2.put("bld_serial", com.anythink.core.common.o.e.C());
                    jSONObject2.put("bld_display", com.anythink.core.common.o.e.D());
                    jSONObject2.put("bld_version_codes", com.anythink.core.common.o.e.E());
                    jSONObject2.put("bld_board", com.anythink.core.common.o.e.F());
                }
            }
        }
        return jSONObject2;
    }

    private static void b(JSONObject jSONObject) throws JSONException {
        ATPrivacyConfig aTPrivacyConfigI = com.anythink.core.common.b.n.a().I();
        if (aTPrivacyConfigI != null) {
            String devGaid = aTPrivacyConfigI.getDevGaid();
            String devImei = aTPrivacyConfigI.getDevImei();
            String devOaid = aTPrivacyConfigI.getDevOaid();
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(devGaid)) {
                jSONObject2.put("set_gaid", devGaid);
            }
            if (!TextUtils.isEmpty(devImei)) {
                jSONObject2.put("set_imei", devImei);
            }
            if (!TextUtils.isEmpty(devOaid)) {
                jSONObject2.put("set_oaid", devOaid);
            }
            jSONObject.put(G, jSONObject2);
        }
    }
}
