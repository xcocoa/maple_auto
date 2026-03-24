package com.anythink.expressad.atsignalcommon.mraid;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.a;
import com.anythink.expressad.atsignalcommon.windvane.l;
import com.anythink.expressad.foundation.d.c;
import org.json.JSONObject;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class MraidJSBridge extends l {
    public static final String a = "MraidJSBridge";
    private IMraidJSBridge b;

    public void close(Object obj, String str) {
        if (obj instanceof a) {
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(((a) obj).a, c.cf);
        }
        try {
            IMraidJSBridge iMraidJSBridge = this.b;
            if (iMraidJSBridge != null) {
                iMraidJSBridge.close();
            }
        } catch (Throwable unused) {
        }
    }

    public void expand(Object obj, String str) {
        if (obj instanceof a) {
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(((a) obj).a, "expand");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString(c.am);
            String strOptString2 = jSONObject.optString("shouldUseCustomClose");
            StringBuilder sb = new StringBuilder("MRAID expand ");
            sb.append(strOptString);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(strOptString2);
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.b == null) {
                return;
            }
            this.b.expand(strOptString, strOptString2.toLowerCase().equals("true"));
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.expressad.atsignalcommon.windvane.l
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof IMraidJSBridge) {
                this.b = (IMraidJSBridge) context;
                return;
            }
            if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof IMraidJSBridge)) {
                this.b = (IMraidJSBridge) windVaneWebView.getObject();
            }
            if (windVaneWebView.getMraidObject() == null || !(windVaneWebView.getMraidObject() instanceof IMraidJSBridge)) {
                return;
            }
            this.b = (IMraidJSBridge) windVaneWebView.getMraidObject();
        } catch (Exception e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
        }
    }

    public void open(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (obj instanceof a) {
            windVaneWebView = ((a) obj).a;
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(windVaneWebView, "open");
        } else {
            windVaneWebView = null;
        }
        try {
            String strOptString = new JSONObject(str).optString(c.am);
            if (this.b == null || TextUtils.isEmpty(strOptString)) {
                return;
            }
            if (windVaneWebView != null && System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.anythink.expressad.a.b.a.c) {
                c mraidCampaign = this.b.getMraidCampaign();
                windVaneWebView.getUrl();
                int i = com.anythink.expressad.a.b.a.a;
                if (com.anythink.expressad.a.b.a.a(mraidCampaign)) {
                    return;
                }
            }
            this.b.open(strOptString);
        } catch (Throwable unused) {
        }
    }

    public void setOrientationProperties(Object obj, String str) {
        if (obj instanceof a) {
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(((a) obj).a, "setOrientationProperties");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("allowOrientationChange");
            String strOptString2 = jSONObject.optString("forceOrientation");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.b == null) {
                return;
            }
            strOptString.toLowerCase().equals("true");
            String lowerCase = strOptString2.toLowerCase();
            int iHashCode = lowerCase.hashCode();
            if (iHashCode == 729267099) {
                if (lowerCase.equals("portrait")) {
                }
            } else {
                if (iHashCode != 1430647483) {
                    return;
                }
                lowerCase.equals("landscape");
            }
        } catch (Throwable unused) {
        }
    }

    public void unload(Object obj, String str) {
        if (obj instanceof a) {
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(((a) obj).a, "unload");
        }
        try {
            IMraidJSBridge iMraidJSBridge = this.b;
            if (iMraidJSBridge != null) {
                iMraidJSBridge.unload();
            }
        } catch (Throwable unused) {
        }
    }

    public void useCustomClose(Object obj, String str) {
        if (obj instanceof a) {
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(((a) obj).a, "useCustomClose");
        }
        try {
            String strOptString = new JSONObject(str).optString("shouldUseCustomClose");
            if (TextUtils.isEmpty(strOptString) || this.b == null) {
                return;
            }
            this.b.useCustomClose(strOptString.toLowerCase().equals("true"));
        } catch (Throwable unused) {
        }
    }
}
