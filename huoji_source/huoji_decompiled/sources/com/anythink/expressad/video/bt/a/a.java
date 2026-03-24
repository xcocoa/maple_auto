package com.anythink.expressad.video.bt.a;

import android.text.TextUtils;
import android.util.Base64;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.video.bt.module.AnythinkBTVideoView;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String c = "a";
    private static LinkedHashMap<String, AnythinkBTVideoView> e = new LinkedHashMap<>();
    private String d = "handlerNativeResult";
    public int a = 0;
    public int b = 1;

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.a.a$a, reason: collision with other inner class name */
    public static final class C0148a {
        private static a a = new a();

        private C0148a() {
        }
    }

    public static a a() {
        return C0148a.a;
    }

    private static void a(int i, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            jSONObject.put("message", str);
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e2) {
            e2.getMessage();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static void a(String str) {
        e.remove(str);
    }

    public static void a(String str, AnythinkBTVideoView anythinkBTVideoView) {
        e.put(str, anythinkBTVideoView);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Object obj, String str, JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        float fOptDouble;
        String strOptString = "";
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0 && (jSONObjectOptJSONObject = jSONArray.optJSONObject(0)) != null) {
                    String strOptString2 = jSONObjectOptJSONObject.optString("key");
                    int iOptInt = jSONObjectOptJSONObject.optInt("type", 7);
                    if ("instanceId".equalsIgnoreCase(strOptString2) && iOptInt == 0) {
                        strOptString = jSONObjectOptJSONObject.optString("value");
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
                a(this.b, "exception:" + th.getMessage(), obj);
                return;
            }
        }
        if (TextUtils.isEmpty(strOptString)) {
            a(this.b, "instanceId find error", obj);
            return;
        }
        if (!e.containsKey(strOptString)) {
            a(this.b, "can not find player", obj);
            return;
        }
        if ("play".equalsIgnoreCase(str)) {
            AnythinkBTVideoView anythinkBTVideoView = e.get(strOptString);
            if (anythinkBTVideoView != null) {
                anythinkBTVideoView.play();
                return;
            } else {
                a(this.b, "player is null", obj);
                return;
            }
        }
        if (com.anythink.expressad.foundation.d.c.cb.equalsIgnoreCase(str)) {
            AnythinkBTVideoView anythinkBTVideoView2 = e.get(strOptString);
            if (anythinkBTVideoView2 != null) {
                anythinkBTVideoView2.pause();
                return;
            } else {
                a(this.b, "player is null", obj);
                return;
            }
        }
        if ("stop".equalsIgnoreCase(str)) {
            AnythinkBTVideoView anythinkBTVideoView3 = e.get(strOptString);
            if (anythinkBTVideoView3 != null) {
                anythinkBTVideoView3.stop();
                return;
            } else {
                a(this.b, "player is null", obj);
                return;
            }
        }
        if (!NativeAdvancedJsUtils.h.equalsIgnoreCase(str)) {
            if (!"setPlaybackParams".equalsIgnoreCase(str)) {
                a(this.b, "method not found", obj);
                return;
            }
            float fOptDouble2 = 1.0f;
            if (jSONArray != null && jSONArray.length() > 1 && (jSONObjectOptJSONObject2 = jSONArray.optJSONObject(1)) != null) {
                String strOptString3 = jSONObjectOptJSONObject2.optString("key");
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("type", 7);
                if ("speed".equalsIgnoreCase(strOptString3) && iOptInt2 == 3) {
                    fOptDouble2 = (float) jSONObjectOptJSONObject2.optDouble("value");
                }
            }
            AnythinkBTVideoView anythinkBTVideoView4 = e.get(strOptString);
            if (anythinkBTVideoView4 != null) {
                anythinkBTVideoView4.setPlaybackParams(fOptDouble2);
                return;
            } else {
                a(this.b, "player is null", obj);
                return;
            }
        }
        float f = 0.0f;
        if (jSONArray == null || jSONArray.length() <= 2) {
            fOptDouble = 0.0f;
        } else {
            JSONObject jSONObjectOptJSONObject3 = jSONArray.optJSONObject(1);
            JSONObject jSONObjectOptJSONObject4 = jSONArray.optJSONObject(2);
            if (jSONObjectOptJSONObject3 != null) {
                float fOptDouble3 = ("leftVolume".equalsIgnoreCase(jSONObjectOptJSONObject3.optString("key")) && jSONObjectOptJSONObject3.optInt("type", 7) == 3) ? (float) jSONObjectOptJSONObject3.optDouble("value") : 0.0f;
                if (jSONObjectOptJSONObject4 != null) {
                    String strOptString4 = jSONObjectOptJSONObject4.optString("key");
                    int iOptInt3 = jSONObjectOptJSONObject4.optInt("type", 7);
                    if ("rightVolume".equalsIgnoreCase(strOptString4) && iOptInt3 == 3) {
                        fOptDouble = (float) jSONObjectOptJSONObject4.optDouble("value");
                        f = fOptDouble3;
                    }
                }
                f = fOptDouble3;
                fOptDouble = 0.0f;
            }
        }
        AnythinkBTVideoView anythinkBTVideoView5 = e.get(strOptString);
        if (anythinkBTVideoView5 != null) {
            anythinkBTVideoView5.setVolume(f, fOptDouble);
        } else {
            a(this.b, "player is null", obj);
        }
    }
}
