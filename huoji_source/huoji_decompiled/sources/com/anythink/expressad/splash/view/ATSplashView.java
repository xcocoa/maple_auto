package com.anythink.expressad.splash.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.splash.js.SplashJSBridgeImpl;
import com.anythink.expressad.splash.js.SplashJsUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ATSplashView extends RelativeLayout {
    public static final String a = "webviewshow";
    public static final String b = "updateCountdown";
    private static String c = "ATSplashView";
    private int d;
    private ATSplashWebview e;
    private ViewGroup f;
    private View g;
    private View h;
    private int i;
    private boolean j;
    private boolean k;
    private ViewGroup l;
    private boolean m;
    private View n;
    private boolean o;
    private boolean p;
    private RelativeLayout.LayoutParams q;
    private SplashJSBridgeImpl r;
    private boolean s;

    public ATSplashView(Context context) {
        this(context, null);
    }

    public ATSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ATSplashView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = false;
        b();
    }

    private void b() {
        setBackgroundColor(0);
        this.d = getResources().getConfiguration().orientation;
        this.s = false;
    }

    private void c() {
        int i;
        View view;
        RelativeLayout.LayoutParams layoutParams;
        View view2;
        View view3;
        ViewGroup.LayoutParams layoutParams2;
        View view4;
        if (this.h != null) {
            if (this.f == null) {
                RelativeLayout relativeLayout = new RelativeLayout(getContext());
                this.f = relativeLayout;
                relativeLayout.setId(2147482647);
            }
            if (this.d == 2) {
                this.i = t.f(getContext());
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(0, this.f.getId());
                if (!this.o || (view3 = this.n) == null) {
                    ATSplashWebview aTSplashWebview = this.e;
                    if (aTSplashWebview != null && aTSplashWebview.getParent() == null) {
                        addView(this.e, layoutParams3);
                    }
                    d();
                } else {
                    if (view3.getParent() != null) {
                        x.a(this.n);
                    }
                    addView(this.n, layoutParams3);
                }
                ViewGroup viewGroup = this.f;
                if (viewGroup != null && viewGroup.getParent() == null) {
                    int i2 = this.q.width;
                    int i3 = this.i;
                    if (i2 > i3 / 4) {
                        i2 = i3 / 4;
                    }
                    this.f.addView(this.h, i2, -1);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i2, -1);
                    layoutParams4.addRule(11);
                    i = 13;
                    layoutParams = layoutParams4;
                    layoutParams.addRule(i);
                    view2 = this.f;
                    layoutParams2 = layoutParams;
                }
            } else {
                this.i = t.e(getContext());
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams5.addRule(2, this.f.getId());
                if (!this.o || (view = this.n) == null) {
                    ATSplashWebview aTSplashWebview2 = this.e;
                    if (aTSplashWebview2 != null && aTSplashWebview2.getParent() == null) {
                        addView(this.e, layoutParams5);
                    }
                    d();
                } else {
                    if (view.getParent() != null) {
                        x.a(this.n);
                    }
                    addView(this.n, layoutParams5);
                }
                ViewGroup viewGroup2 = this.f;
                if (viewGroup2 != null && viewGroup2.getParent() == null) {
                    int i4 = this.q.height;
                    int i5 = this.i;
                    if (i4 > i5 / 4) {
                        i4 = i5 / 4;
                    }
                    this.f.addView(this.h, -1, i4);
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, i4);
                    i = 12;
                    layoutParams = layoutParams6;
                    layoutParams.addRule(i);
                    view2 = this.f;
                    layoutParams2 = layoutParams;
                }
            }
            addView(view2, layoutParams2);
        } else if (!this.o || (view4 = this.n) == null) {
            ATSplashWebview aTSplashWebview3 = this.e;
            if (aTSplashWebview3 != null && aTSplashWebview3.getParent() == null) {
                addView(this.e, new ViewGroup.LayoutParams(-1, -1));
            }
            d();
        } else {
            if (view4.getParent() != null) {
                x.a(this.n);
            }
            view2 = this.n;
            layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
            addView(view2, layoutParams2);
        }
        View view5 = this.g;
        if (view5 != null) {
            if (view5.getParent() != null) {
                bringChildToFront(this.g);
                return;
            }
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(t.b(getContext(), 100.0f), t.b(getContext(), 30.0f));
            layoutParams7.addRule(10);
            layoutParams7.addRule(11);
            layoutParams7.rightMargin = t.b(getContext(), 10.0f);
            layoutParams7.topMargin = t.b(getContext(), 10.0f);
            addView(this.g, layoutParams7);
        }
    }

    private void d() {
        ATSplashWebview aTSplashWebview = this.e;
        if (aTSplashWebview != null) {
            aTSplashWebview.setObject(this.r);
            this.e.post(new Runnable() { // from class: com.anythink.expressad.splash.view.ATSplashView.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        String unused = ATSplashView.c;
                        String string = "";
                        try {
                            int[] iArr = new int[2];
                            ATSplashView.this.e.getLocationOnScreen(iArr);
                            String unused2 = ATSplashView.c;
                            StringBuilder sb = new StringBuilder("coordinate:");
                            sb.append(iArr[0]);
                            sb.append("--");
                            sb.append(iArr[1]);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("startX", t.a(n.a().f(), iArr[0]));
                            jSONObject.put("startY", t.a(n.a().f(), iArr[1]));
                            string = jSONObject.toString();
                        } catch (Throwable th) {
                            String unused3 = ATSplashView.c;
                            th.getMessage();
                        }
                        int[] iArr2 = new int[2];
                        ATSplashView.this.e.getLocationInWindow(iArr2);
                        ATSplashView.transInfoForMraid(ATSplashView.this.e, iArr2[0], iArr2[1], ATSplashView.this.e.getWidth(), ATSplashView.this.e.getHeight());
                        String strEncodeToString = Base64.encodeToString(string.toString().getBytes(), 2);
                        j.a();
                        j.a((WebView) ATSplashView.this.e, "webviewshow", strEncodeToString);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
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
            map.put(CallMraidJS.a, "Interstitial");
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
        View view = this.g;
        if (view != null) {
            if (i == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void checkSkipViewLocation() {
        if (this.s) {
            return;
        }
        try {
            View view = this.g;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    int i = ((RelativeLayout.LayoutParams) layoutParams).topMargin;
                    int iB = i.b(getContext()) + i;
                    if (i > 0) {
                        this.s = true;
                    }
                    int[] iArr = new int[2];
                    this.g.getLocationOnScreen(iArr);
                    if (iArr[1] < iB) {
                        ((RelativeLayout.LayoutParams) layoutParams).topMargin = i + (iB - iArr[1]);
                        this.g.setLayoutParams(layoutParams);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void clearResState() {
        this.m = false;
        this.k = false;
        this.j = false;
    }

    public void destroy() {
        ATSplashWebview aTSplashWebview = this.e;
        if (aTSplashWebview == null || aTSplashWebview.isDestroyed()) {
            return;
        }
        this.e.release();
        SplashJsUtils.sendEventToH5(this.e, "onSystemDestory", "");
    }

    public View getCloseView() {
        return this.g;
    }

    public ViewGroup getDevContainer() {
        return this.l;
    }

    public View getIconVg() {
        return this.h;
    }

    public SplashJSBridgeImpl getSplashJSBridgeImpl() {
        return this.r;
    }

    public ATSplashWebview getSplashWebview() {
        return this.e;
    }

    public boolean isAttach() {
        return this.p;
    }

    public boolean isDynamicView() {
        return this.o;
    }

    public boolean isH5Ready() {
        return this.j;
    }

    public boolean isImageReady() {
        return this.m;
    }

    public boolean isVideoReady() {
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p = true;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkSkipViewLocation();
    }

    public void onPause() {
        View view = this.n;
        if (view == null || !(view instanceof ATSplashNativeView)) {
            return;
        }
        ((ATSplashNativeView) view).setIsPause(true);
    }

    public void onResume() {
        View view = this.n;
        if (view == null || !(view instanceof ATSplashNativeView)) {
            return;
        }
        ((ATSplashNativeView) view).setIsPause(false);
    }

    public void resetLoadState() {
        this.k = false;
        this.j = false;
    }

    public void setCloseView(View view) {
        this.g = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setDevContainer(ViewGroup viewGroup) {
        this.l = viewGroup;
    }

    public void setDynamicView(boolean z) {
        this.o = z;
    }

    public void setH5Ready(boolean z) {
        this.j = z;
    }

    public void setIconVg(View view, RelativeLayout.LayoutParams layoutParams) {
        this.h = view;
        this.q = layoutParams;
    }

    public void setImageReady(boolean z) {
        this.m = z;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        View view = this.n;
        if (view == null || !(view instanceof ATSplashNativeView)) {
            return;
        }
        ((ATSplashNativeView) view).setNotchPadding(i, i2, i3, i4);
    }

    public void setSplashJSBridgeImpl(SplashJSBridgeImpl splashJSBridgeImpl) {
        this.r = splashJSBridgeImpl;
        ATSplashWebview aTSplashWebview = this.e;
        if (aTSplashWebview != null) {
            aTSplashWebview.setObject(splashJSBridgeImpl);
        }
    }

    public void setSplashNativeView(View view) {
        if (view != null) {
            this.n = view;
        }
    }

    public void setSplashWebview(ATSplashWebview aTSplashWebview) {
        this.e = aTSplashWebview;
        SplashJSBridgeImpl splashJSBridgeImpl = this.r;
        if (splashJSBridgeImpl != null) {
            aTSplashWebview.setObject(splashJSBridgeImpl);
        }
    }

    public void setVideoReady(boolean z) {
        this.k = z;
    }

    public void show() {
        int i;
        View view;
        RelativeLayout.LayoutParams layoutParams;
        View view2;
        View view3;
        ViewGroup.LayoutParams layoutParams2;
        View view4;
        ViewGroup viewGroup;
        if (this.r != null && (viewGroup = this.l) != null && (viewGroup.getContext() instanceof Activity)) {
            this.r.updateContext(this.l.getContext());
        }
        if (this.h != null) {
            if (this.f == null) {
                RelativeLayout relativeLayout = new RelativeLayout(getContext());
                this.f = relativeLayout;
                relativeLayout.setId(2147482647);
            }
            if (this.d == 2) {
                this.i = t.f(getContext());
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(0, this.f.getId());
                if (!this.o || (view3 = this.n) == null) {
                    ATSplashWebview aTSplashWebview = this.e;
                    if (aTSplashWebview != null && aTSplashWebview.getParent() == null) {
                        addView(this.e, layoutParams3);
                    }
                    d();
                } else {
                    if (view3.getParent() != null) {
                        x.a(this.n);
                    }
                    addView(this.n, layoutParams3);
                }
                ViewGroup viewGroup2 = this.f;
                if (viewGroup2 != null && viewGroup2.getParent() == null) {
                    int i2 = this.q.width;
                    int i3 = this.i;
                    if (i2 > i3 / 4) {
                        i2 = i3 / 4;
                    }
                    this.f.addView(this.h, i2, -1);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i2, -1);
                    layoutParams4.addRule(11);
                    i = 13;
                    layoutParams = layoutParams4;
                    layoutParams.addRule(i);
                    view2 = this.f;
                    layoutParams2 = layoutParams;
                }
            } else {
                this.i = t.e(getContext());
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams5.addRule(2, this.f.getId());
                if (!this.o || (view = this.n) == null) {
                    ATSplashWebview aTSplashWebview2 = this.e;
                    if (aTSplashWebview2 != null && aTSplashWebview2.getParent() == null) {
                        addView(this.e, layoutParams5);
                    }
                    d();
                } else {
                    if (view.getParent() != null) {
                        x.a(this.n);
                    }
                    addView(this.n, layoutParams5);
                }
                ViewGroup viewGroup3 = this.f;
                if (viewGroup3 != null && viewGroup3.getParent() == null) {
                    int i4 = this.q.height;
                    int i5 = this.i;
                    if (i4 > i5 / 4) {
                        i4 = i5 / 4;
                    }
                    this.f.addView(this.h, -1, i4);
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, i4);
                    i = 12;
                    layoutParams = layoutParams6;
                    layoutParams.addRule(i);
                    view2 = this.f;
                    layoutParams2 = layoutParams;
                }
            }
            addView(view2, layoutParams2);
        } else if (!this.o || (view4 = this.n) == null) {
            ATSplashWebview aTSplashWebview3 = this.e;
            if (aTSplashWebview3 != null && aTSplashWebview3.getParent() == null) {
                addView(this.e, new ViewGroup.LayoutParams(-1, -1));
            }
            d();
        } else {
            if (view4.getParent() != null) {
                x.a(this.n);
            }
            view2 = this.n;
            layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
            addView(view2, layoutParams2);
        }
        View view5 = this.g;
        if (view5 != null) {
            if (view5.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(t.b(getContext(), 100.0f), t.b(getContext(), 30.0f));
                layoutParams7.addRule(10);
                layoutParams7.addRule(11);
                layoutParams7.rightMargin = t.b(getContext(), 10.0f);
                layoutParams7.topMargin = t.b(getContext(), 10.0f);
                addView(this.g, layoutParams7);
            } else {
                bringChildToFront(this.g);
            }
        }
        clearResState();
    }

    public void updateCountdown(int i) {
        View view;
        if (this.e != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.anythink.expressad.d.a.b.dk, i);
                String strEncodeToString = Base64.encodeToString(jSONObject.toString().getBytes(), 2);
                j.a();
                j.a((WebView) this.e, b, strEncodeToString);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (this.o && (view = this.n) != null && (view instanceof ATSplashNativeView)) {
                ((ATSplashNativeView) view).updateCountDown(i);
            }
        }
    }
}
