package com.anythink.expressad.splash.js;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.a;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SplashJs extends AbsFeedBackForH5 {
    private static String h = "SplashJs";
    private SplashJSBridgeImpl i;

    public void cai(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.cai(obj, str);
        }
    }

    public void getFileInfo(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            SplashJsUtils.getFileInfo(obj, new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void gial(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.gial(obj, str);
        }
    }

    public void handlerH5Exception(Object obj, String str) {
        if (obj != null) {
            try {
                WindVaneWebView windVaneWebView = ((a) obj).a;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().onReceivedError(windVaneWebView, 0, str.toString(), windVaneWebView.getUrl());
            } catch (Throwable unused) {
            }
        }
    }

    public void increaseOfferFrequence(Object obj, String str) {
        try {
            SplashJsUtils.increaseOfferFrequence(obj, new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void init(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.init(obj, str);
        }
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.l
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (windVaneWebView.getObject() == null || !(windVaneWebView.getObject() instanceof SplashJSBridgeImpl)) {
                return;
            }
            this.i = (SplashJSBridgeImpl) windVaneWebView.getObject();
        } catch (Throwable unused) {
        }
    }

    public void install(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.install(obj, str);
        }
    }

    public void onJSBridgeConnect(Object obj, String str) {
        try {
            SplashJSBridgeImpl splashJSBridgeImpl = this.i;
            if (splashJSBridgeImpl != null) {
                splashJSBridgeImpl.onJSBridgeConnect(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void openURL(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.openURL(obj, str);
        }
    }

    public void pauseCountDown(Object obj, String str) {
        try {
            SplashJSBridgeImpl splashJSBridgeImpl = this.i;
            if (splashJSBridgeImpl != null) {
                splashJSBridgeImpl.pauseCountDown(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                WindVaneWebView windVaneWebView = ((a) obj).a;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().readyState(windVaneWebView, iOptInt);
            } catch (Throwable unused) {
            }
        }
    }

    public void reportUrls(Object obj, String str) {
        try {
            SplashJSBridgeImpl splashJSBridgeImpl = this.i;
            if (splashJSBridgeImpl != null) {
                splashJSBridgeImpl.reportUrls(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void resetCountdown(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.resetCountdown(obj, str);
        }
    }

    public void resumeCountDown(Object obj, String str) {
        try {
            SplashJSBridgeImpl splashJSBridgeImpl = this.i;
            if (splashJSBridgeImpl != null) {
                splashJSBridgeImpl.resumeCountDown(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void sendImpressions(Object obj, String str) {
        try {
            SplashJSBridgeImpl splashJSBridgeImpl = this.i;
            if (splashJSBridgeImpl != null) {
                splashJSBridgeImpl.sendImpressions(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.toggleCloseBtn(obj, str);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        SplashJSBridgeImpl splashJSBridgeImpl = this.i;
        if (splashJSBridgeImpl != null) {
            splashJSBridgeImpl.triggerCloseBtn(obj, str);
        }
    }
}
