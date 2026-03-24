package com.anythink.expressad.video.signal.communication;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.bridge.CommonJSBridgeImpUtils;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.d.b;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.g.a;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.a.c;
import com.anythink.expressad.video.signal.factory.IJSFactory;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;
import z2.kx;

/* JADX INFO: loaded from: classes.dex */
public class BaseVideoBridge extends AbsFeedBackForH5 implements IVideoBridge {
    public static final String h = "JS-Video-Brigde";
    private static final int j = 1;
    private static final int k = 2;
    private static final String l = "showTransparent";
    private static final String m = "mute";
    private static final String n = "closeType";
    private static final String o = "orientationType";
    private static final String p = "type";
    private static final String q = "h5cbp";
    private static final String r = "webfront";
    private static final String s = "showAlertRole";
    public IJSFactory i;

    private static String a(int i) {
        switch (i) {
            case 1:
                return ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO;
            case 2:
                return "unit_id";
            case 3:
                return "appSetting";
            case 4:
                return "unitSetting";
            case 5:
                return "device";
            case 6:
                return "sdkSetting";
            default:
                return "";
        }
    }

    private static void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", 1);
                jSONObject.put("message", "params is null");
                j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private static String b(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String string = jSONObject.toString();
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void appendSubView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().i(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("appendSubView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void appendViewTo(Object obj, String str) {
        a(obj, str);
        try {
            c.a().j(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("appendViewTo error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void bringViewToFront(Object obj, String str) {
        a(obj, str);
        try {
            c.a().m(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("bringViewToFront error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void broadcast(Object obj, String str) {
        a(obj, str);
        try {
            c.a().M(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("broadcast error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void cai(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString("packageName");
                if (TextUtils.isEmpty(strOptString)) {
                    CommonJSBridgeImpUtils.callbackExcep(obj, "packageName is empty");
                }
                int i = t.a(n.a().f(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", CommonJSBridgeImpUtils.b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(r.ah, i);
                    jSONObject.put("data", jSONObject2);
                    j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    CommonJSBridgeImpUtils.callbackExcep(obj, e.getMessage());
                    e.getMessage();
                }
            } catch (Throwable th) {
                CommonJSBridgeImpUtils.callbackExcep(obj, "exception: " + th.getLocalizedMessage());
            }
        } catch (JSONException e2) {
            CommonJSBridgeImpUtils.callbackExcep(obj, "exception: " + e2.getLocalizedMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void clearAllCache(Object obj, String str) {
        try {
            n.a().f().getSharedPreferences(a.p, 0).edit().clear().apply();
            if (obj != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", 0);
                jSONObject.put("message", "Success");
                j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Throwable th) {
            new StringBuilder("getAllCache error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void click(Object obj, String str) {
        String strOptString;
        int iOptInt;
        com.anythink.expressad.video.signal.a.j jVar;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                iOptInt = jSONObject.optInt("type");
                strOptString = jSONObject.optString("pt");
            } catch (JSONException e) {
                e.printStackTrace();
                strOptString = "";
                iOptInt = 1;
            }
            IJSFactory iJSFactory = this.i;
            if (iJSFactory != null) {
                iJSFactory.getJSCommon().click(iOptInt, strOptString);
                return;
            }
            if (obj != null) {
                com.anythink.expressad.atsignalcommon.windvane.a aVar = (com.anythink.expressad.atsignalcommon.windvane.a) obj;
                if (!(aVar.a.getObject() instanceof com.anythink.expressad.video.signal.a.j) || (jVar = (com.anythink.expressad.video.signal.a.j) aVar.a.getObject()) == null) {
                    return;
                }
                jVar.click(iOptInt, strOptString);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void closeAd(Object obj, String str) {
        a(obj, str);
        try {
            c.a().L(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("closeAd error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void closeVideoOperte(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(com.anythink.expressad.foundation.d.c.cf);
            int iOptInt2 = jSONObject.optInt("view_visible");
            StringBuilder sb = new StringBuilder("closeVideoOperte,close:");
            sb.append(iOptInt);
            sb.append(",viewVisible:");
            sb.append(iOptInt2);
            this.i.getJSVideoModule().closeVideoOperate(iOptInt, iOptInt2);
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void closeWeb(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str) || this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("status");
            this.i.getJSContainerModule().hideAlertWebview();
            this.i.getJSVideoModule().hideAlertView(iOptInt);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void createNativeEC(Object obj, String str) {
        a(obj, str);
        try {
            c.a().Q(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("createNativeEC error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void createPlayerView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().c(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("createPlayerView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void createSubPlayTemplateView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().d(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("createSubPlayTemplateView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void createView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().a(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("createWebview error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void createWebview(Object obj, String str) {
        a(obj, str);
        try {
            c.a().b(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("createWebview error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void destroyComponent(Object obj, String str) {
        a(obj, str);
        try {
            c.a().e(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("destroyComponent error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getAllCache(Object obj, String str) {
        JSONObject jSONObject;
        Throwable th;
        String str2;
        try {
            SharedPreferences sharedPreferences = n.a().f().getSharedPreferences(a.p, 0);
            jSONObject = new JSONObject();
            try {
                for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str2 = "getAllCache Success";
            } catch (Throwable th2) {
                th = th2;
                new StringBuilder("getAllCache error ").append(th);
                str2 = "getAllCache Error, reason is : " + th.getMessage();
            }
        } catch (Throwable th3) {
            jSONObject = null;
            th = th3;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", 0);
            jSONObject2.put("message", str2);
            if (jSONObject != null) {
                jSONObject2.put("data", jSONObject);
            } else {
                jSONObject2.put("data", MessageFormatter.DELIM_STR);
            }
            if (obj != null) {
                j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (Throwable th4) {
            new StringBuilder("getAllCache error ").append(th4);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getAppSetting(Object obj, String str) {
        String str2;
        JSONObject jSONObject;
        try {
            String strOptString = new JSONObject(str).optString("appid", "");
            JSONObject jSONObject2 = new JSONObject();
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject2.put("code", 1);
                str2 = "Get App Setting error, because must give a appId.";
            } else {
                b.a();
                String strA = b.a(strOptString);
                if (TextUtils.isEmpty(strA)) {
                    b.a();
                    jSONObject = new JSONObject(b.c().R());
                } else {
                    jSONObject = new JSONObject(strA);
                    jSONObject.put("isDefault", 0);
                }
                if (obj != null) {
                    jSONObject2.put("code", 0);
                    jSONObject2.put("message", "Success");
                    jSONObject2.put("data", jSONObject);
                    j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                }
                jSONObject2.put("code", 1);
                str2 = "Get App Setting error, plz try again later.";
            }
            jSONObject2.put("message", str2);
            j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Throwable th) {
            new StringBuilder("getAppSetting error : ").append(th.getMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getComponentOptions(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            c.f(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("getComponentOptions error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getCurrentProgress(Object obj, String str) {
        try {
            IJSFactory iJSFactory = this.i;
            if (iJSFactory != null) {
                String currentProgress = iJSFactory.getJSVideoModule().getCurrentProgress();
                if (!TextUtils.isEmpty(currentProgress)) {
                    currentProgress = Base64.encodeToString(currentProgress.getBytes(), 2);
                }
                j.a().a(obj, currentProgress);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getCutout(Object obj, String str) {
        try {
            String strO = this.i.getJSCommon().o();
            if (obj != null && !TextUtils.isEmpty(strO)) {
                j.a().a(obj, Base64.encodeToString(strO.getBytes(), 2));
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", 1);
            jSONObject.put("message", "No notch data, plz try again later.");
            j.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th) {
            new StringBuilder("getCutout error : ").append(th.getMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getEncryptPrice(Object obj, String str) {
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getFileInfo(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            c.P(obj, new JSONObject(str));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getRewardSetting(Object obj, String str) {
        try {
            Object objK = com.anythink.expressad.videocommon.e.c.a().b().k();
            JSONObject jSONObject = new JSONObject();
            String str2 = "message";
            if (obj != null) {
                jSONObject.put("code", 0);
                jSONObject.put("message", "Success");
                str2 = "data";
            } else {
                jSONObject.put("code", 1);
                objK = "Get Reward Setting error, plz try again later.";
            }
            jSONObject.put(str2, objK);
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th) {
            new StringBuilder("getRewardSetting error : ").append(th.getMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getRewardUnitSetting(Object obj, String str) {
        String str2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("appid", "");
            String strOptString2 = jSONObject.optString("unitid", "");
            JSONObject jSONObject2 = new JSONObject();
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
                jSONObject2.put("code", 1);
                str2 = "Get reward unit Setting error, because must give appId and unitId.";
            } else {
                JSONObject jSONObjectR = com.anythink.expressad.videocommon.e.c.a().a(strOptString, strOptString2).R();
                if (obj != null) {
                    jSONObject2.put("code", 0);
                    jSONObject2.put("message", "Success");
                    jSONObject2.put("data", jSONObjectR);
                    j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                }
                jSONObject2.put("code", 1);
                str2 = "Get Reward Unit Setting error, plz try again later.";
            }
            jSONObject2.put("message", str2);
            j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Throwable th) {
            new StringBuilder("getRewardUnitSetting error : ").append(th.getMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getSDKInfo(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                j.a().b(obj, "params is null");
                return;
            }
            JSONArray jSONArray = new JSONObject(str).getJSONArray("type");
            JSONObject jSONObject = new JSONObject();
            int i = 0;
            if (this.i != null) {
                while (i < jSONArray.length()) {
                    int i2 = jSONArray.getInt(i);
                    jSONObject.put(a(i2), this.i.getJSCommon().h(i2));
                    i++;
                }
            } else if (obj != null) {
                while (i < jSONArray.length()) {
                    int i3 = jSONArray.getInt(i);
                    com.anythink.expressad.atsignalcommon.windvane.a aVar = (com.anythink.expressad.atsignalcommon.windvane.a) obj;
                    if (aVar.a.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                        jSONObject.put(a(i3), ((com.anythink.expressad.video.signal.a.j) aVar.a.getObject()).h(i3));
                    }
                    i++;
                }
            }
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable unused) {
            j.a().b(obj, "exception");
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void getUnitSetting(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", 1);
            jSONObject.put("message", "Get Unit Setting error, RV/IV can not support this method.");
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th) {
            new StringBuilder("getUnitSetting error : ").append(th.getMessage());
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void gial(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", CommonJSBridgeImpUtils.b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("packageNameList", kx.OooOOO);
            jSONObject.put("data", jSONObject2);
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            CommonJSBridgeImpUtils.callbackExcep(obj, e.getMessage());
            e.getMessage();
        } catch (Throwable th) {
            CommonJSBridgeImpUtils.callbackExcep(obj, th.getMessage());
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void handleNativeObject(Object obj, String str) {
        a(obj, str);
        try {
            com.anythink.expressad.video.bt.a.b.a().a(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("handleNativeObject error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void handlerH5Exception(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            this.i.getJSCommon().handlerH5Exception(jSONObject.optInt("code", c.a), jSONObject.optString("message", "h5 error"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void hideView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().n(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("hideView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void increaseOfferFrequence(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            new JSONObject(str);
            c.a(obj);
        } catch (Throwable th) {
            new StringBuilder("increaseOfferFrequence error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void init(Object obj, String str) {
        try {
            IJSFactory iJSFactory = this.i;
            int i = 1;
            if (iJSFactory != null) {
                String strI = iJSFactory.getJSCommon().i();
                if (!TextUtils.isEmpty(strI)) {
                    strI = Base64.encodeToString(strI.getBytes(), 2);
                }
                j.a().a(obj, strI);
                this.i.getJSCommon().h();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt(l);
                int iOptInt2 = jSONObject.optInt("mute");
                int iOptInt3 = jSONObject.optInt(n);
                int iOptInt4 = jSONObject.optInt(o);
                int iOptInt5 = jSONObject.optInt(q);
                int iOptInt6 = jSONObject.optInt(r);
                int iOptInt7 = jSONObject.optInt(s);
                this.i.getJSCommon().a(iOptInt == 1);
                this.i.getJSCommon().b(iOptInt2);
                this.i.getJSCommon().c(iOptInt3);
                this.i.getJSCommon().d(iOptInt4);
                this.i.getJSCommon().e(iOptInt5);
                this.i.getJSCommon().f(iOptInt6);
                com.anythink.expressad.video.signal.c jSCommon = this.i.getJSCommon();
                if (iOptInt7 != 0) {
                    i = iOptInt7;
                }
                jSCommon.i(i);
                return;
            }
            if (obj != null) {
                com.anythink.expressad.atsignalcommon.windvane.a aVar = (com.anythink.expressad.atsignalcommon.windvane.a) obj;
                if (aVar.a.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                    com.anythink.expressad.video.signal.a.j jVar = (com.anythink.expressad.video.signal.a.j) aVar.a.getObject();
                    String strI2 = jVar.i();
                    if (!TextUtils.isEmpty(str)) {
                        JSONObject jSONObject2 = new JSONObject(str);
                        int iOptInt8 = jSONObject2.optInt(l);
                        int iOptInt9 = jSONObject2.optInt("mute");
                        int iOptInt10 = jSONObject2.optInt(n);
                        int iOptInt11 = jSONObject2.optInt(o);
                        int iOptInt12 = jSONObject2.optInt(q);
                        int iOptInt13 = jSONObject2.optInt(r);
                        int iOptInt14 = jSONObject2.optInt(s);
                        jVar.a(iOptInt8 == 1);
                        jVar.b(iOptInt9);
                        jVar.c(iOptInt10);
                        jVar.d(iOptInt11);
                        jVar.e(iOptInt12);
                        jVar.f(iOptInt13);
                        if (iOptInt14 != 0) {
                            i = iOptInt14;
                        }
                        jVar.i(i);
                    }
                    j.a().a(obj, Base64.encodeToString(strI2.getBytes(), 2));
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.l
    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        super.initialize(obj, windVaneWebView);
        if (obj instanceof IJSFactory) {
            this.i = (IJSFactory) obj;
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void insertViewAbove(Object obj, String str) {
        a(obj, str);
        try {
            c.a().s(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("insertViewAbove error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void insertViewBelow(Object obj, String str) {
        a(obj, str);
        try {
            c.a().t(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("insertViewBelow error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void isSystemResume(Object obj, String str) {
        try {
            IJSFactory iJSFactory = this.i;
            if (iJSFactory != null) {
                j.a().a(obj, b(iJSFactory.getActivityProxy().h()));
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str) || this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSContainerModule().ivRewardAdsWithoutVideo(str);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void loadads(Object obj, String str) {
        String strOptString;
        int iOptInt;
        int iOptInt2;
        try {
            if (TextUtils.isEmpty(str)) {
                strOptString = "";
                iOptInt = 1;
                iOptInt2 = 1;
            } else {
                JSONObject jSONObject = new JSONObject(str);
                strOptString = jSONObject.optString("unitId");
                iOptInt2 = jSONObject.optInt("type", 1);
                if (iOptInt2 > 2) {
                    iOptInt2 = 1;
                }
                iOptInt = jSONObject.optInt("adtype", 1);
            }
            if (TextUtils.isEmpty(strOptString)) {
                j.a().a(obj, b(1));
                return;
            }
            if (obj != null) {
                WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                if ((windVaneWebView instanceof WindVaneWebView) && windVaneWebView.getWebViewListener() != null) {
                    ((com.anythink.expressad.atsignalcommon.a.a) windVaneWebView.getWebViewListener()).a(strOptString, iOptInt2, iOptInt);
                }
            }
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
            j.a().a(obj, b(1));
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void loadingResourceStatus(Object obj, String str) {
        a(obj, str);
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().loadingResourceStatus(windVaneWebView, iOptInt);
            } catch (Throwable th) {
                new StringBuilder("loadingResourceStatus error ").append(th);
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSVideoModule().notifyCloseBtn(new JSONObject(str).optInt("state"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void onlyAppendSubView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().k(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("appendSubView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void onlyAppendViewTo(Object obj, String str) {
        a(obj, str);
        try {
            c.a().l(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("appendViewTo error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void onlyInsertViewAbove(Object obj, String str) {
        a(obj, str);
        try {
            c.a().u(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("insertViewAbove error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void onlyInsertViewBelow(Object obj, String str) {
        a(obj, str);
        try {
            c.a().v(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("insertViewBelow error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void openURL(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString(com.anythink.expressad.foundation.d.c.am);
            int iOptInt = jSONObject.optInt("type");
            if (iOptInt == 1) {
                com.anythink.core.common.o.n.a(strOptString);
            } else if (iOptInt == 2) {
                com.anythink.core.common.o.n.a(this.e, strOptString);
            }
        } catch (JSONException e) {
            e.getMessage();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playVideoFinishOperate(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str) || this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSCommon().g(new JSONObject(str).optInt("type"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerGetMuteState(Object obj, String str) {
        a(obj, str);
        try {
            c.a().H(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerGetMuteState error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerMute(Object obj, String str) {
        a(obj, str);
        try {
            c.a().F(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerMute error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerPause(Object obj, String str) {
        a(obj, str);
        try {
            c.a().B(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerPause error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerPlay(Object obj, String str) {
        a(obj, str);
        try {
            c.a().A(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerPlay error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerResume(Object obj, String str) {
        a(obj, str);
        try {
            c.a().C(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerResume error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerSetRenderType(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            c.J(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerSetRenderType error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerSetSource(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            c.I(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerSetSource error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerStop(Object obj, String str) {
        a(obj, str);
        try {
            c.a().D(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerStop error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerUnmute(Object obj, String str) {
        a(obj, str);
        try {
            c.a().G(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerUnmute error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void playerUpdateFrame(Object obj, String str) {
        a(obj, str);
        try {
            c.a();
            c.E(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("playerUpdateFrame error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void preloadSubPlayTemplateView(Object obj, String str) {
        a(obj, str);
        try {
            if (this.i != null) {
                c.a().K(obj, new JSONObject(str));
                return;
            }
            WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
            if (!(windVaneWebView instanceof WindVaneWebView) || windVaneWebView.getWebViewListener() == null) {
                return;
            }
            ((com.anythink.expressad.atsignalcommon.a.a) windVaneWebView.getWebViewListener()).a(obj, str);
        } catch (Throwable th) {
            new StringBuilder("preloadSubPlayTemplateView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void progressBarOperate(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSVideoModule().progressBarOperate(new JSONObject(str).optInt("view_visible"));
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void progressOperate(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_PROGRESS);
            int iOptInt2 = jSONObject.optInt("view_visible");
            StringBuilder sb = new StringBuilder("progressOperate,progress:");
            sb.append(iOptInt);
            sb.append(",viewVisible:");
            sb.append(iOptInt2);
            this.i.getJSVideoModule().progressOperate(iOptInt, iOptInt2);
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void reactDeveloper(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                j.a().b(obj, b(1));
            } else {
                this.i.getJSBTModule().reactDeveloper(obj, str);
            }
        } catch (Throwable th) {
            new StringBuilder("reactDeveloper error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                com.anythink.expressad.atsignalcommon.windvane.a aVar = (com.anythink.expressad.atsignalcommon.windvane.a) obj;
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                if (aVar.a.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                    ((com.anythink.expressad.video.signal.a.j) aVar.a.getObject()).j(iOptInt);
                }
                WindVaneWebView windVaneWebView = aVar.a;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().readyState(windVaneWebView, iOptInt);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void removeCacheItem(Object obj, String str) {
        String str2;
        boolean z;
        JSONObject jSONObject;
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = n.a().f().getSharedPreferences(a.p, 0);
        } catch (Throwable th) {
            new StringBuilder("removeCacheItem error ").append(th);
            str2 = "Delete Error, reason is : " + th.getMessage();
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                String string = new JSONObject(str).getString("key");
                if (!TextUtils.isEmpty(string)) {
                    sharedPreferences.edit().remove(string).apply();
                }
                str2 = "Delete Success";
                z = true;
                jSONObject = new JSONObject();
                jSONObject.put("code", z ? 0 : 1);
                jSONObject.put("message", str2);
                if (obj == null && z) {
                    j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                } else {
                    j.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                }
            }
            str2 = "";
            jSONObject = new JSONObject();
            jSONObject.put("code", z ? 0 : 1);
            jSONObject.put("message", str2);
            if (obj == null) {
            }
            j.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            return;
        } catch (Throwable unused) {
            return;
        }
        z = false;
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void removeFromSuperView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().h(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("removeFromSuperView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void reportUrls(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                j.a().b(obj, b(1));
            } else {
                c.a();
                c.b(obj, str);
            }
        } catch (Throwable th) {
            new StringBuilder("reportUrls error ").append(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006c  */
    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setCacheItem(Object obj, String str) {
        String str2;
        boolean z;
        JSONObject jSONObject;
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = n.a().f().getSharedPreferences(a.p, 0);
        } catch (Throwable th) {
            new StringBuilder("setCacheItem error ").append(th);
            str2 = "Save Error, reason is : " + th.getMessage();
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject2 = new JSONObject(str);
                String string = jSONObject2.getString("key");
                String string2 = jSONObject2.getString("value");
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    sharedPreferences.edit().putString(string, string2).apply();
                }
                str2 = "Save Success";
                z = true;
                jSONObject = new JSONObject();
                jSONObject.put("code", z ? 0 : 1);
                jSONObject.put("message", str2);
                if (obj == null && z) {
                    j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                } else {
                    j.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                }
            }
            str2 = "";
            jSONObject = new JSONObject();
            jSONObject.put("code", z ? 0 : 1);
            jSONObject.put("message", str2);
            if (obj == null) {
            }
            j.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            return;
        } catch (Throwable unused) {
            return;
        }
        z = false;
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setScaleFitXY(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSVideoModule().setScaleFitXY(new JSONObject(str).optInt("fitxy"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setSubPlayTemplateInfo(Object obj, String str) {
        a(obj, str);
        try {
            c.a().N(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setSubPlayTemplateInfo error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setViewAlpha(Object obj, String str) {
        a(obj, str);
        try {
            c.a().q(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setViewAlpha error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setViewBgColor(Object obj, String str) {
        a(obj, str);
        try {
            c.a().p(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setViewBgColor error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setViewRect(Object obj, String str) {
        a(obj, str);
        try {
            c.a().g(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setViewRect error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void setViewScale(Object obj, String str) {
        a(obj, str);
        try {
            c.a().r(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setViewScale error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void showAlertView(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSVideoModule().showIVRewardAlertView(str);
            j.a().a(obj, "showAlertView", "");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void showVideoClickView(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSContainerModule().showVideoClickView(new JSONObject(str).optInt("type"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void showVideoLocation(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("margin_top", 0);
            int iOptInt2 = jSONObject.optInt("margin_left", 0);
            int iOptInt3 = jSONObject.optInt("view_width", 0);
            int iOptInt4 = jSONObject.optInt("view_height", 0);
            int iOptInt5 = jSONObject.optInt("radius", 0);
            int iOptInt6 = jSONObject.optInt("border_top", 0);
            int iOptInt7 = jSONObject.optInt("border_left", 0);
            int iOptInt8 = jSONObject.optInt("border_width", 0);
            int iOptInt9 = jSONObject.optInt("border_height", 0);
            StringBuilder sb = new StringBuilder("showVideoLocation,margin_top:");
            sb.append(iOptInt);
            sb.append(",marginLeft:");
            sb.append(iOptInt2);
            sb.append(",viewWidth:");
            sb.append(iOptInt3);
            sb.append(",viewHeight:");
            sb.append(iOptInt4);
            sb.append(",radius:");
            sb.append(iOptInt5);
            sb.append(",borderTop: ");
            sb.append(iOptInt6);
            sb.append(",borderLeft: ");
            sb.append(iOptInt7);
            sb.append(",borderWidth: ");
            sb.append(iOptInt8);
            sb.append(",borderHeight: ");
            sb.append(iOptInt9);
            this.i.getJSVideoModule().showVideoLocation(iOptInt, iOptInt2, iOptInt3, iOptInt4, iOptInt5, iOptInt6, iOptInt7, iOptInt8, iOptInt9);
            this.i.getJSCommon().l();
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void showView(Object obj, String str) {
        a(obj, str);
        try {
            c.a().o(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("showView error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void soundOperate(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("mute");
            int iOptInt2 = jSONObject.optInt("view_visible");
            String strOptString = jSONObject.optString("pt", "");
            StringBuilder sb = new StringBuilder("soundOperate,mute:");
            sb.append(iOptInt);
            sb.append(",viewVisible:");
            sb.append(iOptInt2);
            sb.append(",pt:");
            sb.append(strOptString);
            if (TextUtils.isEmpty(strOptString)) {
                this.i.getJSVideoModule().soundOperate(iOptInt, iOptInt2);
            } else {
                this.i.getJSVideoModule().soundOperate(iOptInt, iOptInt2, strOptString);
            }
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void statistics(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            this.i.getJSCommon().a(jSONObject.optInt("type"), jSONObject.optString("data"));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            int i = 2;
            if (iOptInt != 1) {
                i = iOptInt == 2 ? 1 : 0;
            }
            this.i.getJSVideoModule().closeVideoOperate(0, i);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str) || !new JSONObject(str).optString("state").equals(com.anythink.expressad.foundation.d.c.ca)) {
                return;
            }
            this.i.getJSVideoModule().closeVideoOperate(1, -1);
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void videoOperate(Object obj, String str) {
        try {
            if (this.i == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.i.getJSVideoModule().videoOperate(new JSONObject(str).optInt("pause_or_resume"));
            j.a().a(obj, b(0));
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void webviewFireEvent(Object obj, String str) {
        a(obj, str);
        try {
            c.a().O(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("setSubPlayTemplateInfo error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void webviewGoBack(Object obj, String str) {
        a(obj, str);
        try {
            c.a().y(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("webviewGoBack error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void webviewGoForward(Object obj, String str) {
        a(obj, str);
        try {
            c.a().z(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("webviewGoForward error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void webviewLoad(Object obj, String str) {
        a(obj, str);
        try {
            c.a().w(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("webviewLoad error ").append(th);
        }
    }

    @Override // com.anythink.expressad.video.signal.communication.IVideoBridge
    public void webviewReload(Object obj, String str) {
        a(obj, str);
        try {
            c.a().x(obj, new JSONObject(str));
        } catch (Throwable th) {
            new StringBuilder("webviewReload error ").append(th);
        }
    }
}
