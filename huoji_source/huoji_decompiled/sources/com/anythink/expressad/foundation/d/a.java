package com.anythink.expressad.foundation.d;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class a implements com.anythink.expressad.e.b, Serializable {
    private static final String a = "https://img.toponad.com/sdk/app-permissions.html?key=";
    private static String b = "app_name";
    private static String c = "perm_desc";
    private static String d = "ori_perm_desc";
    private static String e = "ori_perm_all";
    private static String f = "pri_url";
    private static String g = "upd_time";
    private static String h = "app_ver";
    private static String i = "dev_name";
    private String j;
    private String k;
    private ArrayList<String> l = new ArrayList<>(3);
    private ArrayList<String> m = new ArrayList<>(3);
    private ArrayList<String> n = new ArrayList<>(3);
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;

    private static a a(a aVar) {
        return aVar == null ? new a() : aVar;
    }

    public static a a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return a(new JSONObject(str));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static a a(JSONObject jSONObject) {
        StringBuilder sb;
        a aVarA = null;
        if (jSONObject.has(b)) {
            aVarA = a((a) null);
            aVarA.k = jSONObject.optString(b);
        }
        if (jSONObject.has(c)) {
            aVarA = a(aVarA);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(c);
            if (jSONArrayOptJSONArray != null) {
                aVarA.l = a(jSONArrayOptJSONArray);
                ArrayList<String> arrayList = aVarA.n;
                String string = a;
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    try {
                        if (jSONArrayOptJSONArray.get(i2) instanceof String) {
                            if (i2 == 0) {
                                sb = new StringBuilder();
                                sb.append(string);
                                sb.append(jSONArrayOptJSONArray.optString(i2));
                            } else {
                                sb = new StringBuilder();
                                sb.append(string);
                                sb.append(",");
                                sb.append(jSONArrayOptJSONArray.optString(i2));
                            }
                            string = sb.toString();
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                aVarA.o = string;
                aVarA.n = arrayList;
            }
        }
        if (jSONObject.has(d)) {
            aVarA = a(aVarA);
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(d);
            if (jSONArrayOptJSONArray2 != null) {
                aVarA.m = a(jSONArrayOptJSONArray2);
                ArrayList<String> arrayList2 = aVarA.n;
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    try {
                        Object obj = jSONArrayOptJSONArray2.get(i3);
                        if (obj instanceof String) {
                            arrayList2.add((String) obj);
                        }
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                aVarA.n = arrayList2;
            }
        }
        if (jSONObject.has(f)) {
            aVarA = a(aVarA);
            aVarA.p = jSONObject.optString(f);
        }
        if (jSONObject.has(g)) {
            aVarA = a(aVarA);
            aVarA.q = jSONObject.optString(g);
        }
        if (jSONObject.has(h)) {
            aVarA = a(aVarA);
            aVarA.r = jSONObject.optString(h);
        }
        if (jSONObject.has(i)) {
            aVarA = a(aVarA);
            aVarA.s = jSONObject.optString(i);
        }
        if (aVarA != null) {
            aVarA.j = jSONObject.toString();
        }
        return aVarA;
    }

    private static ArrayList<String> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.optString(i2));
        }
        return arrayList;
    }

    private void a(ArrayList<String> arrayList) {
        this.l = arrayList;
    }

    private void b(String str) {
        this.j = str;
    }

    private void b(ArrayList<String> arrayList) {
        this.m = arrayList;
    }

    private void c(String str) {
        this.o = str;
    }

    private void c(ArrayList<String> arrayList) {
        this.n = arrayList;
    }

    private static JSONArray d(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            jSONArray.put(arrayList.get(i2));
        }
        return jSONArray;
    }

    private void d(String str) {
        this.k = str;
    }

    private void e(String str) {
        this.p = str;
    }

    private void f(String str) {
        this.q = str;
    }

    private void g(String str) {
        this.r = str;
    }

    private String h() {
        return this.j;
    }

    private void h(String str) {
        this.s = str;
    }

    private ArrayList<String> i() {
        return this.l;
    }

    private ArrayList<String> j() {
        return this.m;
    }

    private ArrayList<String> k() {
        return this.n;
    }

    public final String a() {
        return this.o;
    }

    public final String b() {
        return this.k;
    }

    public final String c() {
        return this.p;
    }

    public final String d() {
        return this.q;
    }

    public final String e() {
        return this.r;
    }

    public final String f() {
        return this.s;
    }

    public final JSONObject g() {
        try {
            JSONObject jSONObject = new JSONObject(this.j);
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final String toString() {
        return "ApkDisplayInfo{appName='" + this.k + "', permDescJArray=" + this.l + ", permDescOriJArray=" + this.m + ", permDescAll=" + this.n + ", priUrl='" + this.p + "', updateTime='" + this.q + "', appVersion='" + this.r + "', devName='" + this.s + '\'' + MessageFormatter.DELIM_STOP;
    }
}
