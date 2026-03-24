package com.iflytek.voiceads.param;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class UploadData {
    public static final String API_VERSION = "3.0.2";
    public static final String SDK_VERSION = "4.0.1";
    public static a mAdParam;
    public static Context mContext;
    private static JSONObject mCurDeviceInfo;
    private static JSONObject mCurExtraInfo;

    public static String getAdStatis() {
        try {
            boolean zC = com.iflytek.voiceads.utils.c.c(mContext, "dataToggle");
            if (mContext == null || !zC) {
                return "";
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("last_session_id", com.iflytek.voiceads.utils.c.b(mContext, "sessionID"));
            jSONObject.put("last_adunit_id", com.iflytek.voiceads.utils.c.b(mContext, "adUnitID"));
            jSONObject.put("last_req_duration", com.iflytek.voiceads.utils.c.a(mContext, "reqDuration"));
            jSONObject.put("last_imp_duration", com.iflytek.voiceads.utils.c.a(mContext, "impFailCnt"));
            jSONObject.put("last_clk_duration", com.iflytek.voiceads.utils.c.a(mContext, "clkFailCnt"));
            jSONObject.put("req_fail_cnt", com.iflytek.voiceads.utils.c.a(mContext, "reqFailCnt"));
            jSONObject.put("imp_fail_cnt", com.iflytek.voiceads.utils.c.a(mContext, "impFailCnt"));
            jSONObject.put("clk_fail_cnt", com.iflytek.voiceads.utils.c.a(mContext, "clkFailCnt"));
            return jSONObject.toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getAdStatis error " + e.getMessage());
            return "";
        }
    }

    public static String getApiVer() {
        return API_VERSION;
    }

    public static String getAppInfo() {
        return (mAdParam == null || mAdParam.a("app_ver") == null) ? "" : b.a(mAdParam);
    }

    public static String getCurrency() {
        if (mAdParam == null || mAdParam.a("currency") == null) {
            return "";
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (String str : mAdParam.b("currency").split(",")) {
                jSONArray.put(str);
            }
            return jSONArray.toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getCurrency error " + e.getMessage());
            return "CNY";
        }
    }

    public static String getDevice() {
        if (mContext == null) {
            return "";
        }
        try {
            if (mCurDeviceInfo == null) {
                mCurDeviceInfo = d.a(mContext);
            }
            mCurDeviceInfo.put("ts", d.a());
            return mCurDeviceInfo.toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getDevice error " + e.getMessage());
            return "";
        }
    }

    public static String getExt() {
        return (mAdParam == null || mAdParam.a("ext") == null) ? "" : mAdParam.a("ext").toString();
    }

    public static String getExtraInfo() {
        if (mContext == null) {
            return "";
        }
        try {
            if (mCurExtraInfo == null) {
                mCurExtraInfo = e.a(mContext);
            }
            mCurExtraInfo.put("battery", e.b(mContext));
            return mCurExtraInfo.toString().replaceAll("\"", "\\\\\"");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getDevice error " + e.getMessage());
            return "";
        }
    }

    public static String getImps() {
        return mAdParam == null ? "" : g.a(mAdParam);
    }

    public static String getRequestID() {
        return mAdParam == null ? "" : mAdParam.b("request_id");
    }

    public static String getSdkVer() {
        return SDK_VERSION;
    }

    public static void initParam(Context context, a aVar) {
        mContext = context;
        mAdParam = aVar;
    }
}
