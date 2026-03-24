package com.anythink.expressad.advanced.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.anythink.core.common.b.n;
import com.anythink.expressad.advanced.d.c;
import com.anythink.expressad.advanced.js.NativeAdvancedJSBridgeImpl;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ATNativeAdvancedView extends RelativeLayout {
    public static final String a = "webviewshow";
    private static String b = "ATNativeAdvancedView";
    private ATNativeAdvancedWebview c;
    private View d;
    private boolean e;
    private boolean f;
    private boolean g;
    private c h;
    private NativeAdvancedJSBridgeImpl i;
    private Context j;

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.view.ATNativeAdvancedView$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                String unused = ATNativeAdvancedView.b;
                String string = "";
                try {
                    int[] iArr = new int[2];
                    ATNativeAdvancedView.this.c.getLocationOnScreen(iArr);
                    String unused2 = ATNativeAdvancedView.b;
                    StringBuilder sb = new StringBuilder("coordinate:");
                    sb.append(iArr[0]);
                    sb.append("--");
                    sb.append(iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t.a(n.a().f(), iArr[0]));
                    jSONObject.put("startY", t.a(n.a().f(), iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    String unused3 = ATNativeAdvancedView.b;
                    th.getMessage();
                }
                String strEncodeToString = Base64.encodeToString(string.toString().getBytes(), 2);
                j.a();
                j.a((WebView) ATNativeAdvancedView.this.c, "webviewshow", strEncodeToString);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ATNativeAdvancedView(Context context) {
        this(context, null);
    }

    public ATNativeAdvancedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ATNativeAdvancedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = context;
    }

    private void b() {
        ATNativeAdvancedWebview aTNativeAdvancedWebview = this.c;
        if (aTNativeAdvancedWebview != null && aTNativeAdvancedWebview.getParent() == null) {
            addView(this.c, new ViewGroup.LayoutParams(-1, -1));
        }
        int[] iArr = new int[2];
        this.c.getLocationInWindow(iArr);
        ATNativeAdvancedWebview aTNativeAdvancedWebview2 = this.c;
        transInfoForMraid(aTNativeAdvancedWebview2, iArr[0], iArr[1], aTNativeAdvancedWebview2.getWidth(), this.c.getHeight());
        ATNativeAdvancedWebview aTNativeAdvancedWebview3 = this.c;
        if (aTNativeAdvancedWebview3 != null) {
            aTNativeAdvancedWebview3.setObject(this.i);
            this.c.post(new AnonymousClass1());
        }
        View view = this.d;
        if (view != null) {
            if (view.getParent() != null) {
                bringChildToFront(this.d);
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t.b(getContext(), 28.0f), t.b(getContext(), 16.0f));
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.rightMargin = t.b(getContext(), 2.0f);
            layoutParams.topMargin = t.b(getContext(), 2.0f);
            addView(this.d, layoutParams);
        }
    }

    private void c() {
        int[] iArr = new int[2];
        this.c.getLocationInWindow(iArr);
        ATNativeAdvancedWebview aTNativeAdvancedWebview = this.c;
        transInfoForMraid(aTNativeAdvancedWebview, iArr[0], iArr[1], aTNativeAdvancedWebview.getWidth(), this.c.getHeight());
        ATNativeAdvancedWebview aTNativeAdvancedWebview2 = this.c;
        if (aTNativeAdvancedWebview2 != null) {
            aTNativeAdvancedWebview2.setObject(this.i);
            this.c.post(new AnonymousClass1());
        }
    }

    public static void transInfoForMraid(WebView webView, int i, int i2, int i3, int i4) {
        try {
            int i5 = n.a().f().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("orientation", i5 == 2 ? "landscape" : i5 == 1 ? "portrait" : "undefined");
            jSONObject.put("locked", "true");
            float fE = k.e(n.a().f());
            float f = k.f(n.a().f());
            HashMap mapG = k.g(n.a().f());
            int iIntValue = ((Integer) mapG.get("width")).intValue();
            int iIntValue2 = ((Integer) mapG.get("height")).intValue();
            HashMap map = new HashMap();
            map.put(CallMraidJS.a, "inline");
            map.put("state", CallMraidJS.f);
            map.put(CallMraidJS.c, "true");
            map.put(CallMraidJS.d, jSONObject);
            float f2 = i;
            float f3 = i2;
            float f4 = i3;
            float f5 = i4;
            CallMraidJS.getInstance().fireSetDefaultPosition(webView, f2, f3, f4, f5);
            CallMraidJS.getInstance().fireSetCurrentPosition(webView, f2, f3, f4, f5);
            CallMraidJS.getInstance().fireSetScreenSize(webView, fE, f);
            CallMraidJS.getInstance().fireSetMaxSize(webView, iIntValue, iIntValue2);
            CallMraidJS.getInstance().fireChangeEventForPropertys(webView, map);
            CallMraidJS.getInstance().fireReadyEvent(webView);
        } catch (Throwable unused) {
        }
    }

    public void changeCloseBtnState(int i) {
        View view = this.d;
        if (view != null) {
            if (i == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.g = false;
        this.f = false;
        this.e = false;
    }

    public void clearResStateAndRemoveClose() {
        clearResState();
        View view = this.d;
        if (view == null || view.getParent() == null) {
            return;
        }
        removeView(this.d);
    }

    public void destroy() {
        removeAllViews();
        ATNativeAdvancedWebview aTNativeAdvancedWebview = this.c;
        if (aTNativeAdvancedWebview != null && !aTNativeAdvancedWebview.isDestroyed()) {
            this.c.release();
            NativeAdvancedJsUtils.sendEventToH5(this.c, "onSystemDestory", "");
        }
        if (this.j != null) {
            this.j = null;
        }
    }

    public NativeAdvancedJSBridgeImpl getAdvancedNativeJSBridgeImpl() {
        return this.i;
    }

    public ATNativeAdvancedWebview getAdvancedNativeWebview() {
        return this.c;
    }

    public View getCloseView() {
        return this.d;
    }

    public boolean isEndCardReady() {
        return this.g;
    }

    public boolean isH5Ready() {
        return this.e;
    }

    public boolean isVideoReady() {
        return this.f;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void resetLoadState() {
        this.g = false;
        this.f = false;
        this.e = false;
    }

    public void setAdvancedNativeJSBridgeImpl(NativeAdvancedJSBridgeImpl nativeAdvancedJSBridgeImpl) {
        this.i = nativeAdvancedJSBridgeImpl;
        ATNativeAdvancedWebview aTNativeAdvancedWebview = this.c;
        if (aTNativeAdvancedWebview != null) {
            aTNativeAdvancedWebview.setObject(nativeAdvancedJSBridgeImpl);
        }
    }

    public void setAdvancedNativeWebview(ATNativeAdvancedWebview aTNativeAdvancedWebview) {
        this.c = aTNativeAdvancedWebview;
        NativeAdvancedJSBridgeImpl nativeAdvancedJSBridgeImpl = this.i;
        if (nativeAdvancedJSBridgeImpl != null) {
            aTNativeAdvancedWebview.setObject(nativeAdvancedJSBridgeImpl);
        }
    }

    public void setCloseView(View view) {
        this.d = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setEndCardReady(boolean z) {
        this.g = z;
    }

    public void setH5Ready(boolean z) {
        this.e = z;
    }

    public void setVideoReady(boolean z) {
        this.f = z;
    }

    public void show() {
        ATNativeAdvancedWebview aTNativeAdvancedWebview = this.c;
        if (aTNativeAdvancedWebview != null && aTNativeAdvancedWebview.getParent() == null) {
            addView(this.c, new ViewGroup.LayoutParams(-1, -1));
        }
        int[] iArr = new int[2];
        this.c.getLocationInWindow(iArr);
        ATNativeAdvancedWebview aTNativeAdvancedWebview2 = this.c;
        transInfoForMraid(aTNativeAdvancedWebview2, iArr[0], iArr[1], aTNativeAdvancedWebview2.getWidth(), this.c.getHeight());
        ATNativeAdvancedWebview aTNativeAdvancedWebview3 = this.c;
        if (aTNativeAdvancedWebview3 != null) {
            aTNativeAdvancedWebview3.setObject(this.i);
            this.c.post(new AnonymousClass1());
        }
        View view = this.d;
        if (view != null) {
            if (view.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t.b(getContext(), 28.0f), t.b(getContext(), 16.0f));
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = t.b(getContext(), 2.0f);
                layoutParams.topMargin = t.b(getContext(), 2.0f);
                addView(this.d, layoutParams);
            } else {
                bringChildToFront(this.d);
            }
        }
        clearResState();
    }
}
