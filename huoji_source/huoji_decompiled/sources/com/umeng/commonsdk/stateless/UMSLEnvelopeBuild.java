package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONObject;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class UMSLEnvelopeBuild {
    private static final String TAG = "UMSLEnvelopeBuild";
    private static String cacheSystemheader;
    private static boolean isEncryptEnabled;
    public static Context mContext;
    public static String module;

    private synchronized c constructEnvelope(Context context, byte[] bArr) {
        String appkey;
        String appkey2;
        c cVarB;
        int iIntValue = -1;
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, "slcodex", null);
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, codexStr is " + strImprintProperty);
        try {
            if (!TextUtils.isEmpty(strImprintProperty)) {
                iIntValue = Integer.valueOf(strImprintProperty).intValue();
            }
        } catch (NumberFormatException e) {
            com.umeng.commonsdk.proguard.e.a(context, e);
        }
        if (iIntValue == 0) {
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, codexValue is 0");
            appkey = UMUtils.getAppkey(context);
        } else {
            if (iIntValue == 1) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, codexValue is 1");
                appkey2 = UMUtils.getAppkey(context);
            } else if (isEncryptEnabled) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, isEncryptEnabled is true");
                appkey2 = UMUtils.getAppkey(context);
            } else {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, isEncryptEnabled is false");
                appkey = UMUtils.getAppkey(context);
            }
            cVarB = c.b(context, appkey2, bArr);
        }
        cVarB = c.a(context, appkey, bArr);
        return cVarB;
    }

    private synchronized JSONObject makeErrorResult(int i, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("exception", i);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public static void setEncryptEnabled(boolean z) {
        isEncryptEnabled = z;
    }

    public synchronized JSONObject buildSLBaseHeader(Context context) {
        JSONObject jSONObject;
        String str;
        String str2;
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] begin build hader, thread is " + Thread.currentThread());
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            if (TextUtils.isEmpty(cacheSystemheader)) {
                jSONObject = new JSONObject();
                jSONObject.put(v.k, DeviceConfig.getAppMD5Signature(applicationContext));
                jSONObject.put(v.l, DeviceConfig.getAppSHA1Key(applicationContext));
                jSONObject.put(v.m, DeviceConfig.getAppHashKey(applicationContext));
                jSONObject.put("app_version", DeviceConfig.getAppVersionName(applicationContext));
                jSONObject.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(applicationContext)));
                jSONObject.put(v.q, DeviceConfig.getDeviceIdUmengMD5(applicationContext));
                jSONObject.put("cpu", DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(applicationContext);
                if (TextUtils.isEmpty(mccmnc)) {
                    jSONObject.put(v.w, "");
                } else {
                    jSONObject.put(v.w, mccmnc);
                }
                String subOSName = DeviceConfig.getSubOSName(applicationContext);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject.put(v.F, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(applicationContext);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject.put(v.G, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(applicationContext);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject.put(v.ab, deviceType);
                }
                jSONObject.put("package_name", DeviceConfig.getPackageName(applicationContext));
                jSONObject.put(v.p, "Android");
                jSONObject.put("device_id", DeviceConfig.getDeviceId(applicationContext));
                jSONObject.put("device_model", Build.MODEL);
                jSONObject.put(v.z, Build.BOARD);
                jSONObject.put(v.A, Build.BRAND);
                jSONObject.put(v.B, Build.TIME);
                jSONObject.put(v.C, Build.MANUFACTURER);
                jSONObject.put(v.D, Build.ID);
                jSONObject.put("device_name", Build.DEVICE);
                jSONObject.put("os", "Android");
                jSONObject.put("os_version", Build.VERSION.RELEASE);
                int[] resolutionArray = DeviceConfig.getResolutionArray(applicationContext);
                if (resolutionArray != null) {
                    jSONObject.put(v.u, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                }
                jSONObject.put(v.v, DeviceConfig.getMac(applicationContext));
                jSONObject.put("timezone", DeviceConfig.getTimeZone(applicationContext));
                String[] localeInfo = DeviceConfig.getLocaleInfo(applicationContext);
                jSONObject.put(v.J, localeInfo[0]);
                jSONObject.put("language", localeInfo[1]);
                jSONObject.put(v.K, DeviceConfig.getNetworkOperatorName(applicationContext));
                jSONObject.put(v.n, DeviceConfig.getAppName(applicationContext));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(applicationContext);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    str = v.L;
                    str2 = "wifi";
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    str = v.L;
                    str2 = "2G/3G";
                } else {
                    str = v.L;
                    str2 = "unknow";
                }
                jSONObject.put(str, str2);
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject.put(v.M, networkAccessMode[1]);
                }
                jSONObject.put(v.b, com.umeng.commonsdk.statistics.e.a);
                if (!TextUtils.isEmpty(module)) {
                    jSONObject.put(v.c, module);
                }
                cacheSystemheader = jSONObject.toString();
            } else {
                try {
                    jSONObject = new JSONObject(cacheSystemheader);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
            if (jSONObject == null) {
                return null;
            }
            jSONObject.put("channel", UMUtils.getChannel(applicationContext));
            jSONObject.put("appkey", UMUtils.getAppkey(applicationContext));
            try {
                q qVar = new q(applicationContext);
                if (!TextUtils.isEmpty(qVar.a())) {
                    jSONObject.put(v.d, qVar.a());
                }
            } catch (Exception unused2) {
            }
            try {
                String strImprintProperty = UMEnvelopeBuild.imprintProperty(applicationContext, v.e, null);
                if (!TextUtils.isEmpty(strImprintProperty)) {
                    jSONObject.put(v.e, strImprintProperty);
                }
            } catch (Exception unused3) {
            }
            if (jSONObject != null && jSONObject.length() > 0) {
                JSONObject jSONObject2 = new JSONObject();
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build header end , header is " + jSONObject.toString() + ", thread is " + Thread.currentThread());
                return jSONObject2.put("header", jSONObject);
            }
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(applicationContext, th);
        }
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build header end , header is null !!! thread is " + Thread.currentThread());
        return null;
    }

    public synchronized JSONObject buildSLEnvelope(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        c cVarConstructEnvelope;
        String str2;
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, heade is " + jSONObject.toString());
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, body is " + jSONObject2.toString());
        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, thread is " + Thread.currentThread());
        if (context == null || jSONObject == null || jSONObject2 == null || str == null) {
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, context is null or header is null or body is null");
            return makeErrorResult(110, null);
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (jSONObject != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                        try {
                            jSONObject.put(str2, jSONObject2.opt(str2));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (jSONObject != null) {
                try {
                    com.umeng.commonsdk.statistics.idtracking.e eVarA = com.umeng.commonsdk.statistics.idtracking.e.a(applicationContext);
                    if (eVarA != null) {
                        eVarA.a();
                        String strEncodeToString = Base64.encodeToString(new aj().a(eVarA.b()), 0);
                        if (!TextUtils.isEmpty(strEncodeToString)) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("header");
                            jSONObject3.put(v.R, strEncodeToString);
                            jSONObject.put("header", jSONObject3);
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (jSONObject != null && f.a(jSONObject.toString().getBytes().length, a.a)) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, json overstep!!!! size is " + jSONObject.toString().getBytes().length);
                return makeErrorResult(113, jSONObject);
            }
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, json size is " + jSONObject.toString().getBytes().length);
            if (jSONObject != null) {
                cVarConstructEnvelope = constructEnvelope(applicationContext, jSONObject.toString().getBytes());
                if (cVarConstructEnvelope == null) {
                    com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, envelope is null !!!!");
                    return makeErrorResult(111, jSONObject);
                }
            } else {
                cVarConstructEnvelope = null;
            }
            if (cVarConstructEnvelope != null && f.a(cVarConstructEnvelope.b().length, a.b)) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, envelope overstep!!!! size is " + cVarConstructEnvelope.b().length);
                return makeErrorResult(114, jSONObject);
            }
            if (!f.a(applicationContext, Base64.encodeToString(str.getBytes(), 0), Base64.encodeToString((str + "_" + System.currentTimeMillis()).getBytes(), 0), cVarConstructEnvelope.b())) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, save fail ----->>>>>");
                return makeErrorResult(101, jSONObject);
            }
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope, save ok ----->>>>>");
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] envelope file size is " + jSONObject.toString().getBytes().length);
            new d(applicationContext);
            d.b(273);
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] build envelope end, thread is " + Thread.currentThread());
            return jSONObject;
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context, th);
            com.umeng.commonsdk.statistics.common.e.a("walle", "build envelope end, thread is " + Thread.currentThread());
            return makeErrorResult(110, null);
        }
    }
}
