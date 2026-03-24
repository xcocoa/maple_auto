package com.umeng.commonsdk.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import androidx.appcompat.widget.ActivityChooserModel;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.r;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", j.c());
            jSONObject.put("t", j.d());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void a(Context context) {
        com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            try {
                if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                    UMWorkDispatch.sendEvent(context, a.e, b.a(context).a(), null);
                }
            } catch (Throwable th) {
                e.a(context, th);
            }
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    private static void a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, z ? 1 : 0);
        } catch (Exception unused) {
        }
    }

    public static JSONObject b() {
        int i = Build.VERSION.SDK_INT;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_bl", Build.BOOTLOADER);
            if (i >= 14) {
                jSONObject.put("a_rv", Build.getRadioVersion());
            }
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            int i2 = 0;
            if (i >= 21) {
                JSONArray jSONArray = new JSONArray();
                int i3 = 0;
                while (true) {
                    String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
                    if (i3 >= strArr.length) {
                        break;
                    }
                    jSONArray.put(strArr[i3]);
                    i3++;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("a_s32", jSONArray);
                }
            }
            if (i >= 21) {
                JSONArray jSONArray2 = new JSONArray();
                int i4 = 0;
                while (true) {
                    String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
                    if (i4 >= strArr2.length) {
                        break;
                    }
                    jSONArray2.put(strArr2[i4]);
                    i4++;
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put("a_s64", jSONArray2);
                }
            }
            if (i >= 21) {
                JSONArray jSONArray3 = new JSONArray();
                while (true) {
                    String[] strArr3 = Build.SUPPORTED_ABIS;
                    if (i2 >= strArr3.length) {
                        break;
                    }
                    jSONArray3.put(strArr3[i2]);
                    i2++;
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("a_sa", jSONArray3);
                }
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (i >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void b(Context context) {
        if (context != null) {
            try {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] begin by not stateful--->>>");
                context = context.getApplicationContext();
                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                JSONObject jSONObjectBuildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                if (jSONObjectBuildSLBaseHeader != null && jSONObjectBuildSLBaseHeader.has("header")) {
                    try {
                        JSONObject jSONObject = (JSONObject) jSONObjectBuildSLBaseHeader.opt("header");
                        if (jSONObject != null) {
                            jSONObject.put(v.aq, a.d);
                        }
                    } catch (Exception unused) {
                    }
                }
                com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] header is " + jSONObjectBuildSLBaseHeader.toString());
                JSONObject jSONObjectC = c(context);
                com.umeng.commonsdk.statistics.common.e.a("walle", "[internal] body is " + jSONObjectC.toString());
                com.umeng.commonsdk.statistics.common.e.a("walle", uMSLEnvelopeBuild.buildSLEnvelope(context, jSONObjectBuildSLBaseHeader, jSONObjectC, a.a).toString());
            } catch (Throwable th) {
                e.a(context, th);
            }
        }
    }

    private static void b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String strA = t.a(context);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(strA);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(t.d)) {
                    jSONObject.put(t.d, jSONObject2.opt(t.d));
                }
                if (jSONObject2.has(t.c)) {
                    jSONObject.put(t.c, jSONObject2.opt(t.c));
                }
                if (jSONObject2.has(t.b)) {
                    jSONObject.put(t.b, jSONObject2.opt(t.b));
                }
            } catch (Exception unused) {
            }
        }
    }

    public static JSONObject c(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                try {
                    JSONArray jSONArrayO = o(applicationContext);
                    if (jSONArrayO != null && jSONArrayO.length() > 0) {
                        jSONObject2.put("run_server", jSONArrayO);
                    }
                } catch (Exception e) {
                    e.a(applicationContext, e);
                }
                try {
                    String strK = j.k(applicationContext);
                    if (!TextUtils.isEmpty(strK)) {
                        jSONObject2.put("imsi", strK);
                    }
                } catch (Exception e2) {
                    e.a(applicationContext, e2);
                }
                try {
                    String strL = j.l(applicationContext);
                    if (!TextUtils.isEmpty(strL)) {
                        jSONObject2.put("meid", strL);
                    }
                } catch (Exception e3) {
                    e.a(applicationContext, e3);
                }
                try {
                    jSONObject.put(com.umeng.commonsdk.framework.c.d, jSONObject2);
                } catch (JSONException e4) {
                    e.a(applicationContext, e4);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject d(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                JSONArray jSONArrayO = o(applicationContext);
                if (jSONArrayO != null && jSONArrayO.length() > 0) {
                    jSONObject2.put("rs", jSONArrayO);
                }
            } catch (Exception e) {
                e.a(applicationContext, e);
            }
            try {
                JSONArray jSONArrayP = p(applicationContext);
                if (jSONArrayP != null && jSONArrayP.length() > 0) {
                    jSONObject2.put("bstn", jSONArrayP);
                }
            } catch (Exception e2) {
                e.a(applicationContext, e2);
            }
            try {
                JSONArray jSONArrayQ = q(applicationContext);
                if (jSONArrayQ != null && jSONArrayQ.length() > 0) {
                    jSONObject2.put("by", jSONArrayQ);
                }
            } catch (Exception e3) {
                e.a(applicationContext, e3);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (Exception e4) {
                e.a(applicationContext, e4);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (Exception e5) {
                e.a(applicationContext, e5);
            }
            try {
                JSONObject jSONObjectA = a();
                if (jSONObjectA != null && jSONObjectA.length() > 0) {
                    jSONObject2.put("sd", jSONObjectA);
                }
            } catch (Exception e6) {
                e.a(applicationContext, e6);
            }
            try {
                JSONObject jSONObjectB = b();
                if (jSONObjectB != null && jSONObjectB.length() > 0) {
                    jSONObject2.put("build", jSONObjectB);
                }
            } catch (Exception e7) {
                e.a(applicationContext, e7);
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONArray jSONArrayF = f(applicationContext);
                if (jSONArrayF != null && jSONArrayF.length() > 0) {
                    try {
                        jSONObject3.put("a_sr", jSONArrayF);
                    } catch (JSONException unused) {
                    }
                }
                JSONArray jSONArrayC = r.c(applicationContext);
                if (jSONArrayC != null && jSONArrayC.length() > 0) {
                    try {
                        jSONObject3.put("stat", jSONArrayC);
                    } catch (JSONException unused2) {
                    }
                }
                jSONObject2.put("sr", jSONObject3);
            } catch (Exception e8) {
                e.a(applicationContext, e8);
            }
            try {
                JSONObject jSONObjectG = g(applicationContext);
                if (jSONObjectG != null && jSONObjectG.length() > 0) {
                    jSONObject2.put("scr", jSONObjectG);
                }
            } catch (Exception e9) {
                e.a(applicationContext, e9);
            }
            try {
                JSONObject jSONObjectH = h(applicationContext);
                if (jSONObjectH != null && jSONObjectH.length() > 0) {
                    jSONObject2.put("sinfo", jSONObjectH);
                }
            } catch (Exception e10) {
                e.a(applicationContext, e10);
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                JSONArray jSONArrayE = j.e(applicationContext);
                if (jSONArrayE != null && jSONArrayE.length() > 0) {
                    try {
                        jSONObject4.put("wl", jSONArrayE);
                    } catch (JSONException unused3) {
                    }
                }
                JSONArray jSONArrayI = i(applicationContext);
                if (jSONArrayI != null && jSONArrayI.length() > 0) {
                    try {
                        jSONObject4.put("a_wls", jSONArrayI);
                    } catch (JSONException unused4) {
                    }
                }
                jSONObject2.put("winfo", jSONObject4);
            } catch (Exception e11) {
                e.a(applicationContext, e11);
            }
            try {
                JSONArray jSONArrayJ = j(applicationContext);
                if (jSONArrayJ != null && jSONArrayJ.length() > 0) {
                    jSONObject2.put("input", jSONArrayJ);
                }
            } catch (Exception e12) {
                e.a(applicationContext, e12);
            }
            try {
                JSONObject jSONObjectO = j.o(applicationContext);
                if (jSONObjectO != null && jSONObjectO.length() > 0) {
                    jSONObject2.put("bt", jSONObjectO);
                }
            } catch (Exception e13) {
                e.a(applicationContext, e13);
            }
            try {
                JSONArray jSONArrayK = k(applicationContext);
                if (jSONArrayK != null && jSONArrayK.length() > 0) {
                    jSONObject2.put("cam", jSONArrayK);
                }
            } catch (Exception e14) {
                e.a(applicationContext, e14);
            }
            try {
                JSONArray jSONArrayL = l(applicationContext);
                if (jSONArrayL != null && jSONArrayL.length() > 0) {
                    jSONObject2.put("appls", jSONArrayL);
                }
            } catch (Exception e15) {
                e.a(applicationContext, e15);
            }
            try {
                JSONObject jSONObjectM = m(applicationContext);
                if (jSONObjectM != null && jSONObjectM.length() > 0) {
                    jSONObject2.put("mem", jSONObjectM);
                }
            } catch (Exception e16) {
                e.a(applicationContext, e16);
            }
            try {
                JSONObject jSONObjectN = n(applicationContext);
                if (jSONObjectN != null && jSONObjectN.length() > 0) {
                    jSONObject2.put("lbs", jSONObjectN);
                }
            } catch (Exception e17) {
                e.a(applicationContext, e17);
            }
            try {
                jSONObject.put(v.ag, jSONObject2);
            } catch (JSONException e18) {
                e.a(applicationContext, e18);
            }
        }
        return jSONObject;
    }

    public static String e(Context context) {
        try {
            com.umeng.commonsdk.statistics.idtracking.e eVarA = com.umeng.commonsdk.statistics.idtracking.e.a(context);
            if (eVarA == null) {
                return null;
            }
            eVarA.a();
            String strEncodeToString = Base64.encodeToString(new aj().a(eVarA.b()), 0);
            if (TextUtils.isEmpty(strEncodeToString)) {
                return null;
            }
            return strEncodeToString;
        } catch (Exception e) {
            e.a(context, e);
            return null;
        }
    }

    public static JSONArray f(Context context) {
        if (context != null) {
            return s.g(context.getApplicationContext());
        }
        return null;
    }

    public static JSONObject g(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", j.h(context));
                jSONObject.put("a_nav_h", j.i(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e) {
                e.a(context, e);
            }
        }
        return jSONObject;
    }

    public static JSONObject h(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", j.a(applicationContext, packageName));
                jSONObject.put("a_alut", j.b(applicationContext, packageName));
                jSONObject.put("a_c", j.c(applicationContext, packageName));
                jSONObject.put("a_uid", j.d(applicationContext, packageName));
                if (j.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("a_ua", j.s(applicationContext));
                jSONObject.put("tf", j.b());
                jSONObject.put("s_fs", j.a(applicationContext));
                jSONObject.put("a_meid", j.l(applicationContext));
                jSONObject.put("a_imsi", j.k(applicationContext));
                jSONObject.put("st", j.f());
                String strB = s.b(applicationContext);
                if (!TextUtils.isEmpty(strB)) {
                    try {
                        jSONObject.put("a_iccid", strB);
                    } catch (Exception unused) {
                    }
                }
                String strC = s.c(applicationContext);
                if (!TextUtils.isEmpty(strC)) {
                    try {
                        jSONObject.put("a_simei", strC);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", j.g());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e) {
                e.a(applicationContext, e);
            }
        }
        return jSONObject;
    }

    public static JSONArray i(Context context) {
        Context applicationContext;
        List<ScanResult> listB;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (listB = j.b((applicationContext = context.getApplicationContext()))) != null && listB.size() > 0) {
            for (ScanResult scanResult : listB) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_bssid", scanResult.BSSID);
                    jSONObject.put("a_ssid", scanResult.BSSID);
                    jSONObject.put("a_cap", scanResult.capabilities);
                    jSONObject.put("a_fcy", scanResult.frequency);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject.put("a_c0", scanResult.centerFreq0);
                        jSONObject.put("a_c1", scanResult.centerFreq1);
                        jSONObject.put("a_cw", scanResult.channelWidth);
                        if (scanResult.is80211mcResponder()) {
                            jSONObject.put("a_is80211", 1);
                        } else {
                            jSONObject.put("a_is80211", 0);
                        }
                        if (scanResult.isPasspointNetwork()) {
                            jSONObject.put("a_isppn", 1);
                        } else {
                            jSONObject.put("a_isppn", 0);
                        }
                        jSONObject.put("a_ofn", scanResult.operatorFriendlyName);
                        jSONObject.put("a_vn", scanResult.venueName);
                    }
                    jSONObject.put("a_dc", scanResult.describeContents());
                    jSONArray.put(jSONObject);
                } catch (Exception e) {
                    e.a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray j(Context context) {
        Context applicationContext;
        List<InputMethodInfo> listM;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (listM = j.m((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : listM) {
                try {
                    CharSequence charSequenceLoadLabel = inputMethodInfo.loadLabel(applicationContext.getPackageManager());
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_la", charSequenceLoadLabel);
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (Exception e) {
                    e.a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray k(Context context) {
        Context applicationContext;
        List<r.a> listE;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (listE = r.e((applicationContext = context.getApplicationContext()))) != null && !listE.isEmpty()) {
            for (r.a aVar : listE) {
                if (aVar != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_w", aVar.a);
                        jSONObject.put("a_h", aVar.b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e) {
                        e.a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray l(Context context) {
        Context applicationContext;
        List<j.a> listP;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (listP = j.p((applicationContext = context.getApplicationContext()))) != null && !listP.isEmpty()) {
            for (j.a aVar : listP) {
                if (aVar != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", aVar.a);
                        jSONObject.put("a_la", aVar.b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e) {
                        e.a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject m(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo memoryInfoQ;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (memoryInfoQ = j.q((applicationContext = context.getApplicationContext()))) != null) {
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    jSONObject.put("t", memoryInfoQ.totalMem);
                }
                jSONObject.put("f", memoryInfoQ.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e) {
                e.a(applicationContext, e);
            }
        }
        return jSONObject;
    }

    private static JSONObject n(Context context) {
        if (context != null) {
            return h.b(context.getApplicationContext());
        }
        return null;
    }

    private static JSONArray o(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null || runningServices.isEmpty()) {
                return null;
            }
            int i = 0;
            while (i < runningServices.size()) {
                if (runningServices.get(i) != null && runningServices.get(i).service != null && runningServices.get(i).service.getClassName() != null && runningServices.get(i).service.getPackageName() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i).service.getPackageName().toString());
                        jSONArray = jSONArray;
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                i++;
                jSONArray = jSONArray;
            }
            if (jSONArray == null) {
                return jSONArray;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject2.put("ls", jSONArray);
            } catch (JSONException unused2) {
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("sers", jSONObject2);
            } catch (JSONException unused3) {
            }
            JSONArray jSONArray2 = new JSONArray();
            try {
                jSONArray2.put(jSONObject3);
                return jSONArray2;
            } catch (Throwable th) {
                th = th;
                jSONArray = jSONArray2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        e.a(context, th);
        return jSONArray;
    }

    private static JSONArray p(Context context) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObjectD = s.d(context);
        if (jSONObjectD != null) {
            try {
                String strE = s.e(context);
                if (!TextUtils.isEmpty(strE)) {
                    jSONObjectD.put("sig", strE);
                }
                jSONArray.put(jSONObjectD);
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    private static JSONArray q(Context context) {
        JSONArray jSONArray = new JSONArray();
        String strF = s.f(context);
        if (!TextUtils.isEmpty(strF)) {
            try {
                jSONArray.put(new JSONObject(strF));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    private static JSONArray r(Context context) {
        JSONArray jSONArray = new JSONArray();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String strA = s.a(applicationContext);
            JSONObject jSONObject = null;
            if (!TextUtils.isEmpty(strA)) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(v.T, strA);
                    } catch (Exception unused) {
                    }
                    jSONObject = jSONObject2;
                } catch (Exception unused2) {
                }
            }
            String strB = s.b(applicationContext);
            if (!TextUtils.isEmpty(strB)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused3) {
                    }
                }
                jSONObject.put(v.U, strB);
            }
            String strC = s.c(applicationContext);
            if (!TextUtils.isEmpty(strC)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused4) {
                    }
                }
                jSONObject.put(v.V, strC);
            }
            JSONObject jSONObjectD = s.d(applicationContext);
            if (jSONObjectD != null) {
                try {
                    String strE = s.e(applicationContext);
                    if (!TextUtils.isEmpty(strE)) {
                        jSONObjectD.put("signalscale", strE);
                    }
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put(v.X, jSONObjectD);
                } catch (Exception unused5) {
                }
            }
            String strF = s.f(applicationContext);
            if (!TextUtils.isEmpty(strF)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused6) {
                    }
                }
                jSONObject.put("battery", new JSONObject(strF));
            }
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }
}
