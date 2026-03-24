package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.g;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.i;
import com.umeng.analytics.pro.j;
import com.umeng.analytics.pro.m;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.p;
import com.umeng.analytics.pro.r;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b implements n {
    private static final String g = "sp";
    private Context a;
    private r b;
    private j c;
    private p d;
    private o e;
    private h f;
    private boolean h;
    private volatile JSONObject i;
    private volatile JSONObject j;
    private boolean k;

    public static class a {
        private static final b a = new b();

        private a() {
        }
    }

    private b() {
        this.a = null;
        this.c = new j();
        this.d = new p();
        this.e = o.a();
        this.f = null;
        this.h = false;
        this.i = null;
        this.j = null;
        this.k = false;
        this.c.a(this);
    }

    public static b a() {
        return a.a;
    }

    private void a(String str, Object obj) {
        JSONArray jSONArray;
        try {
            if (this.i == null) {
                this.i = new JSONObject();
            }
            new JSONObject();
            int i = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    jSONArray = new JSONArray();
                    while (i < strArr.length) {
                        jSONArray.put(strArr[i]);
                        i++;
                    }
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    jSONArray = new JSONArray();
                    while (i < jArr.length) {
                        jSONArray.put(jArr[i]);
                        i++;
                    }
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    jSONArray = new JSONArray();
                    while (i < iArr.length) {
                        jSONArray.put(iArr[i]);
                        i++;
                    }
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    jSONArray = new JSONArray();
                    while (i < fArr.length) {
                        jSONArray.put(fArr[i]);
                        i++;
                    }
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    jSONArray = new JSONArray();
                    while (i < dArr.length) {
                        jSONArray.put(dArr[i]);
                        i++;
                    }
                } else {
                    if (!(obj instanceof short[])) {
                        return;
                    }
                    short[] sArr = (short[]) obj;
                    jSONArray = new JSONArray();
                    while (i < sArr.length) {
                        jSONArray.put((int) sArr[i]);
                        i++;
                    }
                }
            } else {
                if (!(obj instanceof List)) {
                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                        this.i.put(str, obj);
                        return;
                    }
                    return;
                }
                List list = (List) obj;
                jSONArray = new JSONArray();
                while (i < list.size()) {
                    Object obj2 = list.get(i);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray.put(list.get(i));
                    }
                    i++;
                }
            }
            this.i.put(str, jSONArray);
        } catch (Throwable unused) {
        }
    }

    private JSONObject f(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in getNativeSuperProperties");
            return null;
        }
        if (this.a == null) {
            this.a = context;
        }
        String string = PreferenceWrapper.getDefault(context).getString(g, null);
        if (!TextUtils.isEmpty(string)) {
            return new JSONObject(string);
        }
        return null;
    }

    public void a(double d, double d2) {
        if (AnalyticsConfig.a == null) {
            AnalyticsConfig.a = new double[2];
        }
        double[] dArr = AnalyticsConfig.a;
        dArr[0] = d;
        dArr[1] = d2;
    }

    public void a(long j) {
        AnalyticsConfig.kContinueSessionMillis = j;
    }

    public void a(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        try {
            if (!this.h || !this.k) {
                b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.d.a(context.getClass().getName());
            }
            e();
        } catch (Throwable th) {
            MLog.e("Exception occurred in Mobclick.onResume(). ", th);
        }
    }

    public void a(Context context, int i) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (!this.h || !this.k) {
            b();
        }
        AnalyticsConfig.a(this.a, i);
    }

    public void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (eScenarioType != null) {
            int value = eScenarioType.toValue();
            if (value == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || value == MobclickAgent.EScenarioType.E_DUM_GAME.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
            } else {
                AnalyticsConfig.FLAG_DPLUS = false;
            }
            a(this.a, value);
        }
        if (this.h && this.k) {
            return;
        }
        b();
    }

    public void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (context == null) {
            MLog.e("unexpected null context in reportError");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        try {
            if (!this.h || !this.k) {
                b();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put(com.umeng.analytics.pro.b.L, 2);
            jSONObject.put(com.umeng.analytics.pro.b.M, str);
            jSONObject.put("__ii", this.e.d());
            Context context2 = this.a;
            UMWorkDispatch.sendEvent(context2, i.a.j, CoreProtocol.getInstance(context2), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, String str, Object obj) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in registerSuperProperty");
                return;
            }
            if (this.a == null) {
                this.a = context;
            }
            if (!this.h || !this.k) {
                b();
            }
            if (!TextUtils.isEmpty(str) && obj != null) {
                String strSubStr = HelperUtils.subStr(str, 128);
                if (Arrays.asList(com.umeng.analytics.pro.b.aq).contains(strSubStr)) {
                    MLog.e("SuperProperty  key is invalid.  ");
                    return;
                }
                if (obj instanceof String) {
                    obj = HelperUtils.subStr(obj.toString(), 256);
                }
                a(strSubStr, obj);
                Context context2 = this.a;
                UMWorkDispatch.sendEvent(context2, i.a.m, CoreProtocol.getInstance(context2), this.i.toString());
                return;
            }
            MLog.e("please check key or value, must not NULL!");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(Context context, String str, String str2, long j, int i) {
        if (context != null) {
            try {
                this.a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                    return;
                }
                return;
            }
        }
        if (!this.h || !this.k) {
            b();
        }
        m.a(this.a).a(str, str2, j, i);
    }

    public void a(Context context, String str, HashMap<String, Object> map) {
        if (context != null) {
            try {
                if (this.a == null) {
                    this.a = context;
                }
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                    return;
                }
                return;
            }
        }
        if (!this.h || !this.k) {
            b();
        }
        m.a(this.a).a(str, map);
    }

    public void a(Context context, String str, Map<String, Object> map) {
        if (context != null) {
            try {
                if (this.a == null) {
                    this.a = context;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (!this.h || !this.k) {
            b();
        }
        if (TextUtils.isEmpty(str)) {
            MLog.e("the eventName is empty! please check~");
            return;
        }
        String string = "";
        if (this.i == null) {
            this.i = new JSONObject();
        } else {
            string = this.i.toString();
        }
        String str2 = string;
        Context context2 = this.a;
        UMWorkDispatch.sendEvent(context2, 8194, CoreProtocol.getInstance(context2), new i.d(str, map, str2, System.currentTimeMillis()));
    }

    public void a(Context context, String str, Map<String, Object> map, long j) {
        if (context != null) {
            try {
                this.a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                    return;
                }
                return;
            }
        }
        if (!this.h || !this.k) {
            b();
        }
        m.a(this.a).a(str, map, j);
    }

    public void a(Context context, Throwable th) {
        if (context == null || th == null) {
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        try {
            if (!this.h || !this.k) {
                b();
            }
            a(this.a, DataHelper.convertExceptionToString(th));
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.e(e);
            }
        }
    }

    public void a(Context context, List<String> list) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in setFirstLaunchEvent");
                return;
            }
            if (this.a == null) {
                this.a = context;
            }
            if (!this.h || !this.k) {
                b();
            }
            m.a(this.a).a(list);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public void a(r rVar) {
        this.b = rVar;
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                String str = (String) obj;
                SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(this.a).edit();
                if (editorEdit == null || TextUtils.isEmpty(str)) {
                    return;
                }
                editorEdit.putString(g, this.i.toString()).commit();
            } catch (Throwable unused) {
            }
        }
    }

    public void a(String str) {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            return;
        }
        try {
            this.d.a(str);
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.analytics.pro.b.H, str);
            jSONObject.put("uid", str2);
            Context context = this.a;
            UMWorkDispatch.sendEvent(context, i.a.e, CoreProtocol.getInstance(context), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.n
    public void a(Throwable th) {
        try {
            this.d.a();
            Context context = this.a;
            if (context != null) {
                this.f.a(context);
                this.e.b(this.a, Long.valueOf(System.currentTimeMillis()));
                i.a(this.a).a();
                p.a(this.a);
                h.b(this.a);
                PreferenceWrapper.getDefault(this.a).edit().commit();
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(com.umeng.analytics.pro.b.L, 1);
                    jSONObject.put(com.umeng.analytics.pro.b.M, DataHelper.convertExceptionToString(th));
                    g.a(this.a).a(this.e.d(), jSONObject.toString(), 1);
                }
            }
            UMWorkDispatch.Quit();
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e);
            }
        }
    }

    public void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    public void a(boolean z) {
        AnalyticsConfig.CATCH_EXCEPTION = z;
    }

    public void b() {
        try {
            Context context = this.a;
            if (context == null) {
                return;
            }
            if (!this.h) {
                this.h = true;
                this.i = f(context);
                if (this.i == null) {
                    this.i = new JSONObject();
                }
                this.j = new JSONObject(this.i.toString());
            }
            if (Build.VERSION.SDK_INT > 13) {
                synchronized (this) {
                    if (!this.k && (this.a instanceof Activity)) {
                        this.f = new h((Activity) this.a);
                        this.k = true;
                    }
                }
            } else {
                this.k = true;
            }
            this.a = this.a.getApplicationContext();
        } catch (Throwable unused) {
        }
    }

    public void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onPause");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        try {
            if (!this.h || !this.k) {
                b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.d.b(context.getClass().getName());
            }
            f();
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
    }

    public void b(Context context, String str) {
        if (context == null) {
            MLog.e("unexpected null context in setSecret");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (!this.h || !this.k) {
            b();
        }
        AnalyticsConfig.a(this.a, str);
    }

    public void b(String str) {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            return;
        }
        try {
            this.d.b(str);
        } catch (Throwable unused) {
        }
    }

    public void b(boolean z) {
        AnalyticsConfig.ACTIVITY_DURATION_OPEN = z;
    }

    public JSONObject c() {
        return this.j;
    }

    public void c(Context context) {
        try {
            if (this.a == null && context != null) {
                this.a = context;
            }
            this.d.a();
            this.f.a(this.a);
            this.e.b(this.a, Long.valueOf(System.currentTimeMillis()));
            i.a(this.a).a();
            p.a(this.a);
            h.b(this.a);
            PreferenceWrapper.getDefault(this.a).edit().commit();
            UMWorkDispatch.Quit();
        } catch (Throwable unused) {
        }
    }

    public void c(Context context, String str) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in unregisterSuperProperty");
                return;
            }
            if (this.a == null) {
                this.a = context;
            }
            if (!this.h || !this.k) {
                b();
            }
            String strSubStr = HelperUtils.subStr(str, 128);
            if (this.i == null) {
                this.i = new JSONObject();
            }
            if (this.i.has(strSubStr)) {
                this.i.remove(strSubStr);
                Context context2 = this.a;
                UMWorkDispatch.sendEvent(context2, i.a.o, CoreProtocol.getInstance(context2), strSubStr);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public Object d(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            MLog.e("unexpected null context in getSuperProperty");
            return null;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (this.i != null) {
            String strSubStr = HelperUtils.subStr(str, 128);
            if (this.i.has(strSubStr)) {
                return this.i.opt(strSubStr);
            }
        } else {
            this.i = new JSONObject();
        }
        return null;
    }

    public String d(Context context) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            MLog.e("unexpected null context in getSuperProperties");
            return null;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (this.i != null) {
            return this.i.toString();
        }
        this.i = new JSONObject();
        return null;
    }

    public void d() {
        this.j = null;
    }

    public void e() {
        Context context = this.a;
        UMWorkDispatch.sendEvent(context, i.a.g, CoreProtocol.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        r rVar = this.b;
        if (rVar != null) {
            rVar.a();
        }
    }

    public void e(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in clearSuperProperties");
            return;
        }
        if (this.a == null) {
            this.a = context;
        }
        if (!this.h || !this.k) {
            b();
        }
        this.i = new JSONObject();
        Context context2 = this.a;
        UMWorkDispatch.sendEvent(context2, i.a.n, CoreProtocol.getInstance(context2), null);
    }

    public void f() {
        try {
            Context context = this.a;
            UMWorkDispatch.sendEvent(context, i.a.h, CoreProtocol.getInstance(context), Long.valueOf(System.currentTimeMillis()));
            Context context2 = this.a;
            UMWorkDispatch.sendEvent(context2, i.a.d, CoreProtocol.getInstance(context2), null);
            Context context3 = this.a;
            UMWorkDispatch.sendEvent(context3, 4099, CoreProtocol.getInstance(context3), null);
            Context context4 = this.a;
            UMWorkDispatch.sendEvent(context4, i.a.i, CoreProtocol.getInstance(context4), null);
        } catch (Throwable unused) {
        }
        r rVar = this.b;
        if (rVar != null) {
            rVar.b();
        }
    }

    public void g() {
        Context context = this.a;
        UMWorkDispatch.sendEvent(context, i.a.f, CoreProtocol.getInstance(context), null);
    }

    public void h() {
        try {
            if (this.i != null) {
                SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(this.a).edit();
                editorEdit.putString(g, this.i.toString());
                editorEdit.commit();
            } else {
                this.i = new JSONObject();
            }
        } catch (Throwable unused) {
        }
    }

    public JSONObject i() {
        try {
            if (this.i == null) {
                this.i = new JSONObject();
            }
        } catch (Throwable unused) {
        }
        return this.i;
    }

    public void j() {
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(this.a).edit();
            editorEdit.remove(g);
            editorEdit.commit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
