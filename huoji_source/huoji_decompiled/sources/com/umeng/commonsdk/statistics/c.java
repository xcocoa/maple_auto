package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.g;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a = null;
    private static final String b = "EnvelopeManager";
    private static StatTracer c;
    private static ImLatent d;
    private static String e;
    private static boolean g;
    private int f = 0;

    private int a(Context context, Envelope envelope, String str, String str2) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        return com.umeng.commonsdk.framework.b.a(context, str + "&&" + str2 + "_" + System.currentTimeMillis() + "_envelope.log", envelope.toBinary());
    }

    public static long a(Context context) {
        long j = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        JSONObject jSONObjectB = b(context);
        if (jSONObjectB != null && jSONObjectB.toString() != null && jSONObjectB.toString().getBytes() != null) {
            long length = jSONObjectB.toString().getBytes().length;
            if (com.umeng.commonsdk.statistics.common.e.a) {
                Log.i(b, "headerLen size is " + length);
            }
            j -= length;
        }
        if (com.umeng.commonsdk.statistics.common.e.a) {
            Log.i(b, "free size is " + j);
        }
        return j;
    }

    private Envelope a(Context context, byte[] bArr) {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int iIntValue = -1;
        try {
            if (!TextUtils.isEmpty(strImprintProperty)) {
                iIntValue = Integer.valueOf(strImprintProperty).intValue();
            }
        } catch (NumberFormatException e2) {
            com.umeng.commonsdk.proguard.e.a(context, e2);
        }
        return (iIntValue != 0 && (iIntValue == 1 || g)) ? Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr) : Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    private JSONObject a(int i, JSONObject jSONObject) {
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

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt("header");
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && (next instanceof String) && (str = next) != null && jSONObject2.opt(str) != null) {
                    try {
                        jSONObject3.put(str, jSONObject2.opt(str));
                        if (str.equals(com.umeng.analytics.pro.b.i) && (jSONObject2.opt(str) instanceof Integer)) {
                            this.f = ((Integer) jSONObject2.opt(str)).intValue();
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void a(boolean z) {
        g = z;
    }

    private static JSONObject b(Context context) {
        JSONObject jSONObject;
        String str = "2G/3G";
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (TextUtils.isEmpty(e)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(v.k, DeviceConfig.getAppMD5Signature(context));
                jSONObject2.put(v.l, DeviceConfig.getAppSHA1Key(context));
                jSONObject2.put(v.m, DeviceConfig.getAppHashKey(context));
                jSONObject2.put("app_version", DeviceConfig.getAppVersionName(context));
                jSONObject2.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject2.put(v.q, DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject2.put("cpu", DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (TextUtils.isEmpty(mccmnc)) {
                    jSONObject2.put(v.w, "");
                } else {
                    jSONObject2.put(v.w, mccmnc);
                }
                String subOSName = DeviceConfig.getSubOSName(context);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject2.put(v.F, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(context);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject2.put(v.G, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject2.put(v.ab, deviceType);
                }
                jSONObject2.put("package_name", DeviceConfig.getPackageName(context));
                jSONObject2.put(v.p, "Android");
                jSONObject2.put("device_id", DeviceConfig.getDeviceId(context));
                jSONObject2.put("device_model", Build.MODEL);
                jSONObject2.put(v.z, Build.BOARD);
                jSONObject2.put(v.A, Build.BRAND);
                jSONObject2.put(v.B, Build.TIME);
                jSONObject2.put(v.C, Build.MANUFACTURER);
                jSONObject2.put(v.D, Build.ID);
                jSONObject2.put("device_name", Build.DEVICE);
                jSONObject2.put("os", "Android");
                jSONObject2.put("os_version", Build.VERSION.RELEASE);
                int[] resolutionArray = DeviceConfig.getResolutionArray(context);
                if (resolutionArray != null) {
                    jSONObject2.put(v.u, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                }
                jSONObject2.put(v.v, DeviceConfig.getMac(context));
                jSONObject2.put("timezone", DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject2.put(v.J, localeInfo[0]);
                jSONObject2.put("language", localeInfo[1]);
                jSONObject2.put(v.K, DeviceConfig.getNetworkOperatorName(context));
                jSONObject2.put(v.n, DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    str = "wifi";
                } else if (!"2G/3G".equals(networkAccessMode[0])) {
                    str = "unknow";
                }
                jSONObject2.put(v.L, str);
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject2.put(v.M, networkAccessMode[1]);
                }
                jSONObject2.put(v.b, e.a);
                if (!TextUtils.isEmpty(a)) {
                    jSONObject2.put(v.c, a);
                }
                e = jSONObject2.toString();
                jSONObject = jSONObject2;
            } else {
                try {
                    jSONObject = new JSONObject(e);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
            if (jSONObject == null) {
                return null;
            }
            try {
                jSONObject.put(v.N, sharedPreferences.getInt("successful_request", 0));
                jSONObject.put(v.O, sharedPreferences.getInt(v.O, 0));
                jSONObject.put(v.P, sharedPreferences.getInt("last_request_spent_ms", 0));
            } catch (Exception unused2) {
            }
            jSONObject.put("channel", UMUtils.getChannel(context));
            jSONObject.put("appkey", UMUtils.getAppkey(context));
            try {
                String deviceToken = UMUtils.getDeviceToken(context);
                if (!TextUtils.isEmpty(deviceToken)) {
                    jSONObject.put(v.a, deviceToken);
                }
            } catch (Exception e2) {
                com.umeng.commonsdk.proguard.e.a(context, e2);
            }
            try {
                q qVar = new q(context);
                if (!TextUtils.isEmpty(qVar.a())) {
                    jSONObject.put(v.d, qVar.a());
                }
            } catch (Exception e3) {
                com.umeng.commonsdk.proguard.e.a(context, e3);
            }
            try {
                String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, v.e, null);
                if (!TextUtils.isEmpty(strImprintProperty)) {
                    jSONObject.put(v.e, strImprintProperty);
                }
            } catch (Exception e4) {
                com.umeng.commonsdk.proguard.e.a(context, e4);
            }
            try {
                com.umeng.commonsdk.statistics.proto.d dVarA = g.a(context).a();
                if (dVarA != null) {
                    jSONObject.put(v.Q, Base64.encodeToString(new aj().a(dVarA), 0));
                }
            } catch (Exception e5) {
                com.umeng.commonsdk.proguard.e.a(context, e5);
            }
            if (jSONObject != null && jSONObject.length() > 0) {
                return new JSONObject().put("header", jSONObject);
            }
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context, th);
        }
        return null;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        JSONObject jSONObject4;
        JSONObject jSONObject5;
        String str;
        String string;
        Envelope envelopeA;
        String str2;
        if (com.umeng.commonsdk.statistics.common.e.a && jSONObject != null && jSONObject2 != null) {
            Log.i(b, "headerJSONObject size is " + jSONObject.toString().getBytes().length);
            Log.i(b, "bodyJSONObject size is " + jSONObject2.toString().getBytes().length);
        }
        if (context == null || jSONObject2 == null) {
            return a(110, (JSONObject) null);
        }
        try {
            JSONObject jSONObjectB = b(context);
            if (jSONObjectB != null && jSONObject != null) {
                jSONObjectB = a(jSONObjectB, jSONObject);
            }
            if (jSONObjectB != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                        try {
                            jSONObjectB.put(str2, jSONObject2.opt(str2));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (jSONObjectB != null) {
                StringBuilder sb = new StringBuilder();
                if (jSONObjectB.length() > 0) {
                    if (jSONObjectB.has("push")) {
                        String strOptString = jSONObjectB.optJSONObject("header").optString(v.ao);
                        if (!TextUtils.isEmpty("p") && !TextUtils.isEmpty(strOptString)) {
                            sb.append("p");
                            sb.append("==");
                            sb.append(strOptString);
                            sb.append("&=");
                        }
                    }
                    if (jSONObjectB.has("share")) {
                        String strOptString2 = jSONObjectB.optJSONObject("header").optString(v.ap);
                        if (!TextUtils.isEmpty(v.al) && !TextUtils.isEmpty(strOptString2)) {
                            sb.append(v.al);
                            sb.append("==");
                            sb.append(strOptString2);
                            sb.append("&=");
                        }
                    }
                    if (jSONObjectB.has("analytics")) {
                        String str3 = jSONObjectB.has("dplus") ? v.aj : "a";
                        String strOptString3 = jSONObjectB.optJSONObject("header").optString("sdk_version");
                        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(strOptString3)) {
                            sb.append(str3);
                            sb.append("==");
                            sb.append(strOptString3);
                            sb.append("&=");
                        }
                    }
                    if (jSONObjectB.has("dplus")) {
                        String strOptString4 = jSONObjectB.optJSONObject("header").optString("sdk_version");
                        if (jSONObjectB.has("analytics")) {
                            if (!sb.toString().contains(v.aj) && !TextUtils.isEmpty(v.aj) && !TextUtils.isEmpty(strOptString4)) {
                                sb.append(v.aj);
                                sb.append("==");
                                sb.append(strOptString4);
                                sb.append("&=");
                            }
                        } else if (!TextUtils.isEmpty("d") && !TextUtils.isEmpty(strOptString4)) {
                            sb.append("d");
                            sb.append("==");
                            sb.append(strOptString4);
                            sb.append("&=");
                        }
                    }
                    if (jSONObjectB.has(v.ag)) {
                        String strOptString5 = jSONObjectB.optJSONObject("header").optString(v.aq);
                        if (!TextUtils.isEmpty("i") && !TextUtils.isEmpty(strOptString5)) {
                            sb.append("i");
                            sb.append("==");
                            sb.append(strOptString5);
                            sb.append("&=");
                        }
                    }
                }
                string = sb.toString();
                if (TextUtils.isEmpty(string)) {
                    return a(101, jSONObjectB);
                }
                if (string.endsWith("&=")) {
                    string = string.substring(0, string.length() - 2);
                }
            } else {
                string = null;
            }
            if (jSONObjectB != null) {
                try {
                    com.umeng.commonsdk.statistics.idtracking.e eVarA = com.umeng.commonsdk.statistics.idtracking.e.a(context);
                    if (eVarA != null) {
                        eVarA.a();
                        String strEncodeToString = Base64.encodeToString(new aj().a(eVarA.b()), 0);
                        if (!TextUtils.isEmpty(strEncodeToString)) {
                            JSONObject jSONObject6 = jSONObjectB.getJSONObject("header");
                            jSONObject6.put(v.R, strEncodeToString);
                            jSONObjectB.put("header", jSONObject6);
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (c == null) {
                StatTracer statTracer = StatTracer.getInstance(context);
                c = statTracer;
                d = ImLatent.getService(context, statTracer);
            }
            ImLatent imLatent = d;
            if (imLatent != null && imLatent.shouldStartLatency()) {
                long delayTime = d.getDelayTime();
                long elapsedTime = d.getElapsedTime();
                if (jSONObjectB != null) {
                    try {
                        JSONObject jSONObject7 = new JSONObject();
                        JSONObject jSONObject8 = new JSONObject();
                        jSONObject8.put(v.av, elapsedTime / 1000);
                        jSONObject8.put(v.au, delayTime);
                        jSONObject7.put(v.at, jSONObject8);
                        JSONObject jSONObject9 = jSONObjectB.getJSONObject("header");
                        jSONObject9.put(v.as, jSONObject7);
                        jSONObjectB.put("header", jSONObject9);
                    } catch (Exception unused3) {
                    }
                }
            }
            if (jSONObjectB != null && DataHelper.largeThanMaxSize(jSONObjectB.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObjectB);
            }
            if (jSONObjectB != null) {
                envelopeA = a(context, jSONObjectB.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObjectB);
                }
            } else {
                envelopeA = null;
            }
            if (envelopeA != null && DataHelper.largeThanMaxSize(envelopeA.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObjectB);
            }
            int iA = a(context, envelopeA, string, jSONObjectB != null ? jSONObjectB.optJSONObject("header").optString("app_version") : null);
            if (iA != 0) {
                return a(iA, jSONObjectB);
            }
            if (com.umeng.commonsdk.statistics.common.e.a) {
                Log.i(b, "constructHeader size is " + jSONObjectB.toString().getBytes().length);
            }
            return jSONObjectB;
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(context, th);
            if (jSONObject != null) {
                try {
                    jSONObject4 = new JSONObject();
                } catch (Exception e2) {
                    e = e2;
                    jSONObject3 = null;
                }
                try {
                    jSONObject4.put("header", jSONObject);
                } catch (JSONException unused4) {
                } catch (Exception e3) {
                    e = e3;
                    jSONObject3 = jSONObject4;
                    com.umeng.commonsdk.proguard.e.a(context, e);
                    return a(110, jSONObject3);
                }
                jSONObject5 = jSONObject2;
                jSONObject3 = jSONObject4;
            } else {
                jSONObject5 = jSONObject2;
                jSONObject3 = null;
            }
            if (jSONObject5 != null) {
                if (jSONObject3 == null) {
                    try {
                        jSONObject3 = new JSONObject();
                    } catch (Exception e4) {
                        e = e4;
                        com.umeng.commonsdk.proguard.e.a(context, e);
                        return a(110, jSONObject3);
                    }
                }
                if (jSONObject5 != null) {
                    Iterator<String> itKeys2 = jSONObject2.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        if (next2 != null && (next2 instanceof String) && (str = next2) != null && jSONObject5.opt(str) != null) {
                            try {
                                jSONObject3.put(str, jSONObject5.opt(str));
                            } catch (Exception unused5) {
                            }
                        }
                    }
                }
            }
            return a(110, jSONObject3);
        }
    }
}
