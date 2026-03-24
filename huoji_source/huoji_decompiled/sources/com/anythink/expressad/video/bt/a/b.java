package com.anythink.expressad.video.bt.a;

import android.text.TextUtils;
import android.util.Base64;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.d.r;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String c = "HandlerH5MessageManager";
    public int a;
    public int b;
    private String d;

    public static final class a {
        private static b a = new b(0);

        private a() {
        }
    }

    private b() {
        this.d = "handlerNativeResult";
        this.a = 0;
        this.b = 1;
    }

    public /* synthetic */ b(byte b) {
        this();
    }

    public static b a() {
        return a.a;
    }

    private static void a(int i, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            jSONObject.put("message", str);
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e) {
            e.getMessage();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(Object obj, JSONObject jSONObject) {
        int i;
        String message;
        try {
            if (TextUtils.isEmpty(jSONObject.toString())) {
                a(this.b, "params is null", obj);
                return;
            }
            String strOptString = jSONObject.optString("uniqueIdentifier");
            String strOptString2 = jSONObject.optString("name");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("parameters");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(r.ah);
                if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(jSONObjectOptJSONObject.toString())) {
                    jSONObjectOptJSONObject.optInt("type", 0);
                }
                a(this.a, "receivedMessage", obj);
                if (strOptString.equalsIgnoreCase("reporter") || !strOptString.equalsIgnoreCase("MediaPlayer")) {
                    return;
                }
                com.anythink.expressad.video.bt.a.a.a().a(obj, strOptString2, jSONArrayOptJSONArray);
                return;
            }
            a(this.b, "module or method is null", obj);
        } catch (Exception e) {
            e.getMessage();
            i = this.b;
            message = e.getMessage();
            a(i, message, obj);
        } catch (Throwable th) {
            th.getMessage();
            i = this.b;
            message = th.getMessage();
            a(i, message, obj);
        }
    }
}
