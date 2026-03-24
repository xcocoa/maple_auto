package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t {
    public static final String a = "UM_PROBE_DATA";
    public static final String b = "_dsk_s";
    public static final String c = "_thm_z";
    public static final String d = "_gdf_r";
    private static Object e = new Object();

    public static String a() {
        boolean zA;
        try {
            zA = a("ls /sys/class/thermal", "thermal_zone");
        } catch (IOException unused) {
            zA = false;
        }
        return zA ? "thermal_zone" : "unknown";
    }

    public static String a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            if (sharedPreferences == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            synchronized (e) {
                jSONObject.put(b, sharedPreferences.getString(b, ""));
                jSONObject.put(c, sharedPreferences.getString(c, ""));
                jSONObject.put(d, sharedPreferences.getString(d, ""));
            }
            return jSONObject.toString();
        } catch (Exception e2) {
            e.a(context, e2);
            return null;
        }
    }

    public static boolean a(String str, String str2) throws IOException {
        boolean z;
        Process processExec = Runtime.getRuntime().exec(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                z = false;
                break;
            }
            if (line.contains(str2)) {
                z = true;
                break;
            }
        }
        try {
            processExec.waitFor();
        } catch (InterruptedException unused) {
        }
        return z;
    }

    public static String b() {
        boolean zA;
        try {
            zA = a("ls /", "goldfish");
        } catch (IOException unused) {
            zA = false;
        }
        return zA ? "goldfish" : "unknown";
    }

    public static void b(final Context context) {
        if (c(context)) {
            return;
        }
        final String[] strArr = {"unknown", "unknown", "unknown"};
        new Thread() { // from class: com.umeng.commonsdk.proguard.t.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                strArr[0] = t.c();
                strArr[1] = t.a();
                strArr[2] = t.b();
                com.umeng.commonsdk.statistics.common.e.c("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                t.b(context, strArr);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String[] strArr) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return;
        }
        synchronized (e) {
            sharedPreferences.edit().putString(b, strArr[0]).putString(c, strArr[1]).putString(d, strArr[2]).commit();
        }
    }

    public static String c() {
        BufferedReader bufferedReader;
        String str = "unknown";
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/diskstats"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.contains("mmcblk")) {
                        str = "mmcblk";
                        break;
                    }
                    if (line.contains("sda")) {
                        str = "sda";
                        break;
                    }
                    if (line.contains("mtd")) {
                        str = "mtd";
                        break;
                    }
                } catch (Exception unused) {
                    bufferedReader2 = bufferedReader;
                    bufferedReader = bufferedReader2;
                }
            }
        } catch (Exception unused2) {
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Throwable unused3) {
            }
        }
        return str;
    }

    public static boolean c(Context context) {
        SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null || TextUtils.isEmpty(sharedPreferences.getString(b, ""))) ? false : true;
    }
}
