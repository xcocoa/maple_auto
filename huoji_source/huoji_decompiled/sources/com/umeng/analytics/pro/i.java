package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import z2.ae;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    private static boolean A = false;
    private static final String B = "n_sess_dp";
    private static final String C = "n_sess_dp_type";
    private static Context a = null;
    private static final String q = "first_activate_time";
    private static final String r = "ana_is_f";
    private static final String s = "thtstart";
    private static final String t = "dstk_last_time";
    private static final String u = "dstk_cnt";
    private static final String v = "gkvc";
    private static final String w = "ekvc";
    private static final String y = "-1";
    private static boolean z;
    private ABTest b;
    private ImLatent c;
    private c d;
    private SharedPreferences e;
    private String f;
    private String g;
    private String h;
    private String i;
    private long j;
    private int k;
    private JSONArray l;
    private final int m;
    private int n;
    private int o;
    private long p;
    private final long x;

    public static class a {
        public static final int a = 4097;
        public static final int b = 4098;
        public static final int c = 4099;
        public static final int d = 4100;
        public static final int e = 4101;
        public static final int f = 4102;
        public static final int g = 4103;
        public static final int h = 4104;
        public static final int i = 4105;
        public static final int j = 4106;
        public static final int k = 8193;
        public static final int l = 8194;
        public static final int m = 8195;
        public static final int n = 8196;
        public static final int o = 8197;
    }

    public static class b {
        private static final i a = new i();

        private b() {
        }
    }

    public class c {
        private ReportPolicy.ReportStrategy b = null;
        private int c = -1;
        private int d = -1;
        private int e = -1;
        private int f = -1;

        public c() {
        }

        private ReportPolicy.ReportStrategy b(int i, int i2) {
            if (i == 0) {
                ReportPolicy.ReportStrategy reportStrategy = this.b;
                return reportStrategy instanceof ReportPolicy.ReportRealtime ? reportStrategy : new ReportPolicy.ReportRealtime();
            }
            if (i == 1) {
                ReportPolicy.ReportStrategy reportStrategy2 = this.b;
                return reportStrategy2 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy2 : new ReportPolicy.ReportAtLaunch();
            }
            if (i == 4) {
                ReportPolicy.ReportStrategy reportStrategy3 = this.b;
                return reportStrategy3 instanceof ReportPolicy.ReportDaily ? reportStrategy3 : new ReportPolicy.ReportDaily(StatTracer.getInstance(i.a));
            }
            if (i == 5) {
                ReportPolicy.ReportStrategy reportStrategy4 = this.b;
                return reportStrategy4 instanceof ReportPolicy.ReportWifiOnly ? reportStrategy4 : new ReportPolicy.ReportWifiOnly(i.a);
            }
            if (i != 6) {
                if (i != 8) {
                    ReportPolicy.ReportStrategy reportStrategy5 = this.b;
                    return reportStrategy5 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy5 : new ReportPolicy.ReportAtLaunch();
                }
                ReportPolicy.ReportStrategy reportStrategy6 = this.b;
                return reportStrategy6 instanceof ReportPolicy.SmartPolicy ? reportStrategy6 : new ReportPolicy.SmartPolicy(StatTracer.getInstance(i.a));
            }
            ReportPolicy.ReportStrategy reportStrategy7 = this.b;
            if (!(reportStrategy7 instanceof ReportPolicy.ReportByInterval)) {
                return new ReportPolicy.ReportByInterval(StatTracer.getInstance(i.a), i2);
            }
            ((ReportPolicy.ReportByInterval) reportStrategy7).setReportInterval(i2);
            return reportStrategy7;
        }

        public int a(int i) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(i.a, "test_report_interval", "-1")).intValue();
            return (iIntValue == -1 || iIntValue < 90 || iIntValue > 86400) ? i : iIntValue * 1000;
        }

        public void a() {
            try {
                int[] iArrA = a(-1, -1);
                this.c = iArrA[0];
                this.d = iArrA[1];
            } catch (Throwable unused) {
            }
        }

        public int[] a(int i, int i2) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(i.a, "report_policy", "-1")).intValue();
            int iIntValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(i.a, "report_interval", "-1")).intValue();
            if (iIntValue == -1 || !ReportPolicy.isValid(iIntValue)) {
                return new int[]{i, i2};
            }
            if (iIntValue2 == -1 || iIntValue2 < 90 || iIntValue2 > 86400) {
                iIntValue2 = 90;
            }
            return new int[]{iIntValue, iIntValue2 * 1000};
        }

        public void b() {
            int testPolicy;
            ReportPolicy.ReportStrategy reportStrategyB;
            Defcon service = Defcon.getService(i.a);
            if (service.isOpen()) {
                ReportPolicy.ReportStrategy reportStrategy = this.b;
                if ((reportStrategy instanceof ReportPolicy.DefconPolicy) && reportStrategy.isValid()) {
                    iA = 1;
                }
                reportStrategyB = iA != 0 ? this.b : new ReportPolicy.DefconPolicy(StatTracer.getInstance(i.a), service);
            } else {
                boolean z = Integer.valueOf(UMEnvelopeBuild.imprintProperty(i.a, "integrated_test", "-1")).intValue() == 1;
                if (MLog.DEBUG && z) {
                    reportStrategyB = new ReportPolicy.DebugPolicy(StatTracer.getInstance(i.a));
                } else {
                    if (i.this.b.isInTest() && "RPT".equals(i.this.b.getTestName())) {
                        if (i.this.b.getTestPolicy() == 6) {
                            if ((Integer.valueOf(UMEnvelopeBuild.imprintProperty(i.a, "test_report_interval", "-1")).intValue() != -1 ? 1 : 0) != 0) {
                                iA = a(com.anythink.expressad.foundation.g.a.bM);
                            } else {
                                iA = this.d;
                                if (iA <= 0) {
                                    iA = this.f;
                                }
                            }
                        }
                        testPolicy = i.this.b.getTestPolicy();
                    } else {
                        testPolicy = this.e;
                        iA = this.f;
                        int i = this.c;
                        if (i != -1) {
                            iA = this.d;
                            testPolicy = i;
                        }
                    }
                    reportStrategyB = b(testPolicy, iA);
                }
            }
            this.b = reportStrategyB;
            MLog.d("Report policy : " + this.b.getClass().getSimpleName());
        }

        public ReportPolicy.ReportStrategy c() {
            b();
            return this.b;
        }
    }

    public static class d {
        private Map<String, Object> a;
        private String b;
        private String c;
        private long d;

        private d() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = 0L;
        }

        public d(String str, Map<String, Object> map, String str2, long j) {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = 0L;
            this.a = map;
            this.b = str;
            this.d = j;
            this.c = str2;
        }

        public Map<String, Object> a() {
            return this.a;
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.b;
        }

        public long d() {
            return this.d;
        }
    }

    private i() {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = 0L;
        this.k = 10;
        this.l = new JSONArray();
        this.m = 5000;
        this.n = 0;
        this.o = 0;
        this.p = 0L;
        this.x = 28800000L;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            this.p = sharedPreferences.getLong(s, 0L);
            this.n = sharedPreferences.getInt(v, 0);
            this.o = sharedPreferences.getInt(w, 0);
            this.d = new c();
            this.b = ABTest.getService(a);
            Context context = a;
            this.c = ImLatent.getService(context, StatTracer.getInstance(context));
        } catch (Throwable unused) {
        }
    }

    public static i a(Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return b.a;
    }

    private JSONObject a(JSONObject jSONObject, long j) {
        try {
            if (k.a(jSONObject) <= j) {
                return jSONObject;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(com.umeng.analytics.pro.b.an, k.a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return k.a(a, j, jSONObject);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private boolean a(long j, int i) {
        if (j == 0) {
            return true;
        }
        if (System.currentTimeMillis() - j <= 28800000) {
            return i < 5000;
        }
        j();
        return true;
    }

    private void b(JSONObject jSONObject) {
        String str;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject.has("analytics")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("analytics");
                if (jSONObject3.has(com.umeng.analytics.pro.b.N)) {
                    str = "appkey";
                    jSONObject2.put(com.umeng.analytics.pro.b.N, jSONObject3.getJSONArray(com.umeng.analytics.pro.b.N));
                } else {
                    str = "appkey";
                }
                if (jSONObject3.has(com.umeng.analytics.pro.b.O)) {
                    jSONObject2.put(com.umeng.analytics.pro.b.O, jSONObject3.getJSONArray(com.umeng.analytics.pro.b.O));
                }
                if (jSONObject3.has("error")) {
                    jSONObject2.put("error", jSONObject3.getJSONArray("error"));
                }
                if (jSONObject3.has(com.umeng.analytics.pro.b.n)) {
                    JSONArray jSONArray = jSONObject3.getJSONArray(com.umeng.analytics.pro.b.n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        if (jSONObject4 != null && jSONObject4.length() > 0) {
                            if (jSONObject4.has(com.umeng.analytics.pro.b.t)) {
                                jSONObject4.remove(com.umeng.analytics.pro.b.t);
                            }
                            jSONArray2.put(jSONObject4);
                        }
                    }
                    jSONObject2.put(com.umeng.analytics.pro.b.n, jSONArray2);
                }
                if (jSONObject3.has(com.umeng.analytics.pro.b.D)) {
                    jSONObject2.put(com.umeng.analytics.pro.b.D, jSONObject3.getJSONObject(com.umeng.analytics.pro.b.D));
                }
                if (jSONObject3.has(com.umeng.analytics.pro.b.G)) {
                    jSONObject2.put(com.umeng.analytics.pro.b.G, jSONObject3.getJSONObject(com.umeng.analytics.pro.b.G));
                }
            } else {
                str = "appkey";
            }
            if (jSONObject.has("dplus")) {
                jSONObject2.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has("header")) {
                JSONObject jSONObject5 = jSONObject.getJSONObject("header");
                jSONObject2.put("sdk_version", jSONObject5.getString("sdk_version"));
                jSONObject2.put("device_id", jSONObject5.getString("device_id"));
                jSONObject2.put("device_model", jSONObject5.getString("device_model"));
                jSONObject2.put("version", jSONObject5.getString("version_code"));
                String str2 = str;
                jSONObject2.put(str2, jSONObject5.getString(str2));
                jSONObject2.put("channel", jSONObject5.getString("channel"));
            }
            if (jSONObject2.length() > 0) {
                MLog.d("constructMessage:" + jSONObject2.toString());
            }
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void c(JSONObject jSONObject) {
        Context context;
        JSONObject jSONObjectOptJSONObject;
        try {
            if (jSONObject.getJSONObject("header").has(com.umeng.analytics.pro.b.an)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                    if (jSONObject2.has(com.umeng.analytics.pro.b.n)) {
                        JSONObject jSONObject3 = jSONObject2.getJSONArray(com.umeng.analytics.pro.b.n).getJSONObject(0);
                        if (jSONObject3 != null) {
                            g.a(a).a(true, jSONObject3.getString("id"));
                        }
                    } else {
                        g.a(a).g();
                    }
                } else if (jSONObject.has("dplus")) {
                    JSONObject jSONObject4 = jSONObject.getJSONObject("dplus");
                    if (jSONObject4.has(com.umeng.analytics.pro.b.Y)) {
                        g.a(a).b(0);
                    }
                    if (jSONObject4.has(com.umeng.analytics.pro.b.ac)) {
                        g.a(a).b(4);
                    }
                    if (jSONObject4.has(com.umeng.analytics.pro.b.ah)) {
                        g.a(a).b(1);
                    }
                }
                context = a;
            } else {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("analytics")) != null && jSONObjectOptJSONObject.length() > 0) {
                    if (jSONObjectOptJSONObject.has(com.umeng.analytics.pro.b.n)) {
                        g.a(a).a(true, false);
                    }
                    if (jSONObjectOptJSONObject.has(com.umeng.analytics.pro.b.N) || jSONObjectOptJSONObject.has(com.umeng.analytics.pro.b.O)) {
                        g.a(a).d();
                    }
                    if (jSONObjectOptJSONObject.has("error")) {
                        g.a(a).e();
                    }
                }
                if (jSONObject.has("dplus")) {
                    g.a(a).f();
                }
                context = a;
            }
            g.a(context).a();
        } catch (Exception unused) {
        }
    }

    private void c(boolean z3) {
        JSONObject jSONObjectBuildEnvelopeWithExtHeader;
        JSONObject jSONObject = new JSONObject();
        if (!z3) {
            jSONObject = a(UMEnvelopeBuild.maxDataSpace(a));
        } else if (AnalyticsConfig.FLAG_DPLUS) {
            jSONObject = b(UMEnvelopeBuild.maxDataSpace(a));
        }
        if (jSONObject == null || jSONObject.length() < 1) {
            return;
        }
        JSONObject jSONObject2 = (JSONObject) jSONObject.opt("header");
        JSONObject jSONObject3 = (JSONObject) jSONObject.opt("content");
        Context context = a;
        if (context == null || jSONObject2 == null || jSONObject3 == null || (jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject2, jSONObject3)) == null) {
            return;
        }
        b(jSONObjectBuildEnvelopeWithExtHeader);
        a((Object) jSONObjectBuildEnvelopeWithExtHeader);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065 A[Catch: all -> 0x018c, TryCatch #0 {all -> 0x018c, blocks: (B:3:0x000d, B:5:0x0011, B:7:0x0015, B:8:0x0021, B:10:0x0031, B:11:0x0035, B:16:0x0049, B:18:0x0065, B:19:0x006a, B:22:0x0089, B:24:0x0099, B:26:0x00a3, B:29:0x00cd, B:30:0x00db, B:31:0x0107, B:32:0x010c, B:34:0x011c, B:36:0x0126, B:39:0x0150, B:40:0x015e, B:12:0x003a, B:14:0x0042, B:15:0x0047), top: B:45:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0089 A[Catch: all -> 0x018c, TRY_ENTER, TryCatch #0 {all -> 0x018c, blocks: (B:3:0x000d, B:5:0x0011, B:7:0x0015, B:8:0x0021, B:10:0x0031, B:11:0x0035, B:16:0x0049, B:18:0x0065, B:19:0x006a, B:22:0x0089, B:24:0x0099, B:26:0x00a3, B:29:0x00cd, B:30:0x00db, B:31:0x0107, B:32:0x010c, B:34:0x011c, B:36:0x0126, B:39:0x0150, B:40:0x015e, B:12:0x003a, B:14:0x0042, B:15:0x0047), top: B:45:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010c A[Catch: all -> 0x018c, TryCatch #0 {all -> 0x018c, blocks: (B:3:0x000d, B:5:0x0011, B:7:0x0015, B:8:0x0021, B:10:0x0031, B:11:0x0035, B:16:0x0049, B:18:0x0065, B:19:0x006a, B:22:0x0089, B:24:0x0099, B:26:0x00a3, B:29:0x00cd, B:30:0x00db, B:31:0x0107, B:32:0x010c, B:34:0x011c, B:36:0x0126, B:39:0x0150, B:40:0x015e, B:12:0x003a, B:14:0x0042, B:15:0x0047), top: B:45:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private JSONObject d(boolean z3) {
        int verticalType;
        MobclickAgent.EScenarioType eScenarioType;
        String strMD5;
        SharedPreferences.Editor editorRemove;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && (str = AnalyticsConfig.mWrapperVersion) != null) {
                jSONObject.put(com.umeng.analytics.pro.b.g, str);
                jSONObject.put(com.umeng.analytics.pro.b.f, AnalyticsConfig.mWrapperType);
            }
            verticalType = AnalyticsConfig.getVerticalType(a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (verticalType == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue()) {
            AnalyticsConfig.FLAG_DPLUS = true;
            eScenarioType = MobclickAgent.EScenarioType.E_UM_NORMAL;
        } else {
            if (verticalType != MobclickAgent.EScenarioType.E_DUM_GAME.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = false;
                jSONObject.put(com.umeng.analytics.pro.b.i, verticalType);
                jSONObject.put("sdk_version", q.a);
                strMD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(a));
                if (!TextUtils.isEmpty(strMD5)) {
                    jSONObject.put("secret", strMD5);
                }
                String strImprintProperty = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
                if (z3) {
                    jSONObject.put(com.umeng.analytics.pro.b.l, f());
                    jSONObject.put(com.umeng.analytics.pro.b.m, g());
                    if (sharedPreferences != null) {
                        String string = sharedPreferences.getString("vers_name", "");
                        if (!TextUtils.isEmpty(string)) {
                            jSONObject.put("app_version", string);
                            jSONObject.put("version_code", sharedPreferences.getInt("vers_code", 0));
                            String str2 = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                            if (TextUtils.isEmpty(strImprintProperty)) {
                                jSONObject.put(com.umeng.analytics.pro.b.l, sharedPreferences.getString("vers_pre_version", "0"));
                                jSONObject.put(com.umeng.analytics.pro.b.m, sharedPreferences.getString("vers_date", str2));
                            }
                            editorRemove = sharedPreferences.edit().putString("pre_version", string).putString("cur_version", DeviceConfig.getAppVersionName(a)).putString("pre_date", str2).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version");
                            editorRemove.commit();
                        }
                    }
                } else {
                    jSONObject.put(com.umeng.analytics.pro.b.l, h());
                    jSONObject.put(com.umeng.analytics.pro.b.m, i());
                    if (sharedPreferences != null) {
                        String string2 = sharedPreferences.getString("dp_vers_name", "");
                        if (!TextUtils.isEmpty(string2)) {
                            jSONObject.put("app_version", string2);
                            jSONObject.put("version_code", sharedPreferences.getInt("dp_vers_code", 0));
                            String str3 = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                            if (TextUtils.isEmpty(strImprintProperty)) {
                                jSONObject.put(com.umeng.analytics.pro.b.l, sharedPreferences.getString("dp_vers_pre_version", "0"));
                                jSONObject.put(com.umeng.analytics.pro.b.m, sharedPreferences.getString("dp_vers_date", str3));
                            }
                            editorRemove = sharedPreferences.edit().putString("dp_pre_version", string2).putString("dp_cur_version", DeviceConfig.getAppVersionName(a)).putString("dp_pre_date", str3).remove("dp_vers_name").remove("dp_vers_code").remove("dp_vers_date").remove("dp_vers_pre_version");
                            editorRemove.commit();
                        }
                    }
                }
                return jSONObject;
            }
            AnalyticsConfig.FLAG_DPLUS = true;
            eScenarioType = MobclickAgent.EScenarioType.E_UM_GAME;
        }
        verticalType = eScenarioType.toValue();
        jSONObject.put(com.umeng.analytics.pro.b.i, verticalType);
        jSONObject.put("sdk_version", q.a);
        strMD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(a));
        if (!TextUtils.isEmpty(strMD5)) {
        }
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
        SharedPreferences sharedPreferences2 = PreferenceWrapper.getDefault(a);
        if (z3) {
        }
        return jSONObject;
    }

    private void d(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!a(this.p, this.n)) {
                    return;
                } else {
                    this.n++;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!a(this.p, this.o)) {
                    return;
                } else {
                    this.o++;
                }
            }
            if (this.l.length() >= this.k) {
                g.a(a).a(this.l);
                this.l = new JSONArray();
            }
            if (this.p == 0) {
                this.p = System.currentTimeMillis();
            }
            this.l.put(jSONObject);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void e(Object obj) {
        try {
            b(a);
            a();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(com.umeng.analytics.pro.b.H);
                String string2 = jSONObject.getString("uid");
                String[] strArrA = com.umeng.analytics.c.a(a);
                if (strArrA != null && string.equals(strArrA[0]) && string2.equals(strArrA[1])) {
                    return;
                }
                boolean zA = o.a().a(a, System.currentTimeMillis());
                com.umeng.analytics.c.a(a, string, string2);
                if (zA) {
                    o.a().b(a, System.currentTimeMillis());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private boolean e(boolean z3) {
        if (n()) {
            return true;
        }
        if (this.d == null) {
            this.d = new c();
        }
        this.d.a();
        ReportPolicy.ReportStrategy reportStrategyC = this.d.c();
        boolean zShouldSendMessage = reportStrategyC.shouldSendMessage(z3);
        if (zShouldSendMessage && (((reportStrategyC instanceof ReportPolicy.ReportByInterval) || (reportStrategyC instanceof ReportPolicy.DebugPolicy)) && k())) {
            a();
        }
        return zShouldSendMessage;
    }

    private String f() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.f)) {
                    return this.f;
                }
                if (this.e == null) {
                    this.e = PreferenceWrapper.getDefault(a);
                }
                String string = this.e.getString("pre_version", "");
                String appVersionName = DeviceConfig.getAppVersionName(a);
                if (TextUtils.isEmpty(string)) {
                    this.e.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                    strImprintProperty = "0";
                } else {
                    String string2 = this.e.getString("cur_version", "");
                    if (appVersionName.equals(string2)) {
                        strImprintProperty = string;
                    } else {
                        this.e.edit().putString("pre_version", string2).putString("cur_version", appVersionName).commit();
                        strImprintProperty = string2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.f = strImprintProperty;
        return strImprintProperty;
    }

    private void f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            String strOptString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            g.a(a).a(strOptString, obj.toString(), 2);
        } catch (Throwable unused) {
        }
    }

    private String g() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(a, "ud_da", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.g)) {
                    return this.g;
                }
                if (this.e == null) {
                    this.e = PreferenceWrapper.getDefault(a);
                }
                String string = this.e.getString("pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.e.edit().putString("pre_date", string).commit();
                } else {
                    String str = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(str)) {
                        this.e.edit().putString("pre_date", str).commit();
                        strImprintProperty = str;
                    }
                }
                strImprintProperty = string;
            }
        } catch (Throwable unused) {
        }
        this.g = strImprintProperty;
        return strImprintProperty;
    }

    private String h() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.h)) {
                    return this.h;
                }
                if (this.e == null) {
                    this.e = PreferenceWrapper.getDefault(a);
                }
                String string = this.e.getString("dp_pre_version", "");
                String appVersionName = DeviceConfig.getAppVersionName(a);
                if (TextUtils.isEmpty(string)) {
                    this.e.edit().putString("dp_pre_version", "0").putString("dp_cur_version", appVersionName).commit();
                    strImprintProperty = "0";
                } else {
                    String string2 = this.e.getString("dp_cur_version", "");
                    if (appVersionName.equals(string2)) {
                        strImprintProperty = string;
                    } else {
                        this.e.edit().putString("dp_pre_version", string2).putString("dp_cur_version", appVersionName).commit();
                        strImprintProperty = string2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.h = strImprintProperty;
        return strImprintProperty;
    }

    private String i() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(a, "ud_da", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.i)) {
                    return this.i;
                }
                if (this.e == null) {
                    this.e = PreferenceWrapper.getDefault(a);
                }
                String string = this.e.getString("dp_pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.e.edit().putString("dp_pre_date", string).commit();
                } else {
                    String str = new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(str)) {
                        this.e.edit().putString("dp_pre_date", str).commit();
                        strImprintProperty = str;
                    }
                }
                strImprintProperty = string;
            }
        } catch (Throwable unused) {
        }
        this.i = strImprintProperty;
        return strImprintProperty;
    }

    private void j() {
        try {
            this.n = 0;
            this.o = 0;
            this.p = System.currentTimeMillis();
            PreferenceWrapper.getDefault(a).edit().putLong(t, System.currentTimeMillis()).putInt(u, 0).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean k() {
        try {
            if (!TextUtils.isEmpty(o.a().c())) {
                b(a);
            }
            if (this.l.length() <= 0) {
                return false;
            }
            for (int i = 0; i < this.l.length(); i++) {
                JSONObject jSONObjectOptJSONObject = this.l.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                    String strOptString = jSONObjectOptJSONObject.optString("__i");
                    if (TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void l() {
        if (this.l.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.l.length(); i++) {
                try {
                    JSONObject jSONObject = this.l.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        String strOptString = jSONObject.optString("__i");
                        String str = "-1";
                        if (TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                            String strC = o.a().c();
                            if (!TextUtils.isEmpty(strC)) {
                                str = strC;
                            }
                            jSONObject.put("__i", str);
                        }
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
            this.l = jSONArray;
        }
    }

    private void m() {
        Context context;
        SharedPreferences sharedPreferences;
        try {
            if (!n() || (context = a) == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null || sharedPreferences.getLong(q, 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong(q, System.currentTimeMillis()).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean n() {
        SharedPreferences sharedPreferences;
        try {
            Context context = a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return false;
            }
            return sharedPreferences.getLong(r, -1L) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void o() {
        try {
            b(a);
            a();
            String[] strArrA = com.umeng.analytics.c.a(a);
            if (strArrA == null || TextUtils.isEmpty(strArrA[0]) || TextUtils.isEmpty(strArrA[1])) {
                return;
            }
            boolean zA = o.a().a(a, System.currentTimeMillis());
            com.umeng.analytics.c.b(a);
            if (zA) {
                o.a().b(a, System.currentTimeMillis());
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009b A[Catch: all -> 0x00a4, TryCatch #0 {all -> 0x00a4, blocks: (B:27:0x006d, B:30:0x0076, B:31:0x007b, B:37:0x008a, B:39:0x0090, B:40:0x0095, B:42:0x009b, B:43:0x00a0, B:33:0x0081), top: B:46:0x006d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JSONObject a(long j) {
        if (TextUtils.isEmpty(o.a().c(a))) {
            return null;
        }
        JSONObject jSONObjectB = b(false);
        int iA = l.a().a(a);
        if (jSONObjectB.length() <= 0) {
            return null;
        }
        if (jSONObjectB.length() == 1) {
            if (jSONObjectB.optJSONObject(com.umeng.analytics.pro.b.G) != null && iA != 3) {
                return null;
            }
            if (!TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
                return null;
            }
        } else if (jSONObjectB.length() == 2 && jSONObjectB.optJSONObject(com.umeng.analytics.pro.b.G) != null && !TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
            return null;
        }
        JSONObject jSONObjectD = d(false);
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (iA != 3) {
                if (jSONObjectB != null && jSONObjectB.length() > 0) {
                }
                if (jSONObjectD != null && jSONObjectD.length() > 0) {
                    jSONObject.put("header", jSONObjectD);
                }
                if (jSONObject2.length() > 0) {
                    jSONObject.put("content", jSONObject2);
                }
                return a(jSONObject, j);
            }
            jSONObjectB = new JSONObject();
            jSONObject2.put("analytics", jSONObjectB);
            if (jSONObjectD != null) {
                jSONObject.put("header", jSONObjectD);
            }
            if (jSONObject2.length() > 0) {
            }
            return a(jSONObject, j);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public void a() {
        try {
            if (this.l.length() > 0) {
                g.a(a).a(this.l);
                this.l = new JSONArray();
            }
            PreferenceWrapper.getDefault(a).edit().putLong(s, this.p).putInt(v, this.n).putInt(w, this.o).commit();
        } catch (Throwable unused) {
        }
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception") && 101 == jSONObject.getInt("exception")) {
                        return;
                    }
                    c(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Object obj, int i) {
        try {
            switch (i) {
                case 4097:
                    if (obj != null) {
                        d(obj);
                    }
                    if ("-1".equals(((JSONObject) obj).optString("__i"))) {
                        return;
                    }
                    break;
                case 4098:
                    if (obj != null) {
                        d(obj);
                    }
                    if ("-1".equals(((JSONObject) obj).optString("__i"))) {
                        return;
                    }
                    break;
                case 4099:
                    p.a(a);
                    return;
                case a.d /* 4100 */:
                    h.b(a);
                    return;
                case a.e /* 4101 */:
                    e(obj);
                    return;
                case a.f /* 4102 */:
                    o();
                    return;
                case a.g /* 4103 */:
                    o.a().a(a, obj);
                    return;
                case a.h /* 4104 */:
                    o.a().b(a, obj);
                    return;
                case a.i /* 4105 */:
                    a();
                    return;
                case a.j /* 4106 */:
                    f(obj);
                    return;
                default:
                    switch (i) {
                        case a.k /* 8193 */:
                            a(obj, 1, false);
                            break;
                        case 8194:
                            m.a(a).a(obj);
                            break;
                        case a.m /* 8195 */:
                            com.umeng.analytics.b.a().a(obj);
                            break;
                        case a.n /* 8196 */:
                            com.umeng.analytics.b.a().j();
                            break;
                        case a.o /* 8197 */:
                            com.umeng.analytics.b.a().h();
                            break;
                    }
                    return;
            }
            a(false);
        } catch (Throwable unused) {
        }
    }

    public void a(Object obj, int i, boolean z3) {
        int i2;
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0) {
                return;
            }
            String strOptString = jSONObject.optString("__ii");
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            int i3 = 1;
            if (i == 0) {
                long j = sharedPreferences.getLong(t, 0L);
                int i4 = sharedPreferences.getInt(u, 0);
                if (!a(j, i4)) {
                    return;
                } else {
                    sharedPreferences.edit().putLong(t, System.currentTimeMillis()).putInt(u, i4 == 5000 ? 0 : i4 + 1).commit();
                }
            }
            String string = sharedPreferences.getString(B, "");
            JSONArray jSONArray = TextUtils.isEmpty(string) ? new JSONArray() : new JSONArray(string);
            JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
            if ("-1".equals(strOptString)) {
                jSONObject.put(C, i);
                if (!jSONObject.has(com.umeng.analytics.pro.b.ab) && jSONObjectI.length() > 0) {
                    jSONObject.put(com.umeng.analytics.pro.b.ab, jSONObjectI);
                }
                jSONArray.put(jSONObject);
                sharedPreferences.edit().putString(B, jSONArray.toString()).commit();
                return;
            }
            if (i != 3 && jSONArray.length() > 0) {
                int i5 = 0;
                while (i5 < jSONArray.length()) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i5);
                    if (jSONObject2 == null || jSONObject2.length() <= 0) {
                        i2 = i5;
                    } else {
                        int i6 = jSONObject2.getInt(C);
                        if (!jSONObject2.has(com.umeng.analytics.pro.b.ab) && jSONObjectI.length() > 0) {
                            jSONObject2.put(com.umeng.analytics.pro.b.ab, jSONObjectI);
                        }
                        i2 = i5;
                        if (i6 == 0 || i6 == i3) {
                            jSONObject2.put("_$!ts", System.currentTimeMillis());
                        }
                        jSONObject2.put("__ii", strOptString);
                        jSONObject2.remove(C);
                        g.a(a).a(jSONObject2, i6);
                    }
                    i5 = i2 + 1;
                    i3 = 1;
                }
                com.umeng.analytics.b.a().d();
                sharedPreferences.edit().remove(B).commit();
            }
            g.a(a).a(jSONObject, i);
            if (!z3) {
                if (!UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                    return;
                }
                Defcon service = Defcon.getService(a);
                if (service.isOpen() && !new ReportPolicy.DefconPolicy(StatTracer.getInstance(a), service).shouldSendMessage(false)) {
                    return;
                }
            }
            c(true);
        } catch (Throwable unused) {
        }
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObjectD;
        try {
            if (!UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_DPLUS) || jSONObject == null || (jSONObjectD = d(true)) == null || jSONObjectD.length() <= 0) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(com.umeng.analytics.pro.b.ac, jSONArray);
            jSONObject2.put("dplus", jSONObject3);
            Context context = a;
            if (context == null || jSONObjectD == null) {
                return;
            }
            UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObjectD, jSONObject2);
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z3) {
        if (e(z3) && UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_APP)) {
            c(false);
        }
    }

    public JSONObject b(long j) {
        if (!AnalyticsConfig.FLAG_DPLUS || TextUtils.isEmpty(o.a().c(a))) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (AnalyticsConfig.FLAG_DPLUS) {
            jSONObject = g.a(a).c();
            l.a().a(jSONObject, a);
            Defcon service = Defcon.getService(a);
            if (service.isOpen() && !new ReportPolicy.DefconPolicy(StatTracer.getInstance(a), service).shouldSendMessage(false)) {
                jSONObject = new JSONObject();
            }
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        JSONObject jSONObjectD = d(true);
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject != null && jSONObject.length() > 0) {
                jSONObject3.put("dplus", jSONObject);
            }
            if (jSONObjectD != null && jSONObjectD.length() > 0) {
                jSONObject2.put("header", jSONObjectD);
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("content", jSONObject3);
            }
            return a(jSONObject2, j);
        } catch (Throwable unused) {
            return jSONObject2;
        }
    }

    public JSONObject b(boolean z3) {
        JSONObject jSONObjectA = null;
        try {
            jSONObjectA = g.a(a).a(z3);
            if (jSONObjectA == null) {
                jSONObjectA = new JSONObject();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObjectA.put("userlevel", string);
                }
            }
            if (n()) {
                long jC = c();
                this.j = jC;
                if (jC != 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", this.j);
                    jSONObjectA.put(com.umeng.analytics.pro.b.D, jSONObject);
                    sharedPreferences.edit().putLong(r, 0L).commit();
                }
            }
            String[] strArrA = com.umeng.analytics.c.a(a);
            if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(com.umeng.analytics.pro.b.H, strArrA[0]);
                jSONObject2.put(com.umeng.analytics.pro.b.I, strArrA[1]);
                if (jSONObject2.length() > 0) {
                    jSONObjectA.put(com.umeng.analytics.pro.b.G, jSONObject2);
                }
            }
            if (ABTest.getService(a).isInTest()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(ABTest.getService(a).getTestName(), ABTest.getService(a).getGroupInfo());
                jSONObjectA.put(com.umeng.analytics.pro.b.F, jSONObject3);
            }
            l.a().b(jSONObjectA, a);
            if (jSONObjectA.length() > 0) {
                new JSONObject().put("analytics", jSONObjectA);
            }
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    public void b() {
        z = true;
        c(false);
    }

    public void b(Context context) {
        try {
            g.a(context).b();
            l();
        } catch (Throwable unused) {
        }
    }

    public void b(Object obj) {
        z = true;
        b(a);
        a();
        c(false);
        if (AnalyticsConfig.FLAG_DPLUS) {
            a(obj, 2, false);
        }
    }

    public long c() {
        SharedPreferences sharedPreferences;
        long jCurrentTimeMillis = 0;
        try {
            Context context = a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return 0L;
            }
            long j = sharedPreferences.getLong(q, 0L);
            if (j == 0) {
                try {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    sharedPreferences.edit().putLong(q, jCurrentTimeMillis).commit();
                    return jCurrentTimeMillis;
                } catch (Throwable unused) {
                }
            }
            return j;
        } catch (Throwable unused2) {
            return jCurrentTimeMillis;
        }
    }

    public void c(Object obj) {
        m();
        A = true;
        f();
        g();
        h();
        i();
        a(true);
        if (AnalyticsConfig.FLAG_DPLUS) {
            a(obj, 2, false);
        }
    }

    public void d() {
        try {
            String strC = o.a().c();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            String string = sharedPreferences.getString(B, "");
            JSONArray jSONArray = TextUtils.isEmpty(string) ? new JSONArray() : new JSONArray(string);
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        int i2 = jSONObject.getInt(C);
                        if (i2 == 0 || i2 == 1) {
                            jSONObject.put("_$!ts", System.currentTimeMillis());
                        }
                        jSONObject.put("__ii", strC);
                        jSONObject.remove(C);
                        g.a(a).a(jSONObject, i2);
                    }
                }
                sharedPreferences.edit().remove(B).commit();
                if (UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                    c(true);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
