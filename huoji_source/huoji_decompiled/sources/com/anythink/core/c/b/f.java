package com.anythink.core.c.b;

import android.text.TextUtils;
import com.anythink.core.c.b.e;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.u;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final double a = -1.0d;
    private static final String b = "UserValueCalculator";
    private static final String[] c = {"MAX", "MIN", "AVG", "SUM", "COUNT"};
    private static final String[] d = {"=", ">", "<", "!=", ">=", "<="};
    private static final String[] e = {"OR", "AND"};
    private static final String[] f = {"DESC", "ASC"};
    private final e g;

    public f(e eVar) {
        this.g = eVar;
    }

    private static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", 2);
            jSONObject.put("q_f", "price");
            JSONArray jSONArray = new JSONArray();
            jSONArray.put("type");
            jSONObject.put("w_c_f", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0);
            jSONObject.put("w_c_o", jSONArray2);
            JSONArray jSONArray3 = new JSONArray();
            jSONArray3.put("4");
            jSONObject.put("w_c_v", jSONArray3);
            jSONObject.put("o_f", e.a.i);
            jSONObject.put("o", 0);
            jSONObject.put("l", 3);
        } catch (JSONException e2) {
            e2.getMessage();
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:14|(1:16)(1:17)|18|19|(1:52)(27:116|25|(9:28|29|118|30|(1:36)(1:32)|37|(1:124)(2:42|121)|43|26)|120|44|45|112|54|(2:56|57)(1:58)|114|59|(1:61)|68|(1:73)(1:72)|74|(1:76)|77|(3:79|(1:81)|82)|83|(3:85|(1:87)|88)|89|(1:91)|92|93|111|94|(2:102|125)(3:100|101|105))|53|112|54|(0)(0)|114|59|(0)|68|(17:70|73|74|(0)|77|(0)|83|(0)|89|(0)|92|93|111|94|(2:96|98)|102|125)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0143, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0145, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0146, code lost:
    
        r7 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0148, code lost:
    
        new java.lang.StringBuilder("get order by sql failed: ").append(r0.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0115 A[Catch: Exception -> 0x0145, TRY_LEAVE, TryCatch #2 {Exception -> 0x0145, blocks: (B:54:0x0109, B:56:0x0115), top: B:112:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012c A[Catch: Exception -> 0x0143, TRY_LEAVE, TryCatch #3 {Exception -> 0x0143, blocks: (B:59:0x0123, B:61:0x012c), top: B:114:0x0123 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015c A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x0021, B:6:0x0027, B:10:0x0037, B:11:0x003b, B:14:0x0045, B:16:0x004a, B:18:0x004f, B:23:0x0077, B:50:0x00f6, B:68:0x0156, B:70:0x015c, B:72:0x0162, B:74:0x016f, B:76:0x017a, B:77:0x019a, B:79:0x01a0, B:81:0x01a6, B:82:0x01a9, B:83:0x01ac, B:85:0x01b2, B:87:0x01b8, B:88:0x01bb, B:89:0x01be, B:91:0x01db, B:92:0x01ed, B:67:0x0148), top: B:109:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017a A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x0021, B:6:0x0027, B:10:0x0037, B:11:0x003b, B:14:0x0045, B:16:0x004a, B:18:0x004f, B:23:0x0077, B:50:0x00f6, B:68:0x0156, B:70:0x015c, B:72:0x0162, B:74:0x016f, B:76:0x017a, B:77:0x019a, B:79:0x01a0, B:81:0x01a6, B:82:0x01a9, B:83:0x01ac, B:85:0x01b2, B:87:0x01b8, B:88:0x01bb, B:89:0x01be, B:91:0x01db, B:92:0x01ed, B:67:0x0148), top: B:109:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a0 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x0021, B:6:0x0027, B:10:0x0037, B:11:0x003b, B:14:0x0045, B:16:0x004a, B:18:0x004f, B:23:0x0077, B:50:0x00f6, B:68:0x0156, B:70:0x015c, B:72:0x0162, B:74:0x016f, B:76:0x017a, B:77:0x019a, B:79:0x01a0, B:81:0x01a6, B:82:0x01a9, B:83:0x01ac, B:85:0x01b2, B:87:0x01b8, B:88:0x01bb, B:89:0x01be, B:91:0x01db, B:92:0x01ed, B:67:0x0148), top: B:109:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b2 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x0021, B:6:0x0027, B:10:0x0037, B:11:0x003b, B:14:0x0045, B:16:0x004a, B:18:0x004f, B:23:0x0077, B:50:0x00f6, B:68:0x0156, B:70:0x015c, B:72:0x0162, B:74:0x016f, B:76:0x017a, B:77:0x019a, B:79:0x01a0, B:81:0x01a6, B:82:0x01a9, B:83:0x01ac, B:85:0x01b2, B:87:0x01b8, B:88:0x01bb, B:89:0x01be, B:91:0x01db, B:92:0x01ed, B:67:0x0148), top: B:109:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01db A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x0021, B:6:0x0027, B:10:0x0037, B:11:0x003b, B:14:0x0045, B:16:0x004a, B:18:0x004f, B:23:0x0077, B:50:0x00f6, B:68:0x0156, B:70:0x015c, B:72:0x0162, B:74:0x016f, B:76:0x017a, B:77:0x019a, B:79:0x01a0, B:81:0x01a6, B:82:0x01a9, B:83:0x01ac, B:85:0x01b2, B:87:0x01b8, B:88:0x01bb, B:89:0x01be, B:91:0x01db, B:92:0x01ed, B:67:0x0148), top: B:109:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final double a(int i, String str) {
        String str2;
        String strConcat;
        String strConcat2;
        String strConcat3;
        String string;
        String str3;
        double d2;
        int iOptInt;
        int iOptInt2;
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        JSONObject jSONObject = null;
        if (aVarB != null) {
            try {
                JSONObject jSONObjectP = aVarB.P();
                if (jSONObjectP != null) {
                    jSONObject = jSONObjectP.getJSONObject(String.valueOf(i));
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (jSONObject == null) {
            jSONObject = a();
        }
        int i2 = jSONObject.getInt("f");
        String str4 = "";
        if (i2 >= 0) {
            String[] strArr = c;
            String str5 = i2 < strArr.length ? strArr[i2] : "";
            String string2 = jSONObject.getString("q_f");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("w_c_f");
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("w_c_o");
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("w_c_v");
            JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("w_o");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray.length() <= 0) {
                str2 = "";
            } else {
                try {
                    StringBuilder sb = new StringBuilder();
                    int i3 = 0;
                    while (i3 < jSONArrayOptJSONArray.length()) {
                        String string3 = jSONArrayOptJSONArray.getString(i3);
                        int i4 = jSONArrayOptJSONArray2.getInt(i3);
                        str2 = str4;
                        try {
                            String string4 = jSONArrayOptJSONArray3.getString(i3);
                            sb.append(string3);
                            sb.append(d[i4]);
                            if (u.a((CharSequence) string4) || string4.startsWith("strftime")) {
                                sb.append(string4);
                            } else {
                                sb.append("'");
                                sb.append(string4);
                                sb.append("'");
                            }
                            if (i3 != jSONArrayOptJSONArray.length() - 1 && jSONArrayOptJSONArray4 != null && i3 < jSONArrayOptJSONArray4.length()) {
                                int i5 = jSONArrayOptJSONArray4.getInt(i3);
                                sb.append(o4.OooO00o.OooO0Oo);
                                sb.append(e[i5]);
                                sb.append(o4.OooO00o.OooO0Oo);
                            }
                            i3++;
                            str4 = str2;
                        } catch (Exception e3) {
                            e = e3;
                            new StringBuilder("get where sql failed: ").append(e.getMessage());
                            strConcat = str2;
                            String strOptString = jSONObject.optString("o_f");
                            if (!TextUtils.isEmpty(strOptString)) {
                            }
                            iOptInt2 = jSONObject.optInt("o", -1);
                            if (iOptInt2 != -1) {
                            }
                            if (jSONObject.isNull("l")) {
                            }
                            new StringBuilder("calculateWithSql failed: ").append(e.getMessage());
                            return -1.0d;
                        }
                    }
                    str2 = str4;
                    strConcat = "WHERE ".concat(String.valueOf(sb));
                } catch (Exception e4) {
                    e = e4;
                    str2 = str4;
                }
                String strOptString2 = jSONObject.optString("o_f");
                strConcat2 = !TextUtils.isEmpty(strOptString2) ? "ORDER BY ".concat(String.valueOf(strOptString2)) : str2;
                iOptInt2 = jSONObject.optInt("o", -1);
                if (iOptInt2 != -1) {
                    strConcat2 = strConcat2 + o4.OooO00o.OooO0Oo + f[iOptInt2];
                }
                strConcat3 = (jSONObject.isNull("l") || (iOptInt = jSONObject.optInt("l")) <= 0) ? str2 : "LIMIT ".concat(String.valueOf(iOptInt));
                StringBuilder sb2 = new StringBuilder();
                if (!TextUtils.isEmpty(strConcat)) {
                    sb2.append(strConcat);
                    sb2.append(o4.OooO00o.OooO0Oo);
                    sb2.append("AND ");
                    sb2.append("placement_id");
                    sb2.append("=");
                    sb2.append("'");
                    sb2.append(str);
                    sb2.append("'");
                }
                if (!TextUtils.isEmpty(strConcat2)) {
                    if (sb2.length() > 0) {
                        sb2.append(o4.OooO00o.OooO0Oo);
                    }
                    sb2.append(strConcat2);
                }
                if (!TextUtils.isEmpty(strConcat3)) {
                    if (sb2.length() > 0) {
                        sb2.append(o4.OooO00o.OooO0Oo);
                    }
                    sb2.append(strConcat3);
                }
                string = sb2.toString();
                str3 = "SELECT " + string2 + " FROM user_value_placement";
                if (!TextUtils.isEmpty(string)) {
                    str3 = str3 + o4.OooO00o.OooO0Oo + string;
                }
                try {
                    double[] dArrA = this.g.a(new String[]{str5 + "(" + string2 + ")", "count(*)"}, "(" + str3 + ")");
                    d2 = dArrA[1];
                    if (d2 > 0.0d || (!jSONObject.isNull("l") && d2 < jSONObject.optInt("l"))) {
                        return -1.0d;
                    }
                    double d3 = dArrA[0];
                    return d3;
                } catch (Exception e5) {
                    e = e5;
                }
            }
            strConcat = str2;
            String strOptString22 = jSONObject.optString("o_f");
            if (!TextUtils.isEmpty(strOptString22)) {
            }
            iOptInt2 = jSONObject.optInt("o", -1);
            if (iOptInt2 != -1) {
            }
            if (jSONObject.isNull("l")) {
                StringBuilder sb22 = new StringBuilder();
                if (!TextUtils.isEmpty(strConcat)) {
                }
                if (!TextUtils.isEmpty(strConcat2)) {
                }
                if (!TextUtils.isEmpty(strConcat3)) {
                }
                string = sb22.toString();
                str3 = "SELECT " + string2 + " FROM user_value_placement";
                if (!TextUtils.isEmpty(string)) {
                }
                double[] dArrA2 = this.g.a(new String[]{str5 + "(" + string2 + ")", "count(*)"}, "(" + str3 + ")");
                d2 = dArrA2[1];
                if (d2 > 0.0d) {
                }
                return -1.0d;
            }
        }
        new StringBuilder("calculateWithSql failed: ").append(e.getMessage());
        return -1.0d;
    }
}
