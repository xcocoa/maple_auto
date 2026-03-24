package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    public static final String a = "umeng_common_config";
    public static final String b = "location_json";
    public static final String c = "lng";
    public static final String d = "lat";
    public static final String e = "ts";
    private static final String f = "UMSysLocationCache";

    public static void a(final Context context) {
        com.umeng.commonsdk.statistics.common.e.a(f, "begin location");
        if (context == null) {
            return;
        }
        try {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.h.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Looper.prepare();
                        final g gVar = new g(context);
                        gVar.a(new i() { // from class: com.umeng.commonsdk.proguard.h.1.1
                            @Override // com.umeng.commonsdk.proguard.i
                            public void a(Location location) {
                                if (location != null) {
                                    double longitude = location.getLongitude();
                                    double latitude = location.getLatitude();
                                    com.umeng.commonsdk.statistics.common.e.a(h.f, "lon is " + longitude + ", lat is " + latitude);
                                    if (longitude != 0.0d && latitude != 0.0d) {
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        JSONObject jSONObject = new JSONObject();
                                        try {
                                            jSONObject.put("lng", longitude);
                                            jSONObject.put("lat", latitude);
                                            jSONObject.put("ts", jCurrentTimeMillis);
                                        } catch (JSONException e2) {
                                            com.umeng.commonsdk.statistics.common.e.a(h.f, "e is " + e2);
                                        }
                                        com.umeng.commonsdk.statistics.common.e.a(h.f, "locationJSONObject is " + jSONObject.toString());
                                        Context context2 = context;
                                        UMWorkDispatch.sendEvent(context2, a.f, b.a(context2).a(), jSONObject.toString());
                                    }
                                }
                                gVar.a();
                            }
                        });
                        Looper.loop();
                    } catch (Throwable th) {
                        e.a(context, th);
                    }
                }
            }).start();
        } catch (Exception e2) {
            com.umeng.commonsdk.statistics.common.e.a(f, "e is " + e2);
            e.a(context, e2);
        }
    }

    public static JSONObject b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(a, 0);
        JSONObject jSONObject = null;
        if (sharedPreferences == null) {
            return null;
        }
        try {
            String string = sharedPreferences.getString(b, "");
            if (!TextUtils.isEmpty(string)) {
                jSONObject = new JSONObject(string);
            }
        } catch (JSONException e2) {
            e = e2;
            com.umeng.commonsdk.statistics.common.e.a(f, "e is " + e);
            e.a(context, e);
        } catch (Throwable th) {
            e = th;
            com.umeng.commonsdk.statistics.common.e.a(f, "e is " + e);
            e.a(context, e);
        }
        if (jSONObject != null) {
            com.umeng.commonsdk.statistics.common.e.a(f, "json str is " + jSONObject.toString());
        }
        a(context);
        return jSONObject;
    }
}
