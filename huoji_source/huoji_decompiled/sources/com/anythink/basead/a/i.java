package com.anythink.basead.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.al;
import com.anythink.core.common.h.k;
import java.net.URLEncoder;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    private static String a(String str, com.anythink.basead.c.b bVar) {
        String str2 = bVar.a;
        if (str2 == null) {
            str2 = "";
        }
        return str.replaceAll("\\{__CLICK_ID__\\}", str2);
    }

    private static String a(String str, com.anythink.basead.c.i iVar) {
        String strEncode;
        String strEncode2 = MessageFormatter.DELIM_STR;
        com.anythink.basead.c.a aVar = iVar.g;
        int i = iVar.e;
        int i2 = iVar.f;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("down_x", aVar.e);
            jSONObject.put("down_y", aVar.f);
            jSONObject.put("up_x", aVar.g);
            jSONObject.put("up_y", aVar.h);
        } catch (JSONException unused) {
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            float f = i;
            jSONObject2.put("down_x", (int) ((aVar.e / f) * 1000.0f));
            float f2 = i2;
            jSONObject2.put("down_y", (int) ((aVar.e / f2) * 1000.0f));
            jSONObject2.put("up_x", (int) ((aVar.g / f) * 1000.0f));
            jSONObject2.put("up_y", (int) ((aVar.h / f2) * 1000.0f));
        } catch (JSONException unused2) {
        }
        try {
            strEncode = URLEncoder.encode(jSONObject.toString(), "utf-8");
        } catch (Throwable th) {
            th.printStackTrace();
            strEncode = MessageFormatter.DELIM_STR;
        }
        try {
            strEncode2 = URLEncoder.encode(jSONObject2.toString(), "utf-8");
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        int i3 = aVar.i ? 1 : 2;
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.a);
        String strReplaceAll = str.replaceAll("\\{__DOWN_X__\\}", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(aVar.b);
        String strReplaceAll2 = strReplaceAll.replaceAll("\\{__DOWN_Y__\\}", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(aVar.c);
        String strReplaceAll3 = strReplaceAll2.replaceAll("\\{__UP_X__\\}", sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(aVar.d);
        String strReplaceAll4 = strReplaceAll3.replaceAll("\\{__UP_Y__\\}", sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(aVar.e);
        String strReplaceAll5 = strReplaceAll4.replaceAll("\\{__RE_DOWN_X__\\}", sb5.toString());
        StringBuilder sb6 = new StringBuilder();
        sb6.append(aVar.f);
        String strReplaceAll6 = strReplaceAll5.replaceAll("\\{__RE_DOWN_Y__\\}", sb6.toString());
        StringBuilder sb7 = new StringBuilder();
        sb7.append(aVar.g);
        String strReplaceAll7 = strReplaceAll6.replaceAll("\\{__RE_UP_X__\\}", sb7.toString());
        StringBuilder sb8 = new StringBuilder();
        sb8.append(aVar.h);
        String strReplaceAll8 = strReplaceAll7.replaceAll("\\{__RE_UP_Y__\\}", sb8.toString()).replaceAll("\\{ABSOLUTE_COORD\\}", strEncode).replaceAll("\\{RELATIVE_COORD\\}", strEncode2).replaceAll("\\{__DPLINK_TYPE__\\}", String.valueOf(i3));
        if (aVar.i) {
            strReplaceAll8 = strReplaceAll8.replaceAll("&apk_ptype=\\{apk_ptype\\}", "");
        }
        int i4 = aVar.j;
        return (i4 == -1 ? strReplaceAll8.replaceAll("&apk_ptype=\\{apk_ptype\\}", "") : strReplaceAll8.replaceAll("\\{apk_ptype\\}", String.valueOf(i4))).replaceAll("\\{opdptype\\}", aVar.i ? "1" : "0");
    }

    public static String a(String str, com.anythink.basead.c.i iVar, long j) {
        String string;
        String string2;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (iVar.g != null) {
            str = a(str, iVar);
        }
        com.anythink.basead.c.j jVar = iVar.h;
        if (jVar != null) {
            str = a(str, jVar);
        }
        com.anythink.basead.c.b bVar = iVar.i;
        if (bVar != null) {
            str = a(str, bVar);
        }
        Map<String, Object> map = iVar.l;
        if (map != null) {
            str = a(str, map);
        }
        long j2 = j / 1000;
        if (iVar.c == 0) {
            string = "__REQ_WIDTH__";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(iVar.c);
            string = sb.toString();
        }
        String strReplaceAll = str.replaceAll("\\{__REQ_WIDTH__\\}", string);
        if (iVar.d == 0) {
            string2 = "__REQ_HEIGHT__";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(iVar.d);
            string2 = sb2.toString();
        }
        String strReplaceAll2 = strReplaceAll.replaceAll("\\{__REQ_HEIGHT__\\}", string2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(iVar.e);
        String strReplaceAll3 = strReplaceAll2.replaceAll("\\{__WIDTH__\\}", sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(iVar.f);
        return strReplaceAll3.replaceAll("\\{__HEIGHT__\\}", sb4.toString()).replaceAll("\\{__TS__\\}", String.valueOf(j2)).replaceAll("\\{__TS_MSEC__\\}", String.valueOf(j)).replaceAll("\\{__END_TS__\\}", String.valueOf(j2)).replaceAll("\\{__END_TS_MSEC__\\}", String.valueOf(j)).replaceAll("\\{__PLAY_SEC__\\}", "0").replaceAll("\\{", "").replaceAll("\\}", "");
    }

    private static String a(String str, com.anythink.basead.c.j jVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(jVar.a);
        String strReplaceAll = str.replaceAll("\\{__VIDEO_TIME__\\}", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(jVar.b);
        String strReplaceAll2 = strReplaceAll.replaceAll("\\{__BEGIN_TIME__\\}", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(jVar.c);
        String strReplaceAll3 = strReplaceAll2.replaceAll("\\{__END_TIME__\\}", sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(jVar.d);
        String strReplaceAll4 = strReplaceAll3.replaceAll("\\{__PLAY_FIRST_FRAME__\\}", sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(jVar.e);
        String strReplaceAll5 = strReplaceAll4.replaceAll("\\{__PLAY_LAST_FRAME__\\}", sb5.toString());
        StringBuilder sb6 = new StringBuilder();
        sb6.append(jVar.l);
        String strReplaceAll6 = strReplaceAll5.replaceAll("\\{__SCENE__\\}", sb6.toString());
        StringBuilder sb7 = new StringBuilder();
        sb7.append(jVar.o);
        String strReplaceAll7 = strReplaceAll6.replaceAll("\\{__TYPE__\\}", sb7.toString());
        StringBuilder sb8 = new StringBuilder();
        sb8.append(jVar.r);
        String strReplaceAll8 = strReplaceAll7.replaceAll("\\{__BEHAVIOR__\\}", sb8.toString());
        StringBuilder sb9 = new StringBuilder();
        sb9.append(jVar.u);
        String strReplaceAll9 = strReplaceAll8.replaceAll("\\{__STATUS__\\}", sb9.toString());
        StringBuilder sb10 = new StringBuilder();
        sb10.append(jVar.h);
        String strReplaceAll10 = strReplaceAll9.replaceAll("\\{__PLAY_SEC__\\}", sb10.toString());
        StringBuilder sb11 = new StringBuilder();
        sb11.append(jVar.f / 1000);
        String strReplaceAll11 = strReplaceAll10.replaceAll("\\{__TS__\\}", sb11.toString());
        StringBuilder sb12 = new StringBuilder();
        sb12.append(jVar.f);
        String strReplaceAll12 = strReplaceAll11.replaceAll("\\{__TS_MSEC__\\}", sb12.toString());
        StringBuilder sb13 = new StringBuilder();
        sb13.append(jVar.g / 1000);
        String strReplaceAll13 = strReplaceAll12.replaceAll("\\{__END_TS__\\}", sb13.toString());
        StringBuilder sb14 = new StringBuilder();
        sb14.append(jVar.g);
        String strReplaceAll14 = strReplaceAll13.replaceAll("\\{__END_TS_MSEC__\\}", sb14.toString());
        StringBuilder sb15 = new StringBuilder();
        sb15.append(jVar.h / 1000);
        String strReplaceAll15 = strReplaceAll14.replaceAll("\\{__PLAY_SEC__\\}", sb15.toString());
        StringBuilder sb16 = new StringBuilder();
        sb16.append(jVar.h);
        return strReplaceAll15.replaceAll("\\{__PLAY_MSEC__\\}", sb16.toString());
    }

    private static String a(String str, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            try {
                String string = entry.getValue().toString();
                str = str.replace(key, string);
                StringBuilder sb = new StringBuilder("replaceAdxNoticeMap, replaceKey -> ");
                sb.append(key);
                sb.append(", replaceValue: ");
                sb.append(string);
            } catch (Throwable th) {
                new StringBuilder("replaceAdxNoticeMap, error: ").append(th.getMessage());
                th.printStackTrace();
            }
        }
        return str;
    }

    private static void a(int i, @NonNull com.anythink.basead.c.i iVar, aj ajVar, al alVar, Map<String, Object> map) {
        String strD;
        switch (i) {
            case 1:
                strD = alVar.D();
                break;
            case 2:
                strD = alVar.E();
                break;
            case 3:
                strD = alVar.F();
                break;
            case 4:
                strD = alVar.G();
                break;
            case 5:
                strD = alVar.H();
                break;
            case 6:
                strD = alVar.M();
                break;
            case 7:
                strD = alVar.N();
                break;
            case 8:
                strD = alVar.B();
                break;
            case 9:
                strD = alVar.C();
                break;
            case 10:
                strD = alVar.A();
                break;
            case 11:
                strD = alVar.I();
                break;
            case 12:
                strD = alVar.K();
                break;
            case 13:
                strD = alVar.L();
                break;
            case 14:
                strD = alVar.J();
                break;
            case 15:
                strD = alVar.aa();
                break;
            case 16:
                strD = alVar.ab();
                break;
            case 17:
                strD = alVar.ac();
                break;
            case 18:
                strD = alVar.O();
                break;
            case 19:
                strD = alVar.P();
                break;
            case 20:
                strD = alVar.ad();
                break;
            case 21:
                strD = alVar.Q();
                break;
            case 22:
            case 32:
            default:
                strD = "";
                break;
            case 23:
                strD = alVar.ae();
                break;
            case 24:
                strD = alVar.af();
                break;
            case 25:
                strD = alVar.ag();
                break;
            case 26:
                strD = alVar.ah();
                break;
            case 27:
                strD = alVar.ai();
                break;
            case 28:
                strD = alVar.ak();
                break;
            case 29:
                strD = alVar.aj();
                break;
            case 30:
                strD = alVar.al();
                break;
            case 31:
                strD = alVar.am();
                break;
            case 33:
                strD = alVar.an();
                break;
            case 34:
                strD = alVar.ao();
                break;
            case 35:
                strD = alVar.aq();
                break;
        }
        if (a(strD)) {
            return;
        }
        com.anythink.basead.g.f fVar = new com.anythink.basead.g.f(i, ajVar, strD, map);
        fVar.a(iVar.b);
        fVar.a(0, (k) null);
    }

    public static void a(int i, aj ajVar, @NonNull com.anythink.basead.c.i iVar) {
        String strD;
        String[] strArrH;
        al alVarAh = ajVar.ah();
        if (alVarAh == null) {
            return;
        }
        Map<String, Object> mapC = com.anythink.core.common.o.i.c(alVarAh.c());
        try {
            switch (i) {
                case 1:
                    strArrH = alVarAh.h();
                    break;
                case 2:
                    strArrH = alVarAh.i();
                    break;
                case 3:
                    strArrH = alVarAh.j();
                    break;
                case 4:
                    strArrH = alVarAh.k();
                    break;
                case 5:
                    strArrH = alVarAh.l();
                    break;
                case 6:
                    strArrH = alVarAh.q();
                    break;
                case 7:
                    strArrH = alVarAh.r();
                    break;
                case 8:
                    strArrH = alVarAh.f();
                    break;
                case 9:
                    strArrH = alVarAh.g();
                    break;
                case 10:
                    strArrH = alVarAh.d();
                    break;
                case 11:
                    strArrH = alVarAh.m();
                    break;
                case 12:
                    strArrH = alVarAh.o();
                    break;
                case 13:
                    strArrH = alVarAh.p();
                    break;
                case 14:
                    strArrH = alVarAh.n();
                    break;
                case 15:
                    strArrH = alVarAh.R();
                    break;
                case 16:
                    strArrH = alVarAh.S();
                    break;
                case 17:
                    strArrH = alVarAh.T();
                    break;
                case 18:
                    strArrH = alVarAh.s();
                    break;
                case 19:
                    strArrH = alVarAh.t();
                    break;
                case 20:
                    strArrH = alVarAh.U();
                    break;
                case 21:
                    strArrH = alVarAh.u();
                    break;
                case 22:
                default:
                    strArrH = null;
                    break;
                case 23:
                    strArrH = alVarAh.V();
                    break;
                case 24:
                    strArrH = alVarAh.W();
                    break;
                case 25:
                    strArrH = alVarAh.X();
                    break;
                case 26:
                    strArrH = alVarAh.Y();
                    break;
                case 27:
                    strArrH = alVarAh.Z();
                    break;
                case 28:
                    strArrH = alVarAh.w();
                    break;
                case 29:
                    strArrH = alVarAh.v();
                    break;
                case 30:
                    strArrH = alVarAh.x();
                    break;
                case 31:
                    strArrH = alVarAh.y();
                    break;
                case 32:
                    com.anythink.basead.c.j jVar = iVar.h;
                    Map<Integer, String[]> mapZ = alVarAh.z();
                    strArrH = (jVar != null && mapZ != null) ? mapZ.get(Integer.valueOf(jVar.i)) : null;
                    break;
                case 33:
                    strArrH = alVarAh.a();
                    break;
                case 34:
                    strArrH = alVarAh.b();
                    break;
                case 35:
                    strArrH = alVarAh.ap();
                    break;
                case 36:
                    strArrH = alVarAh.e();
                    break;
            }
            if (strArrH != null) {
                boolean zAa = (i == 8 || i == 9) ? ajVar.o().aa() : false;
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (String str : strArrH) {
                    com.anythink.basead.g.e eVar = new com.anythink.basead.g.e(i, a(str, iVar, jCurrentTimeMillis), ajVar, mapC);
                    eVar.a(zAa);
                    eVar.a(0, (k) null);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        switch (i) {
            case 1:
                strD = alVarAh.D();
                break;
            case 2:
                strD = alVarAh.E();
                break;
            case 3:
                strD = alVarAh.F();
                break;
            case 4:
                strD = alVarAh.G();
                break;
            case 5:
                strD = alVarAh.H();
                break;
            case 6:
                strD = alVarAh.M();
                break;
            case 7:
                strD = alVarAh.N();
                break;
            case 8:
                strD = alVarAh.B();
                break;
            case 9:
                strD = alVarAh.C();
                break;
            case 10:
                strD = alVarAh.A();
                break;
            case 11:
                strD = alVarAh.I();
                break;
            case 12:
                strD = alVarAh.K();
                break;
            case 13:
                strD = alVarAh.L();
                break;
            case 14:
                strD = alVarAh.J();
                break;
            case 15:
                strD = alVarAh.aa();
                break;
            case 16:
                strD = alVarAh.ab();
                break;
            case 17:
                strD = alVarAh.ac();
                break;
            case 18:
                strD = alVarAh.O();
                break;
            case 19:
                strD = alVarAh.P();
                break;
            case 20:
                strD = alVarAh.ad();
                break;
            case 21:
                strD = alVarAh.Q();
                break;
            case 22:
            case 32:
            default:
                strD = "";
                break;
            case 23:
                strD = alVarAh.ae();
                break;
            case 24:
                strD = alVarAh.af();
                break;
            case 25:
                strD = alVarAh.ag();
                break;
            case 26:
                strD = alVarAh.ah();
                break;
            case 27:
                strD = alVarAh.ai();
                break;
            case 28:
                strD = alVarAh.ak();
                break;
            case 29:
                strD = alVarAh.aj();
                break;
            case 30:
                strD = alVarAh.al();
                break;
            case 31:
                strD = alVarAh.am();
                break;
            case 33:
                strD = alVarAh.an();
                break;
            case 34:
                strD = alVarAh.ao();
                break;
            case 35:
                strD = alVarAh.aq();
                break;
        }
        if (a(strD)) {
            return;
        }
        com.anythink.basead.g.f fVar = new com.anythink.basead.g.f(i, ajVar, strD, mapC);
        fVar.a(iVar.b);
        fVar.a(0, (k) null);
    }

    private static void a(int i, aj ajVar, al alVar, Map<String, Object> map, @NonNull com.anythink.basead.c.i iVar) {
        String[] strArrH;
        try {
            switch (i) {
                case 1:
                    strArrH = alVar.h();
                    break;
                case 2:
                    strArrH = alVar.i();
                    break;
                case 3:
                    strArrH = alVar.j();
                    break;
                case 4:
                    strArrH = alVar.k();
                    break;
                case 5:
                    strArrH = alVar.l();
                    break;
                case 6:
                    strArrH = alVar.q();
                    break;
                case 7:
                    strArrH = alVar.r();
                    break;
                case 8:
                    strArrH = alVar.f();
                    break;
                case 9:
                    strArrH = alVar.g();
                    break;
                case 10:
                    strArrH = alVar.d();
                    break;
                case 11:
                    strArrH = alVar.m();
                    break;
                case 12:
                    strArrH = alVar.o();
                    break;
                case 13:
                    strArrH = alVar.p();
                    break;
                case 14:
                    strArrH = alVar.n();
                    break;
                case 15:
                    strArrH = alVar.R();
                    break;
                case 16:
                    strArrH = alVar.S();
                    break;
                case 17:
                    strArrH = alVar.T();
                    break;
                case 18:
                    strArrH = alVar.s();
                    break;
                case 19:
                    strArrH = alVar.t();
                    break;
                case 20:
                    strArrH = alVar.U();
                    break;
                case 21:
                    strArrH = alVar.u();
                    break;
                case 22:
                default:
                    strArrH = null;
                    break;
                case 23:
                    strArrH = alVar.V();
                    break;
                case 24:
                    strArrH = alVar.W();
                    break;
                case 25:
                    strArrH = alVar.X();
                    break;
                case 26:
                    strArrH = alVar.Y();
                    break;
                case 27:
                    strArrH = alVar.Z();
                    break;
                case 28:
                    strArrH = alVar.w();
                    break;
                case 29:
                    strArrH = alVar.v();
                    break;
                case 30:
                    strArrH = alVar.x();
                    break;
                case 31:
                    strArrH = alVar.y();
                    break;
                case 32:
                    com.anythink.basead.c.j jVar = iVar.h;
                    Map<Integer, String[]> mapZ = alVar.z();
                    strArrH = (jVar != null && mapZ != null) ? mapZ.get(Integer.valueOf(jVar.i)) : null;
                    break;
                case 33:
                    strArrH = alVar.a();
                    break;
                case 34:
                    strArrH = alVar.b();
                    break;
                case 35:
                    strArrH = alVar.ap();
                    break;
                case 36:
                    strArrH = alVar.e();
                    break;
            }
            if (strArrH != null) {
                boolean zAa = (i == 8 || i == 9) ? ajVar.o().aa() : false;
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (String str : strArrH) {
                    com.anythink.basead.g.e eVar = new com.anythink.basead.g.e(i, a(str, iVar, jCurrentTimeMillis), ajVar, map);
                    eVar.a(zAa);
                    eVar.a(0, (k) null);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return new JSONObject(str).length() <= 0;
    }
}
