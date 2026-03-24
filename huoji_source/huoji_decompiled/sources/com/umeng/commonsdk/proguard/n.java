package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.proguard.j;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class n {
    private static final String a = "info";
    private static final String b = "a_na";
    private static final String c = "a_st";
    private static final String d = "a_ad";
    private static final String e = "blueinfo";
    private static final String f = "a_dc";
    private static final String g = "bssid";
    private static final String h = "ssid";
    private static final String i = "a_fcy";
    private static final String j = "a_hssid";
    private static final String k = "a_ip";
    private static final String l = "a_ls";
    private static final String m = "a_mac";
    private static final String n = "a_nid";
    private static final String o = "rssi";
    private static final String p = "sta";
    private static final String q = "ts";
    private static final String r = "wifiinfo";
    private static final String s = "ua";

    public static JSONObject a(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
        if (sharedPreferences == null) {
            return null;
        }
        try {
            String string = sharedPreferences.getString(e, null);
            if (string != null) {
                return new JSONObject(string);
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void a(Context context, j.b bVar) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            String string = null;
            if (sharedPreferences != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(b, bVar.c);
                jSONObject.put(c, bVar.b);
                jSONObject.put(d, bVar.a);
                jSONObject.put("ts", System.currentTimeMillis());
                string = jSONObject.toString();
            }
            if (string != null) {
                sharedPreferences.edit().putString(e, string).commit();
            }
        } catch (Exception e2) {
            com.umeng.commonsdk.statistics.common.e.e("saveBluetoothInfo:" + e2.getMessage());
        }
    }

    public static void a(Context context, j.c cVar) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            String string = null;
            if (sharedPreferences != null) {
                String string2 = sharedPreferences.getString(r, null);
                JSONArray jSONArray = string2 == null ? new JSONArray() : new JSONArray(string2);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f, cVar.a);
                jSONObject.put(g, cVar.b);
                jSONObject.put(h, cVar.c);
                jSONObject.put(i, cVar.d);
                jSONObject.put(j, cVar.e);
                jSONObject.put(k, cVar.f);
                jSONObject.put(l, cVar.g);
                jSONObject.put(m, cVar.h);
                jSONObject.put(n, cVar.i);
                jSONObject.put(o, cVar.j);
                jSONObject.put(p, cVar.k);
                jSONObject.put("ts", cVar.l);
                jSONArray.put(jSONObject);
                string = jSONArray.toString();
            }
            if (string != null) {
                sharedPreferences.edit().putString(r, string).commit();
            }
        } catch (Exception e2) {
            com.umeng.commonsdk.statistics.common.e.e(e2.getMessage());
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("ua", str).commit();
        }
    }

    public static JSONArray b(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            if (sharedPreferences == null || (string = sharedPreferences.getString(r, null)) == null) {
                return null;
            }
            return new JSONArray(string);
        } catch (Exception e2) {
            com.umeng.commonsdk.statistics.common.e.e(e2.getMessage());
            return null;
        }
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(r).commit();
        }
    }

    public static String d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("ua", null);
        }
        return null;
    }
}
