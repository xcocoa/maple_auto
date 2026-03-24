package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.c;
import com.umeng.analytics.pro.g;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    private static final String a = "session_start_time";
    private static final String b = "session_end_time";
    private static final String c = "session_id";
    private static String f;
    private static Context g;
    private final String d;
    private final String e;

    public static class a {
        private static final o a = new o();

        private a() {
        }
    }

    private o() {
        this.d = "a_start_time";
        this.e = "a_end_time";
    }

    public static o a() {
        return a.a;
    }

    private String a(Context context, SharedPreferences sharedPreferences, long j) {
        if (g == null && context != null) {
            g = context.getApplicationContext();
        }
        String strB = b(g);
        try {
            d(context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j);
            g.a(g).a(strB, jSONObject, g.a.BEGIN);
            a(g);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("session_id", strB);
            editorEdit.putLong(a, j);
            editorEdit.putLong(b, 0L);
            editorEdit.putLong("a_start_time", j);
            editorEdit.putLong("a_end_time", 0L);
            editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
            editorEdit.putString(b.al, UMUtils.getAppVersionName(context));
            editorEdit.commit();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
            if (jSONObjectI.length() > 0) {
                jSONObject2.put(b.ab, jSONObjectI);
            }
            jSONObject2.put(b.ad, strB);
            jSONObject2.put("__ii", strB);
            jSONObject2.put(b.ae, j);
            i.a(g).c((Object) jSONObject2);
        } catch (Throwable unused) {
        }
        return strB;
    }

    private void a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.remove(a);
        editorEdit.remove(b);
        editorEdit.remove("a_start_time");
        editorEdit.remove("a_end_time");
        editorEdit.commit();
    }

    private boolean a(SharedPreferences sharedPreferences, long j) {
        long j2 = sharedPreferences.getLong("a_start_time", 0L);
        long j3 = sharedPreferences.getLong("a_end_time", 0L);
        if (j2 != 0 && j - j2 < AnalyticsConfig.kContinueSessionMillis) {
            MLog.e("onResume called before onPause");
            return false;
        }
        if (j - j3 <= AnalyticsConfig.kContinueSessionMillis) {
            return false;
        }
        try {
            String string = sharedPreferences.getString("session_id", HRConfig.GENDER_UNKNOWN);
            long jCurrentTimeMillis = sharedPreferences.getLong(b, 0L);
            if (HRConfig.GENDER_UNKNOWN.equals(string)) {
                return true;
            }
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c.e.a.g, jCurrentTimeMillis);
            g.a(g).a(string, jSONObject, g.a.END);
            if (!AnalyticsConfig.FLAG_DPLUS) {
                return true;
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
            if (jSONObjectI.length() > 0) {
                jSONObject2.put(b.ab, jSONObjectI);
            }
            jSONObject2.put(b.af, string);
            jSONObject2.put("__ii", string);
            jSONObject2.put(b.ag, jCurrentTimeMillis);
            i.a(g).a(jSONObject2, 3, false);
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void d(Context context) {
        i.a(context).b(context);
        i.a(context).a();
    }

    public void a(Context context, Object obj) {
        try {
            if (g == null && context != null) {
                g = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(g);
            if (sharedPreferences == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            String string = sharedPreferences.getString(b.al, "");
            String appVersionName = UMUtils.getAppVersionName(g);
            if (TextUtils.isEmpty(string) || string.equals(appVersionName)) {
                if (a(sharedPreferences, jLongValue)) {
                    f = a(context, sharedPreferences, jLongValue);
                    MLog.i("Start new session: " + f);
                    return;
                }
                f = sharedPreferences.getString("session_id", null);
                editorEdit.putLong("a_start_time", jLongValue);
                editorEdit.putLong("a_end_time", 0L);
                editorEdit.commit();
                MLog.i("Extend current session: " + f);
                d(context);
                i.a(g).a(false);
                i.a(g).d();
                return;
            }
            int i = sharedPreferences.getInt("versioncode", 0);
            String string2 = sharedPreferences.getString("pre_date", "");
            String string3 = sharedPreferences.getString("pre_version", "");
            String string4 = sharedPreferences.getString(b.al, "");
            editorEdit.putString("vers_date", string2);
            editorEdit.putString("vers_pre_version", string3);
            editorEdit.putString("cur_version", string4);
            editorEdit.putString("dp_vers_date", string2);
            editorEdit.putString("dp_vers_pre_version", string3);
            editorEdit.putString("dp_cur_version", string4);
            editorEdit.putInt("vers_code", i);
            editorEdit.putString("vers_name", string);
            editorEdit.putInt("dp_vers_code", i);
            editorEdit.putString("dp_vers_name", string);
            editorEdit.putLong("a_end_time", 0L);
            editorEdit.commit();
            if (c(context) == null) {
                f = a(context, sharedPreferences, jLongValue);
            }
            a(g, jLongValue);
            b(g, jLongValue);
        } catch (Throwable unused) {
        }
    }

    public boolean a(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        String string = sharedPreferences.getString("session_id", null);
        if (string == null) {
            return false;
        }
        long j = sharedPreferences.getLong(a, 0L);
        long j2 = sharedPreferences.getLong(b, 0L);
        if (j2 != 0) {
            int i = (Math.abs(j2 - j) > 86400000L ? 1 : (Math.abs(j2 - j) == 86400000L ? 0 : -1));
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", string);
            jSONObject.put("__e", j);
            jSONObject.put(c.e.a.g, j2);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("lat", location[0]);
                jSONObject2.put("lng", location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(c.e.a.e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getUidRxBytes", cls2);
            Method method2 = cls.getMethod("getUidTxBytes", cls2);
            int i2 = context.getApplicationInfo().uid;
            if (i2 == -1) {
                return false;
            }
            long jLongValue = ((Long) method.invoke(null, Integer.valueOf(i2))).longValue();
            long jLongValue2 = ((Long) method2.invoke(null, Integer.valueOf(i2))).longValue();
            if (jLongValue > 0 && jLongValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(b.C, jLongValue);
                jSONObject3.put(b.B, jLongValue2);
                jSONObject.put(c.e.a.d, jSONObject3);
            }
            g.a(context).a(string, jSONObject, g.a.NEWSESSION);
            p.a(g);
            h.b(g);
            try {
                a(sharedPreferences);
                return true;
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
        }
        return false;
    }

    public boolean a(Context context, long j) {
        String string;
        boolean z = true;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null || (string = sharedPreferences.getString("session_id", null)) == null) {
                return false;
            }
            long j2 = sharedPreferences.getLong("a_start_time", 0L);
            long j3 = sharedPreferences.getLong("a_end_time", 0L);
            if (j2 <= 0 || j3 != 0) {
                z = false;
            } else {
                try {
                    b(g, Long.valueOf(j));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(c.e.a.g, j);
                        g.a(context).a(string, jSONObject, g.a.END);
                        i.a(g).b();
                        if (AnalyticsConfig.FLAG_DPLUS) {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
                            if (jSONObjectC == null || jSONObjectC.length() < 1) {
                                jSONObjectC = com.umeng.analytics.b.a().i();
                            }
                            if (jSONObjectC.length() > 0) {
                                jSONObject2.put(b.ab, jSONObjectC);
                            }
                            jSONObject2.put(b.af, string);
                            jSONObject2.put("__ii", string);
                            jSONObject2.put(b.ag, j);
                            i.a(g).a(jSONObject2, 3, true);
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    return z;
                }
            }
            a(context);
            return z;
        } catch (Throwable unused3) {
            return false;
        }
    }

    public String b(Context context) {
        String deviceId = DeviceConfig.getDeviceId(context);
        String appkey = UMUtils.getAppkey(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (appkey == null) {
            throw new RuntimeException("Appkey is null or empty, Please check!");
        }
        String strMD5 = UMUtils.MD5(jCurrentTimeMillis + appkey + deviceId);
        f = strMD5;
        return strMD5;
    }

    public void b(Context context, long j) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        if (sharedPreferences == null) {
            return;
        }
        f = b(context);
        try {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("session_id", f);
            editorEdit.putLong(a, j);
            editorEdit.putLong(b, 0L);
            editorEdit.putLong("a_start_time", j);
            editorEdit.putLong("a_end_time", 0L);
            editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(g)));
            editorEdit.putString(b.al, UMUtils.getAppVersionName(g));
            editorEdit.commit();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j);
            g.a(g).a(f, jSONObject, g.a.BEGIN);
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
            if (jSONObjectI.length() > 0) {
                jSONObject2.put(b.ab, jSONObjectI);
            }
            jSONObject2.put(b.ad, f);
            jSONObject2.put("__ii", f);
            jSONObject2.put(b.ae, j);
            i.a(g).b((Object) jSONObject2);
        } catch (Throwable unused) {
        }
    }

    public void b(Context context, Object obj) {
        try {
            if (g == null && context != null) {
                g = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong("a_start_time", 0L) == 0 && AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                MLog.e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putLong("a_end_time", jLongValue);
            editorEdit.putLong(b, jLongValue);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    public boolean b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(g);
        if (sharedPreferences == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("a_start_time", 0L);
        return (j == 0 || jCurrentTimeMillis - j >= AnalyticsConfig.kContinueSessionMillis) && jCurrentTimeMillis - sharedPreferences.getLong("a_end_time", 0L) > AnalyticsConfig.kContinueSessionMillis;
    }

    public String c() {
        return f;
    }

    public String c(Context context) {
        try {
            if (f == null) {
                return PreferenceWrapper.getDefault(context).getString("session_id", null);
            }
        } catch (Throwable unused) {
        }
        return f;
    }

    public String d() {
        return c(g);
    }
}
