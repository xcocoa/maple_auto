package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.game.a;
import com.umeng.analytics.pro.r;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b implements r {
    public static boolean a = true;
    private Context A;
    private com.umeng.analytics.b b = MobclickAgent.getAgent();
    private a c = null;
    private final int d = 100;
    private final int e = 1;
    private final int f = 0;
    private final int g = -1;
    private final int h = 1;
    private final String i = "level";
    private final String j = "pay";
    private final String k = "buy";
    private final String l = "use";
    private final String m = "bonus";
    private final String n = "item";
    private final String o = "cash";
    private final String p = "coin";
    private final String q = "source";
    private final String r = "amount";
    private final String s = "user_level";
    private final String t = "bonus_source";
    private final String u = "level";
    private final String v = "status";
    private final String w = "duration";
    private final String x = "curtype";
    private final String y = "orderid";
    private final String z = "UMGameAgent.init(Context) should be called before any game api";

    public b() {
        a = true;
    }

    private void a(String str, int i) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        a.C0230a c0230aB = this.c.b(str);
        if (c0230aB == null) {
            MLog.w(String.format("finishLevel(or failLevel) called before startLevel", new Object[0]));
            return;
        }
        long jE = c0230aB.e();
        if (jE <= 0) {
            MLog.d("level duration is 0");
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("level", str);
        map.put("status", Integer.valueOf(i));
        map.put("duration", Long.valueOf(jE));
        String str2 = this.c.b;
        if (str2 != null) {
            map.put("user_level", str2);
        }
        this.b.a(this.A, "level", map);
    }

    @Override // com.umeng.analytics.pro.r
    public void a() {
        String str;
        MLog.d("App resume from background");
        Context context = this.A;
        if (context == null) {
            str = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(context) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (a) {
                    this.c.b();
                    return;
                }
                return;
            }
            str = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.e(str);
    }

    public void a(double d, double d2, int i) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("cash", Long.valueOf((long) (d * 100.0d)));
        map.put("coin", Long.valueOf((long) (d2 * 100.0d)));
        map.put("source", Integer.valueOf(i));
        String str = this.c.b;
        if (str != null) {
            map.put("user_level", str);
        }
        String str2 = this.c.a;
        if (str2 != null) {
            map.put("level", str2);
        }
        this.b.a(this.A, "pay", map);
    }

    public void a(double d, int i) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("coin", Long.valueOf((long) (d * 100.0d)));
        map.put("bonus_source", Integer.valueOf(i));
        String str = this.c.b;
        if (str != null) {
            map.put("user_level", str);
        }
        String str2 = this.c.a;
        if (str2 != null) {
            map.put("level", str2);
        }
        this.b.a(this.A, "bonus", map);
    }

    public void a(double d, String str, double d2, int i, String str2) {
        String str3;
        Context context = this.A;
        if (context == null) {
            str3 = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(context) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (d < 0.0d || d2 < 0.0d) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                if (!TextUtils.isEmpty(str) && str.length() > 0 && str.length() <= 3) {
                    map.put("curtype", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        int length = str2.getBytes("UTF-8").length;
                        if (length > 0 && length <= 1024) {
                            map.put("orderid", str2);
                        }
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
                map.put("cash", Long.valueOf((long) (d * 100.0d)));
                map.put("coin", Long.valueOf((long) (d2 * 100.0d)));
                map.put("source", Integer.valueOf(i));
                String str4 = this.c.b;
                if (str4 != null) {
                    map.put("user_level", str4);
                }
                String str5 = this.c.a;
                if (str5 != null) {
                    map.put("level", str5);
                }
                this.b.a(this.A, "pay", map);
                return;
            }
            str3 = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.e(str3);
    }

    public void a(double d, String str, int i, double d2, int i2) {
        if (AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            a(d, d2 * ((double) i), i2);
            a(str, i, d2);
        }
    }

    public void a(Context context) {
        if (context == null) {
            MLog.e("Context is null, can't init GameAgent");
            return;
        }
        this.A = context.getApplicationContext();
        this.b.a((r) this);
        this.c = new a(this.A);
    }

    public void a(String str) {
        try {
            Context context = this.A;
            if (context == null) {
                MLog.e("UMGameAgent.init(Context) should be called before any game api");
                return;
            }
            this.c.b = str;
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("userlevel", str).commit();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, int i, double d) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("item", str);
        map.put("amount", Integer.valueOf(i));
        map.put("coin", Long.valueOf((long) (((double) i) * d * 100.0d)));
        String str2 = this.c.b;
        if (str2 != null) {
            map.put("user_level", str2);
        }
        String str3 = this.c.a;
        if (str3 != null) {
            map.put("level", str3);
        }
        this.b.a(this.A, "buy", map);
    }

    public void a(String str, int i, double d, int i2) {
        if (AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            a(((double) i) * d, i2);
            a(str, i, d);
        }
    }

    public void a(boolean z) {
        MLog.d(String.format("Trace sleep time : %b", Boolean.valueOf(z)));
        a = z;
    }

    @Override // com.umeng.analytics.pro.r
    public void b() {
        String str;
        Context context = this.A;
        if (context == null) {
            str = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(context) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (a) {
                    this.c.a();
                    return;
                }
                return;
            }
            str = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.e(str);
    }

    public void b(String str) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        a aVar = this.c;
        aVar.a = str;
        aVar.a(str);
        HashMap<String, Object> map = new HashMap<>();
        map.put("level", str);
        map.put("status", 0);
        String str2 = this.c.b;
        if (str2 != null) {
            map.put("user_level", str2);
        }
        this.b.a(this.A, "level", map);
    }

    public void b(String str, int i, double d) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("item", str);
        map.put("amount", Integer.valueOf(i));
        map.put("coin", Long.valueOf((long) (((double) i) * d * 100.0d)));
        String str2 = this.c.b;
        if (str2 != null) {
            map.put("user_level", str2);
        }
        String str3 = this.c.a;
        if (str3 != null) {
            map.put("level", str3);
        }
        this.b.a(this.A, "use", map);
    }

    public void c(String str) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            a(str, 1);
        }
    }

    public void d(String str) {
        Context context = this.A;
        if (context == null) {
            MLog.e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(context) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            a(str, -1);
        }
    }
}
