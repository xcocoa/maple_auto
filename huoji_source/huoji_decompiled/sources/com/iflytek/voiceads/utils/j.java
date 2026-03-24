package com.iflytek.voiceads.utils;

import android.content.Context;
import com.iflytek.voiceads.request.a;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class j {
    public static JSONArray a(double d, JSONArray jSONArray) {
        try {
            String string = jSONArray.toString();
            if (!string.contains(com.anythink.core.b.d.b.b)) {
                return jSONArray;
            }
            if (d < 0.0d) {
                return null;
            }
            return new JSONArray(string.replace(com.anythink.core.b.d.b.b, d.b(d + "")));
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "exp array" + e.getMessage());
            return jSONArray;
        }
    }

    public static void a(Object... objArr) {
        g.a("IFLY_AD_SDK", "sendMonitor");
        try {
            JSONArray jSONArray = (JSONArray) objArr[0];
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    String string = jSONArray.getString(i);
                    if (objArr.length <= 1 || i != 0) {
                        b(string);
                    } else {
                        b(string, objArr[1], objArr[2]);
                    }
                }
            }
        } catch (JSONException e) {
            g.b("IFLY_AD_SDK", "MonitorUtil::sendMonitor() error");
        }
    }

    public static void b(Object... objArr) {
        com.iflytek.voiceads.request.a aVar = new com.iflytek.voiceads.request.a();
        if (objArr == null || objArr.length <= 1) {
            aVar.a(false);
        } else {
            aVar.a((Context) objArr[1]);
            aVar.a(((Integer) objArr[2]).intValue());
        }
        aVar.b(0);
        aVar.c(15000);
        aVar.a((String) objArr[0], null, null);
        aVar.a((a.InterfaceC0184a) null);
    }
}
