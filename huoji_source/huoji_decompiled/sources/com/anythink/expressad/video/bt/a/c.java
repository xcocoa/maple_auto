package com.anythink.expressad.video.bt.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.anythink.core.common.a.k;
import com.anythink.core.common.b.n;
import com.anythink.core.common.c.g;
import com.anythink.core.common.o.x;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.g.a.f;
import com.anythink.expressad.foundation.h.h;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.module.ATTempContainer;
import com.anythink.expressad.video.bt.module.AnythinkBTContainer;
import com.anythink.expressad.video.bt.module.AnythinkBTLayout;
import com.anythink.expressad.video.bt.module.AnythinkBTNativeEC;
import com.anythink.expressad.video.bt.module.AnythinkBTVideoView;
import com.anythink.expressad.video.bt.module.AnythinkBTWebView;
import com.anythink.expressad.video.bt.module.BTBaseView;
import com.anythink.expressad.videocommon.b.i;
import com.anythink.expressad.videocommon.e.d;
import com.octopus.ad.widget.ScrollClickView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final int a = -999;
    private static final String b = "OperateViews";
    private static ConcurrentHashMap<String, LinkedHashMap<String, View>> c = new ConcurrentHashMap<>();
    private static LinkedHashMap<String, String> d = new LinkedHashMap<>();
    private static LinkedHashMap<String, com.anythink.expressad.foundation.d.c> e = new LinkedHashMap<>();
    private static LinkedHashMap<String, d> f = new LinkedHashMap<>();
    private static LinkedHashMap<String, String> g = new LinkedHashMap<>();
    private static LinkedHashMap<String, Integer> h = new LinkedHashMap<>();
    private static LinkedHashMap<String, Activity> i = new LinkedHashMap<>();
    private static volatile int j = 10000;
    private static int k = 0;
    private static int l = 1;
    private static String m = "";
    private static int n;
    private static int o;
    private static int p;
    private static int q;
    private static int r;

    public static class a {
        private static c a = new c(0);

        private a() {
        }
    }

    private c() {
    }

    public /* synthetic */ c(byte b2) {
        this();
    }

    public static void E(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    public static void I(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    public static void J(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
            } else {
                c(obj, "android mediaPlayer not support setScaleType");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, org.json.JSONObject] */
    public static void P(Object obj, JSONObject jSONObject) {
        String str;
        ?? r17;
        String str2;
        File file;
        ?? r3 = "message";
        String str3 = "code";
        ?? jSONObject2 = new JSONObject();
        int i2 = 1;
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray = jSONObject.getJSONArray("resource");
            if (jSONArray != null && jSONArray.length() > 0) {
                ?? jSONArray2 = new JSONArray();
                int length = jSONArray.length();
                int i3 = 0;
                r3 = r3;
                while (i3 < length) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                    String strOptString = jSONObject3.optString("ref", "");
                    int i4 = jSONObject3.getInt("type");
                    ?? jSONObject4 = new JSONObject();
                    if (i4 != i2 || TextUtils.isEmpty(strOptString)) {
                        r17 = r3;
                        str2 = str3;
                        if (i4 == 2 && !TextUtils.isEmpty(strOptString)) {
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("type", 2);
                            jSONObject5.put("path", i.a().c(strOptString) == null ? "" : i.a().c(strOptString));
                            jSONObject4.put(strOptString, jSONObject5);
                            r17 = r17;
                        } else if (i4 == 3 && !TextUtils.isEmpty(strOptString)) {
                            try {
                                file = new File(strOptString);
                            } catch (Throwable th) {
                                if (com.anythink.expressad.a.a) {
                                    th.printStackTrace();
                                }
                            }
                            String strConcat = (file.exists() && file.isFile() && file.canRead()) ? "file:////".concat(String.valueOf(strOptString)) : "";
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("type", 3);
                            jSONObject6.put("path", strConcat);
                            jSONObject4.put(strOptString, jSONObject6);
                            r17 = r17;
                        } else if (i4 == 4 && !TextUtils.isEmpty(strOptString)) {
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put("type", 4);
                            jSONObject7.put("path", s.a(strOptString) == null ? "" : s.a(strOptString));
                            jSONObject4.put(strOptString, jSONObject7);
                            r17 = r17;
                        }
                        jSONArray2.put(jSONObject4);
                    } else {
                        JSONObject jSONObject8 = new JSONObject();
                        com.anythink.expressad.videocommon.b.a.a();
                        k kVarB = com.anythink.expressad.videocommon.b.a.b(strOptString);
                        if (kVarB != null) {
                            jSONObject8.put("type", i2);
                            r17 = r3;
                            str2 = str3;
                            try {
                                jSONObject8.put("videoDataLength", kVarB.d());
                                String strB = kVarB.b();
                                if (TextUtils.isEmpty(strB)) {
                                    jSONObject8.put("path", "");
                                    jSONObject8.put("path4Web", "");
                                } else {
                                    jSONObject8.put("path", strB);
                                    jSONObject8.put("path4Web", strB);
                                }
                                if (kVarB.c() == 100) {
                                    jSONObject8.put("downloaded", 1);
                                } else {
                                    jSONObject8.put("downloaded", 0);
                                }
                                jSONObject4.put(strOptString, jSONObject8);
                                r17 = r17;
                                jSONArray2.put(jSONObject4);
                            } catch (Throwable th2) {
                                th = th2;
                                r3 = r17;
                                str = str2;
                            }
                        } else {
                            r17 = r3;
                            str2 = str3;
                        }
                    }
                    i3++;
                    r3 = r17;
                    str3 = str2;
                    i2 = 1;
                }
                r17 = r3;
                str2 = str3;
                jSONObject2.put("resource", jSONArray2);
                j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            }
            str = "code";
            r3 = 1;
            try {
                try {
                    jSONObject2.put(str, 1);
                    try {
                        jSONObject2.put("message", "resource is null");
                        j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        return;
                    } catch (JSONException e2) {
                        e = e2;
                        e.getMessage();
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (JSONException e3) {
                e = e3;
            } catch (Throwable th4) {
                th = th4;
                r3 = "message";
            }
        } catch (Throwable th5) {
            th = th5;
            str = str3;
        }
        try {
            jSONObject2.put(str, 1);
            jSONObject2.put(r3, th.getLocalizedMessage());
            j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (JSONException e4) {
            e4.getMessage();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.ViewGroup$LayoutParams] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.ViewGroup$LayoutParams] */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.widget.LinearLayout$LayoutParams] */
    private static ViewGroup.LayoutParams a(ViewGroup.LayoutParams layoutParams, Rect rect, int i2, int i3) {
        if (rect == null) {
            rect = new Rect(a, a, a, a);
        }
        Context contextF = n.a().f();
        if (contextF == null) {
            return layoutParams;
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            int i4 = rect.left;
            if (i4 != -999) {
                layoutParams2.leftMargin = t.b(contextF, i4);
            }
            int i5 = rect.top;
            if (i5 != -999) {
                layoutParams2.topMargin = t.b(contextF, i5);
            }
            int i6 = rect.right;
            if (i6 != -999) {
                layoutParams2.rightMargin = t.b(contextF, i6);
            }
            int i7 = rect.bottom;
            if (i7 != -999) {
                layoutParams2.bottomMargin = t.b(contextF, i7);
            }
            if (i2 > 0) {
                layoutParams2.width = t.b(contextF, i2);
            }
            if (i3 > 0) {
                layoutParams2.height = t.b(contextF, i3);
            }
            return layoutParams2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
            int i8 = rect.left;
            if (i8 != -999) {
                layoutParams3.leftMargin = t.b(contextF, i8);
            }
            int i9 = rect.top;
            if (i9 != -999) {
                layoutParams3.topMargin = t.b(contextF, i9);
            }
            int i10 = rect.right;
            if (i10 != -999) {
                layoutParams3.rightMargin = t.b(contextF, i10);
            }
            int i11 = rect.bottom;
            if (i11 != -999) {
                layoutParams3.bottomMargin = t.b(contextF, i11);
            }
            if (i2 > 0) {
                layoutParams3.width = t.b(contextF, i2);
            }
            if (i3 > 0) {
                layoutParams3.height = t.b(contextF, i3);
            }
            return layoutParams3;
        }
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            layoutParams = new LinearLayout.LayoutParams(-1, -1);
            int i12 = rect.left;
            if (i12 != -999) {
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = t.b(contextF, i12);
            }
            int i13 = rect.top;
            if (i13 != -999) {
                ((LinearLayout.LayoutParams) layoutParams).topMargin = t.b(contextF, i13);
            }
            int i14 = rect.right;
            if (i14 != -999) {
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = t.b(contextF, i14);
            }
            int i15 = rect.bottom;
            if (i15 != -999) {
                ((LinearLayout.LayoutParams) layoutParams).bottomMargin = t.b(contextF, i15);
            }
            if (i2 > 0) {
                ((LinearLayout.LayoutParams) layoutParams).width = t.b(contextF, i2);
            }
            if (i3 > 0) {
                ((LinearLayout.LayoutParams) layoutParams).height = t.b(contextF, i3);
            }
        }
        return layoutParams;
    }

    public static com.anythink.expressad.foundation.d.c a(String str) {
        if (e.containsKey(str)) {
            return e.get(str);
        }
        return null;
    }

    public static c a() {
        return a.a;
    }

    public static void a(int i2, int i3, int i4, int i5, int i6) {
        new StringBuilder("OperateViews setNotchString = ").append(String.format("%1$s-%2$s-%3$s-%4$s-%5$s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6)));
        m = h.a(i2, i3, i4, i5, i6);
        n = i2;
        o = i3;
        p = i4;
        q = i5;
        r = i6;
    }

    public static void a(WebView webView, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", l);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            j.a().a(webView, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public static void a(WebView webView, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", k);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str2);
            jSONObject.put("data", jSONObject2);
            j.a();
            j.a(webView, str, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            a(webView, e2.getMessage());
            e2.getMessage();
        }
    }

    public static void a(Object obj) {
        try {
            a(obj, "");
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", k);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            c(obj, e2.getMessage());
            e2.getMessage();
        }
    }

    private static void a(Object obj, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", k);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str2);
            jSONObject.put("data", jSONObject2);
            j.a().a(obj, str, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            c(obj, e2.getMessage());
            e2.getMessage();
        }
    }

    public static void a(String str, int i2) {
        h.put(str, Integer.valueOf(i2));
    }

    public static void a(String str, Activity activity) {
        i.put(str, activity);
    }

    private static void a(String str, com.anythink.expressad.foundation.d.c cVar) {
        if (f.k == null || TextUtils.isEmpty(cVar.aZ())) {
            return;
        }
        f.a(str, cVar, "reward");
    }

    public static void a(String str, String str2) {
        d.put(str, str2);
    }

    private static void a(String str, String str2, String str3) {
        try {
            LinkedHashMap<String, View> linkedHashMapB = a.a.b(str, str2);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).notifyEvent(str3);
                } else if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).notifyEvent(str3);
                } else if (view instanceof AnythinkBTLayout) {
                    ((AnythinkBTLayout) view).notifyEvent(str3);
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static d b(String str) {
        if (f.containsKey(str)) {
            return f.get(str);
        }
        return null;
    }

    public static String b() {
        int i2 = j + 1;
        j = i2;
        return String.valueOf(i2);
    }

    public static void b(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                int iOptInt = jSONObject.optInt("type");
                String strOptString = jSONObject.optString(com.anythink.expressad.foundation.d.c.am);
                int iOptInt2 = jSONObject.optInt("report");
                boolean z = true;
                if (iOptInt2 == 0) {
                    Context contextF = n.a().f();
                    if (iOptInt == 0) {
                        z = false;
                    }
                    com.anythink.expressad.a.a.a(contextF, (com.anythink.expressad.foundation.d.c) null, "", strOptString, z);
                } else {
                    com.anythink.expressad.a.a.a(n.a().f(), null, "", strOptString, false, iOptInt != 0, iOptInt2);
                }
            }
            a(obj, "");
        } catch (Throwable unused) {
        }
    }

    public static String c(String str) {
        return g.containsKey(str) ? g.get(str) : "";
    }

    private static void c(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", l);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            j.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public static void d(String str) {
        i.remove(str);
    }

    public static int e(String str) {
        if (h.containsKey(str)) {
            return h.get(str).intValue();
        }
        return 2;
    }

    public static void f(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            String strOptString = jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
            } else {
                a(obj, strOptString);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    public static void f(String str) {
        if (g.containsKey(str)) {
            g.remove(str);
        }
        if (f.containsKey(str)) {
            f.remove(str);
        }
        if (e.containsKey(str)) {
            e.remove(str);
        }
        if (d.containsKey(str)) {
            d.remove(str);
        }
    }

    public static void g(String str) {
        if (h.containsKey(str)) {
            h.remove(str);
        }
    }

    private static String h(String str) {
        return d.containsKey(str) ? d.get(str) : "";
    }

    private static Activity i(String str) {
        if (i.containsKey(str)) {
            return i.get(str);
        }
        return null;
    }

    public final void A(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exit");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else {
                ((AnythinkBTVideoView) view).play();
                a(obj, strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerPlay failed: ").append(th.getMessage());
        }
    }

    public final void B(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exit");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else {
                ((AnythinkBTVideoView) view).pause();
                a(obj, strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerPause failed: ").append(th.getMessage());
        }
    }

    public final void C(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exit");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else {
                ((AnythinkBTVideoView) view).resume();
                a(obj, strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerResume failed: ").append(th.getMessage());
        }
    }

    public final void D(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exit");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else {
                ((AnythinkBTVideoView) view).stop();
                a(obj, strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerStop failed: ").append(th.getMessage());
        }
    }

    public final void F(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else if (((AnythinkBTVideoView) view).playMute()) {
                a(obj, strOptString2);
            } else {
                c(obj, "set mute failed");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerMute failed: ").append(th.getMessage());
        }
    }

    public final void G(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exit");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
            } else if (!((AnythinkBTVideoView) view).playUnMute()) {
                a(obj, "set unmute failed");
            } else {
                a(obj, strOptString2);
                a(obj, "onUnmute", strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerUnmute failed: ").append(th.getMessage());
        }
    }

    public final void H(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTVideoView)) {
                c(obj, "instanceId is not player");
                return;
            }
            int mute = ((AnythinkBTVideoView) view).getMute();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", k);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("id", strOptString2);
            jSONObject3.put("mute", mute);
            jSONObject2.put("data", jSONObject3);
            j.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("playerGetMuteState failed: ").append(th.getMessage());
        }
    }

    public final void K(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof ATTempContainer)) {
                c(obj, "view not exist");
            } else {
                ((ATTempContainer) view).preload();
                a(obj, strOptString2);
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("preloadSubPlayTemplateView failed: ").append(th.getMessage());
        }
    }

    public final void L(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            AnythinkBTContainer anythinkBTContainer = null;
            if (linkedHashMapB.size() <= 0) {
                c(obj, "unitId or instanceId not exist");
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTContainer) {
                    anythinkBTContainer = (AnythinkBTContainer) view;
                } else if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).onDestory();
                } else if (view instanceof AnythinkBTVideoView) {
                    String instanceId = ((AnythinkBTVideoView) view).getInstanceId();
                    com.anythink.expressad.video.bt.a.a.a();
                    com.anythink.expressad.video.bt.a.a.a(instanceId);
                    ((AnythinkBTVideoView) view).onDestory();
                } else if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).onDestroy();
                }
            }
            if (anythinkBTContainer == null) {
                c(obj, "not found AnythinkBTContainer");
                return;
            }
            anythinkBTContainer.onAdClose();
            c.remove(linkedHashMapB);
            linkedHashMapB.clear();
            c.remove(strOptString + "_" + strH);
            a(obj, strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("closeAd failed: ").append(th.getMessage());
        }
    }

    public final void M(Object obj, JSONObject jSONObject) {
        try {
            WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
            String rid = windVaneWebView != null ? windVaneWebView.getRid() : "";
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("eventName");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, rid);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                c(obj, "unitId not exist");
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).broadcast(strOptString2, jSONObjectOptJSONObject);
                }
                if (view instanceof AnythinkBTLayout) {
                    ((AnythinkBTLayout) view).broadcast(strOptString2, jSONObjectOptJSONObject);
                }
            }
            a(obj, "");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("broadcast failed: ").append(th.getMessage());
        }
    }

    public final void N(Object obj, JSONObject jSONObject) {
        try {
            WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
            String strOptString = "";
            String rid = windVaneWebView != null ? windVaneWebView.getRid() : "";
            String strOptString2 = jSONObject.optString("unitId");
            String strOptString3 = jSONObject.optString("id");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            String strOptString4 = jSONObjectOptJSONObject.optString("userId");
            boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("expired");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward");
            String strOptString5 = jSONObjectOptJSONObject.optString(g.a.h);
            com.anythink.expressad.videocommon.c.c cVar = null;
            if (jSONObjectOptJSONObject2 != null) {
                cVar = new com.anythink.expressad.videocommon.c.c(jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optInt("amount"));
                strOptString = jSONObjectOptJSONObject2.optString("id");
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString2, rid);
            if (linkedHashMapB.size() <= 0 || !g.containsKey(strOptString3)) {
                c(obj, "unitId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString3);
            if (!(view instanceof ATTempContainer)) {
                c(obj, "instanceId not exist");
                return;
            }
            ATTempContainer aTTempContainer = (ATTempContainer) view;
            aTTempContainer.setReward(cVar);
            aTTempContainer.setUserId(strOptString4);
            aTTempContainer.setRewardId(strOptString);
            aTTempContainer.setCampaignExpired(zOptBoolean);
            if (!TextUtils.isEmpty(strOptString5)) {
                aTTempContainer.setDeveloperExtraData(strOptString5);
            }
            a(obj, strOptString3);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("setSubPlayTemplateInfo failed: ").append(th.getMessage());
        }
    }

    public final void O(Object obj, JSONObject jSONObject) {
        try {
            WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
            String rid = windVaneWebView != null ? windVaneWebView.getRid() : "";
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            String strOptString3 = jSONObjectOptJSONObject.optString("eventName");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("eventData");
            if (jSONObjectOptJSONObject2 == null) {
                jSONObjectOptJSONObject2 = new JSONObject();
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, rid);
            if (linkedHashMapB.size() <= 0) {
                c(obj, "unitId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof WindVaneWebView) {
                        j.a();
                        j.a((WebView) childAt, strOptString3, Base64.encodeToString(jSONObjectOptJSONObject2.toString().getBytes(), 2));
                        a(obj, strOptString2);
                        return;
                    }
                }
            }
            c(obj, "instanceId not exist");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("webviewFireEvent failed: ").append(th.getMessage());
        }
    }

    public final void Q(Object obj, JSONObject jSONObject) {
        new StringBuilder("createNativeEC:").append(jSONObject);
        try {
            String strOptString = jSONObject.optString("unitId");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(strOptString)) {
                String rid = "";
                com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONObjectOptJSONObject.optJSONObject("campaign"));
                if (cVarB != null && !TextUtils.isEmpty(strOptString)) {
                    cVarB.l(strOptString);
                    rid = cVarB.Z();
                }
                d dVarA = d.a(jSONObjectOptJSONObject.optJSONObject("unitSetting"));
                if (dVarA != null) {
                    dVarA.a(strOptString);
                }
                AnythinkBTNativeEC anythinkBTNativeEC = new AnythinkBTNativeEC(n.a().f());
                anythinkBTNativeEC.setCampaign(cVarB);
                com.anythink.expressad.video.signal.a.j jVar = new com.anythink.expressad.video.signal.a.j(null, cVarB);
                jVar.a(strOptString);
                anythinkBTNativeEC.setJSCommon(jVar);
                anythinkBTNativeEC.setUnitId(strOptString);
                anythinkBTNativeEC.setRewardUnitSetting(dVarA);
                WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                if (windVaneWebView != null) {
                    rid = windVaneWebView.getRid();
                    anythinkBTNativeEC.setCreateWebView(windVaneWebView);
                }
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, rid);
                String strB = b();
                d.put(strB, rid);
                anythinkBTNativeEC.setInstanceId(strB);
                linkedHashMapB.put(strB, anythinkBTNativeEC);
                anythinkBTNativeEC.preLoadData();
                if (cVarB == null) {
                    c(obj, "campaign is null");
                    return;
                } else {
                    a(obj, strB);
                    return;
                }
            }
            c(obj, "unitId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("createNativeEC failed:").append(th.getMessage());
        }
    }

    public final void a(final Object obj, JSONObject jSONObject) {
        final Rect rect;
        final int i2;
        final int iOptInt;
        try {
            final String strOptString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(strOptString)) {
                c(obj, "unitId is empty");
                return;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            int iOptInt2 = jSONObjectOptJSONObject.optInt("delay", 0);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            Rect rect2 = new Rect(a, a, a, a);
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect3 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                int iOptInt3 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                rect = rect3;
                i2 = iOptInt3;
            } else {
                rect = rect2;
                i2 = 0;
                iOptInt = 0;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.anythink.expressad.video.bt.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    String rid;
                    WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                    if (windVaneWebView != null) {
                        rid = windVaneWebView.getRid();
                    } else {
                        rid = "";
                        windVaneWebView = null;
                    }
                    LinkedHashMap<String, View> linkedHashMapB = c.this.b(strOptString, rid);
                    String strB = c.b();
                    c.d.put(strB, rid);
                    AnythinkBTLayout anythinkBTLayout = new AnythinkBTLayout(n.a().f());
                    linkedHashMapB.put(strB, anythinkBTLayout);
                    anythinkBTLayout.setInstanceId(strB);
                    anythinkBTLayout.setUnitId(strOptString);
                    anythinkBTLayout.setWebView(windVaneWebView);
                    anythinkBTLayout.setRect(rect);
                    int i3 = i2;
                    if (i3 > 0 || iOptInt > 0) {
                        anythinkBTLayout.setLayout(i3, iOptInt);
                    }
                    c.a(obj, strB);
                }
            }, iOptInt2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("create view failed:").append(th.getMessage());
        }
    }

    public final synchronized LinkedHashMap<String, View> b(String str, String str2) {
        if (c.containsKey(str + "_" + str2)) {
            return c.get(str + "_" + str2);
        }
        LinkedHashMap<String, View> linkedHashMap = new LinkedHashMap<>();
        c.put(str + "_" + str2, linkedHashMap);
        return linkedHashMap;
    }

    public final void b(final Object obj, JSONObject jSONObject) {
        final Rect rect;
        final int i2;
        final int iOptInt;
        try {
            final String strOptString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(strOptString)) {
                c(obj, "unitId is empty");
                return;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            int iOptInt2 = jSONObjectOptJSONObject.optInt("delay", 0);
            final String strOptString2 = jSONObjectOptJSONObject.optString("fileURL");
            final String strOptString3 = jSONObjectOptJSONObject.optString("filePath");
            final String strOptString4 = jSONObjectOptJSONObject.optString(com.tramini.plugin.a.f.a.b);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            Rect rect2 = new Rect(a, a, a, a);
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect3 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                int iOptInt3 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                rect = rect3;
                i2 = iOptInt3;
            } else {
                rect = rect2;
                i2 = 0;
                iOptInt = 0;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.anythink.expressad.video.bt.a.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    String rid;
                    WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                    if (windVaneWebView != null) {
                        rid = windVaneWebView.getRid();
                    } else {
                        rid = "";
                        windVaneWebView = null;
                    }
                    LinkedHashMap<String, View> linkedHashMapB = c.this.b(strOptString, rid);
                    String strB = c.b();
                    c.d.put(strB, rid);
                    AnythinkBTWebView anythinkBTWebView = new AnythinkBTWebView(n.a().f());
                    linkedHashMapB.put(strB, anythinkBTWebView);
                    anythinkBTWebView.setInstanceId(strB);
                    anythinkBTWebView.setUnitId(strOptString);
                    anythinkBTWebView.setFileURL(strOptString2);
                    anythinkBTWebView.setFilePath(strOptString3);
                    anythinkBTWebView.setHtml(strOptString4);
                    anythinkBTWebView.setRect(rect);
                    anythinkBTWebView.setWebViewRid(rid);
                    anythinkBTWebView.setCreateWebView(windVaneWebView);
                    int i3 = i2;
                    if (i3 > 0 || iOptInt > 0) {
                        anythinkBTWebView.setLayout(i3, iOptInt);
                    }
                    anythinkBTWebView.preload();
                    c.a(obj, strB);
                }
            }, iOptInt2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("createWebview failed:").append(th.getMessage());
        }
    }

    public final void c(Object obj, JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("unitId");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(strOptString)) {
                String rid = "";
                com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONObjectOptJSONObject.optJSONObject("campaign"));
                if (cVarB != null && !TextUtils.isEmpty(strOptString)) {
                    cVarB.l(strOptString);
                    rid = cVarB.Z();
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("show_time", 0);
                int iOptInt2 = jSONObjectOptJSONObject.optInt("show_mute", 0);
                int iOptInt3 = jSONObjectOptJSONObject.optInt("show_close", 0);
                int iOptInt4 = jSONObjectOptJSONObject.optInt("orientation", 1);
                int iOptInt5 = jSONObjectOptJSONObject.optInt("show_pgb", 0);
                AnythinkBTVideoView anythinkBTVideoView = new AnythinkBTVideoView(n.a().f());
                anythinkBTVideoView.setCampaign(cVarB);
                anythinkBTVideoView.setUnitId(strOptString);
                anythinkBTVideoView.setShowMute(iOptInt2);
                anythinkBTVideoView.setShowTime(iOptInt);
                anythinkBTVideoView.setShowClose(iOptInt3);
                anythinkBTVideoView.setOrientation(iOptInt4);
                anythinkBTVideoView.setProgressBarState(iOptInt5);
                WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                if (windVaneWebView != null) {
                    rid = windVaneWebView.getRid();
                    anythinkBTVideoView.setCreateWebView(windVaneWebView);
                }
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, rid);
                String strB = b();
                d.put(strB, rid);
                anythinkBTVideoView.setInstanceId(strB);
                linkedHashMapB.put(strB, anythinkBTVideoView);
                anythinkBTVideoView.preLoadData();
                if (cVarB == null) {
                    c(obj, "campaign is null");
                } else {
                    a(obj, strB);
                }
                com.anythink.expressad.video.bt.a.a.a();
                com.anythink.expressad.video.bt.a.a.a(strB, anythinkBTVideoView);
                return;
            }
            c(obj, "unitId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("createPlayerView failed:").append(th.getMessage());
        }
    }

    public final void d(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(strOptString)) {
                int iOptInt = jSONObjectOptJSONObject.optInt("mute");
                String rid = "";
                com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONObjectOptJSONObject.optJSONObject("campaign"));
                if (cVarB != null && !TextUtils.isEmpty(strOptString)) {
                    cVarB.l(strOptString);
                    rid = cVarB.Z();
                }
                d dVarA = d.a(jSONObjectOptJSONObject.optJSONObject("unitSetting"));
                if (dVarA != null) {
                    dVarA.a(strOptString);
                }
                String strOptString2 = jSONObjectOptJSONObject.optString("userId");
                if (TextUtils.isEmpty(rid) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                    rid = windVaneWebView.getRid();
                }
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, rid);
                String strB = b();
                d.put(strB, rid);
                ATTempContainer aTTempContainer = new ATTempContainer(n.a().f());
                aTTempContainer.setInstanceId(strB);
                aTTempContainer.setUnitId(strOptString);
                aTTempContainer.setCampaign(cVarB);
                aTTempContainer.setRewardUnitSetting(dVarA);
                aTTempContainer.setBigOffer(true);
                if (!TextUtils.isEmpty(strOptString2)) {
                    aTTempContainer.setUserId(strOptString2);
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward");
                if (jSONObjectOptJSONObject2 != null) {
                    String strOptString3 = jSONObjectOptJSONObject2.optString("id");
                    com.anythink.expressad.videocommon.c.c cVar = new com.anythink.expressad.videocommon.c.c(jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optInt("amount"));
                    if (!TextUtils.isEmpty(strOptString3)) {
                        aTTempContainer.setRewardId(strOptString3);
                    }
                    if (!TextUtils.isEmpty(cVar.a())) {
                        aTTempContainer.setReward(cVar);
                    }
                }
                String strOptString4 = jSONObjectOptJSONObject.optString(g.a.h);
                if (!TextUtils.isEmpty(strOptString4)) {
                    aTTempContainer.setDeveloperExtraData(strOptString4);
                }
                aTTempContainer.setMute(iOptInt);
                linkedHashMapB.put(strB, aTTempContainer);
                g.put(strB, strOptString);
                e.put(strB, cVarB);
                f.put(strB, dVarA);
                a(obj, strB);
                return;
            }
            c(obj, "unitId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("createSubPlayTemplateView failed:").append(th.getMessage());
        }
    }

    public final void e(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") != null && !TextUtils.isEmpty(strOptString)) {
                String strH = h(strOptString2);
                if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                    strH = windVaneWebView.getRid();
                }
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
                if (linkedHashMapB == null || !linkedHashMapB.containsKey(strOptString2)) {
                    c(obj, "unitId or instanceId not exist");
                    return;
                }
                View view = linkedHashMapB.get(strOptString2);
                linkedHashMapB.remove(strOptString2);
                if (view != null && view.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                    }
                    if (view instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) view;
                        if (viewGroup2.getChildCount() > 0) {
                            int childCount = viewGroup2.getChildCount();
                            for (int i2 = 0; i2 < childCount; i2++) {
                                View childAt = viewGroup2.getChildAt(i2);
                                if (childAt instanceof AnythinkBTWebView) {
                                    linkedHashMapB.remove(((AnythinkBTWebView) childAt).getInstanceId());
                                    ((AnythinkBTWebView) childAt).onDestory();
                                } else if (childAt instanceof AnythinkBTVideoView) {
                                    linkedHashMapB.remove(((AnythinkBTVideoView) childAt).getInstanceId());
                                    ((AnythinkBTVideoView) childAt).onDestory();
                                } else if (childAt instanceof ATTempContainer) {
                                    linkedHashMapB.remove(((ATTempContainer) childAt).getInstanceId());
                                    ((ATTempContainer) childAt).onDestroy();
                                }
                            }
                        }
                    }
                }
                if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).onDestroy();
                }
                if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).onDestory();
                }
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).onDestory();
                }
                a(obj, strOptString2);
                a(obj, "onComponentDestroy", strOptString2);
                return;
            }
            c(obj, "unidId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
        }
    }

    public final void g(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            if (jSONObjectOptJSONObject2 == null) {
                c(obj, "rect not exist");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            Rect rect = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
            int iOptInt = jSONObjectOptJSONObject2.optInt("width");
            int iOptInt2 = jSONObjectOptJSONObject2.optInt("height");
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view is null");
                return;
            }
            if (view.getParent() != null) {
                view.setLayoutParams(a(view.getLayoutParams(), rect, iOptInt, iOptInt2));
                view.requestLayout();
            } else {
                if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).setRect(rect);
                    ((AnythinkBTWebView) view).setLayout(iOptInt, iOptInt2);
                }
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).setRect(rect);
                    ((AnythinkBTVideoView) view).setLayout(iOptInt, iOptInt2);
                }
            }
            a(obj, strOptString2);
            a(obj, "onViewRectChanged", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("setViewRect failed: ").append(th.getMessage());
        }
    }

    public final void h(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "params not enough");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null || view.getParent() == null) {
                c(obj, "view is null");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup == null) {
                c(obj, "parent is null");
                return;
            }
            viewGroup.removeView(view);
            a(obj, strOptString2);
            a(obj, "onRemoveFromView", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("removeFromSuperView failed: ").append(th.getMessage());
        }
    }

    public final void i(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("id");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString3) || !linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId is not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) linkedHashMapB.get(strOptString2);
            View view = linkedHashMapB.get(strOptString3);
            x.a(view);
            if (viewGroup != null && view != null) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
                int iOptInt2 = 0;
                if (view instanceof ATTempContainer) {
                    new StringBuilder("OperateViews setNotchString = ").append(String.format("%1$s-%2$s-%3$s-%4$s-%5$s", Integer.valueOf(n), Integer.valueOf(o), Integer.valueOf(p), Integer.valueOf(q), Integer.valueOf(r)));
                    ((ATTempContainer) view).setNotchPadding(n, o, p, q, r);
                    Iterator<View> it = linkedHashMapB.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        View next = it.next();
                        if (next instanceof AnythinkBTContainer) {
                            x.a(view);
                            ((AnythinkBTContainer) next).appendSubView((AnythinkBTContainer) next, (ATTempContainer) view, jSONObjectOptJSONObject2);
                            break;
                        }
                    }
                } else {
                    Rect rect = null;
                    if (jSONObjectOptJSONObject2 != null) {
                        Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                        iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                        iOptInt = jSONObjectOptJSONObject2.optInt("height");
                        rect = rect2;
                    } else if (view instanceof BTBaseView) {
                        rect = ((BTBaseView) view).getRect();
                        iOptInt2 = ((BTBaseView) view).getViewWidth();
                        iOptInt = ((BTBaseView) view).getViewHeight();
                    } else {
                        iOptInt = 0;
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    if (viewGroup instanceof FrameLayout) {
                        layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof RelativeLayout) {
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof LinearLayout) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    }
                    ViewGroup.LayoutParams layoutParamsA = a(layoutParams, rect, iOptInt2, iOptInt);
                    x.a(view);
                    viewGroup.addView(view, layoutParamsA);
                }
                a(obj, strOptString2);
                a(obj, "onAppendView", strOptString2);
                StringBuilder sb = new StringBuilder("appendSubView parentId = ");
                sb.append(strOptString2);
                sb.append(" childId = ");
                sb.append(strOptString3);
                return;
            }
            c(obj, "view is not exist");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("appendSubView failed: ").append(th.getMessage());
        }
    }

    public final void j(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(strOptString)) {
                String strOptString3 = jSONObjectOptJSONObject.optString("id");
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
                if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                    c(obj, "instanceId is not exist");
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) linkedHashMapB.get(strOptString3);
                View view = linkedHashMapB.get(strOptString2);
                x.a(view);
                if (viewGroup != null && view != null) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
                    if (view instanceof ATTempContainer) {
                        Iterator<View> it = linkedHashMapB.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            View next = it.next();
                            if (next instanceof AnythinkBTContainer) {
                                x.a(view);
                                ((AnythinkBTContainer) next).appendSubView((AnythinkBTContainer) next, (ATTempContainer) view, jSONObjectOptJSONObject2);
                                break;
                            }
                        }
                    } else {
                        Rect rect = null;
                        int iOptInt2 = 0;
                        if (jSONObjectOptJSONObject2 != null) {
                            Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                            iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                            iOptInt = jSONObjectOptJSONObject2.optInt("height");
                            rect = rect2;
                        } else if (view instanceof BTBaseView) {
                            rect = ((BTBaseView) view).getRect();
                            iOptInt2 = ((BTBaseView) view).getViewWidth();
                            iOptInt = ((BTBaseView) view).getViewHeight();
                        } else {
                            iOptInt = 0;
                        }
                        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                        if (viewGroup instanceof FrameLayout) {
                            layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof RelativeLayout) {
                            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof LinearLayout) {
                            layoutParams = new LinearLayout.LayoutParams(-1, -1);
                        }
                        ViewGroup.LayoutParams layoutParamsA = a(layoutParams, rect, iOptInt2, iOptInt);
                        x.a(view);
                        viewGroup.addView(view, layoutParamsA);
                    }
                    a(obj, strOptString2);
                    a(obj, "onAppendViewTo", strOptString2);
                    StringBuilder sb = new StringBuilder("appendViewTo parentId = ");
                    sb.append(strOptString3);
                    sb.append(" childId = ");
                    sb.append(strOptString2);
                    return;
                }
                c(obj, "view is not exist");
                return;
            }
            c(obj, "unitId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("appendViewTo failed: ").append(th.getMessage());
        }
    }

    public final void k(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("id");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString3) || !linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId is not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) linkedHashMapB.get(strOptString2);
            View view = linkedHashMapB.get(strOptString3);
            if (viewGroup != null && view != null) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
                int iOptInt2 = 0;
                if (view instanceof ATTempContainer) {
                    new StringBuilder("OperateViews setNotchString = ").append(String.format("%1$s-%2$s-%3$s-%4$s-%5$s", Integer.valueOf(n), Integer.valueOf(o), Integer.valueOf(p), Integer.valueOf(q), Integer.valueOf(r)));
                    ((ATTempContainer) view).setNotchPadding(n, o, p, q, r);
                    Iterator<View> it = linkedHashMapB.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        View next = it.next();
                        if (next instanceof AnythinkBTContainer) {
                            x.a(view);
                            ((AnythinkBTContainer) next).appendSubView((AnythinkBTContainer) next, (ATTempContainer) view, jSONObjectOptJSONObject2);
                            break;
                        }
                    }
                } else {
                    Rect rect = null;
                    if (jSONObjectOptJSONObject2 != null) {
                        Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                        iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                        iOptInt = jSONObjectOptJSONObject2.optInt("height");
                        rect = rect2;
                    } else if (view instanceof BTBaseView) {
                        rect = ((BTBaseView) view).getRect();
                        iOptInt2 = ((BTBaseView) view).getViewWidth();
                        iOptInt = ((BTBaseView) view).getViewHeight();
                    } else {
                        iOptInt = 0;
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    if (viewGroup instanceof FrameLayout) {
                        layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof RelativeLayout) {
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof LinearLayout) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    }
                    viewGroup.addView(view, a(layoutParams, rect, iOptInt2, iOptInt));
                }
                a(obj, strOptString2);
                a(obj, "onAppendView", strOptString2);
                StringBuilder sb = new StringBuilder("appendSubView parentId = ");
                sb.append(strOptString2);
                sb.append(" childId = ");
                sb.append(strOptString3);
                return;
            }
            c(obj, "view is not exist");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("appendSubView failed: ").append(th.getMessage());
        }
    }

    public final void l(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(strOptString)) {
                String strOptString3 = jSONObjectOptJSONObject.optString("id");
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
                if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                    c(obj, "instanceId is not exist");
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) linkedHashMapB.get(strOptString3);
                View view = linkedHashMapB.get(strOptString2);
                if (viewGroup != null && view != null) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
                    if (view instanceof ATTempContainer) {
                        Iterator<View> it = linkedHashMapB.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            View next = it.next();
                            if (next instanceof AnythinkBTContainer) {
                                x.a(view);
                                ((AnythinkBTContainer) next).appendSubView((AnythinkBTContainer) next, (ATTempContainer) view, jSONObjectOptJSONObject2);
                                break;
                            }
                        }
                    } else {
                        Rect rect = null;
                        int iOptInt2 = 0;
                        if (jSONObjectOptJSONObject2 != null) {
                            Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                            iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                            iOptInt = jSONObjectOptJSONObject2.optInt("height");
                            rect = rect2;
                        } else if (view instanceof BTBaseView) {
                            rect = ((BTBaseView) view).getRect();
                            iOptInt2 = ((BTBaseView) view).getViewWidth();
                            iOptInt = ((BTBaseView) view).getViewHeight();
                        } else {
                            iOptInt = 0;
                        }
                        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                        if (viewGroup instanceof FrameLayout) {
                            layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof RelativeLayout) {
                            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof LinearLayout) {
                            layoutParams = new LinearLayout.LayoutParams(-1, -1);
                        }
                        viewGroup.addView(view, a(layoutParams, rect, iOptInt2, iOptInt));
                    }
                    a(obj, strOptString2);
                    a(obj, "onAppendViewTo", strOptString2);
                    StringBuilder sb = new StringBuilder("appendViewTo parentId = ");
                    sb.append(strOptString3);
                    sb.append(" childId = ");
                    sb.append(strOptString2);
                    return;
                }
                c(obj, "view is not exist");
                return;
            }
            c(obj, "unitId or data is empty");
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("appendViewTo failed: ").append(th.getMessage());
        }
    }

    public final void m(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId is not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null || view.getParent() == null) {
                c(obj, "view is null");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup == null) {
                c(obj, "parent is null");
                return;
            }
            viewGroup.bringChildToFront(view);
            a(obj, strOptString2);
            a(obj, "onBringViewToFront", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("bringViewToFront failed: ").append(th.getMessage());
        }
    }

    public final void n(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view not exist");
                return;
            }
            view.setVisibility(8);
            a(obj, strOptString2);
            a(obj, "onHideView", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("hideView failed: + ").append(th.getMessage());
        }
    }

    public final void o(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view not exist");
                return;
            }
            view.setVisibility(0);
            a(obj, strOptString2);
            a(obj, "onShowView", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("showView failed: ").append(th.getMessage());
        }
    }

    public final void p(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString(com.anythink.expressad.foundation.h.i.d);
            if (TextUtils.isEmpty(strOptString3)) {
                c(obj, "color is not exist");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view not exist");
                return;
            }
            a(obj, strOptString2);
            view.setBackgroundColor(Color.parseColor(strOptString3));
            a(obj, "onViewBgColorChanged", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("setViewBgColor failed: ").append(th.getMessage());
        }
    }

    public final void q(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            double dOptDouble = jSONObjectOptJSONObject.optDouble("alpha", 1.0d);
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view not exist");
                return;
            }
            view.setAlpha((float) dOptDouble);
            a(obj, strOptString2);
            a(obj, "onViewAlphaChanged", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("setViewAlpha failed: ").append(th.getMessage());
        }
    }

    public final void r(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            double dOptDouble = jSONObjectOptJSONObject.optDouble("vertical", 1.0d);
            double dOptDouble2 = jSONObjectOptJSONObject.optDouble("horizon", 1.0d);
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (view == null) {
                c(obj, "view not exist");
                return;
            }
            view.setScaleX((float) dOptDouble2);
            view.setScaleY((float) dOptDouble);
            a(obj, strOptString2);
            a(obj, "onViewScaleChanged", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("setViewScale failed: ").append(th.getMessage());
        }
    }

    public final void s(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("targetComponentId");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            View view2 = linkedHashMapB.get(strOptString3);
            if (view2 == null || view2.getParent() == null) {
                c(obj, "view not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(view2);
            Rect rect = null;
            int iOptInt2 = 0;
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                rect = rect2;
            } else if (view instanceof BTBaseView) {
                rect = ((BTBaseView) view).getRect();
                iOptInt2 = ((BTBaseView) view).getViewWidth();
                iOptInt = ((BTBaseView) view).getViewHeight();
            } else {
                iOptInt = 0;
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (viewGroup instanceof FrameLayout) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof RelativeLayout) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof LinearLayout) {
                layoutParams = new LinearLayout.LayoutParams(-1, -1);
            }
            ViewGroup.LayoutParams layoutParamsA = a(layoutParams, rect, iOptInt2, iOptInt);
            x.a(view);
            viewGroup.addView(view, iIndexOfChild + 1, layoutParamsA);
            a(obj, strOptString2);
            a(obj, "onInsertViewAbove", strOptString2);
            StringBuilder sb = new StringBuilder("insertViewAbove instanceId = ");
            sb.append(strOptString2);
            sb.append(" brotherId = ");
            sb.append(strOptString3);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("insertViewAbove failed: ").append(th.getMessage());
        }
    }

    public final void t(Object obj, JSONObject jSONObject) {
        int iOptInt;
        int viewWidth;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("targetComponentId");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            View view2 = linkedHashMapB.get(strOptString3);
            if (view2 == null || view2.getParent() == null) {
                c(obj, "view not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(view2);
            Rect rect = null;
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                viewWidth = iOptInt2;
                rect = rect2;
            } else if (view instanceof BTBaseView) {
                rect = ((BTBaseView) view).getRect();
                viewWidth = ((BTBaseView) view).getViewWidth();
                iOptInt = ((BTBaseView) view).getViewHeight();
            } else {
                viewWidth = 0;
                iOptInt = 0;
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (viewGroup instanceof FrameLayout) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof RelativeLayout) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof LinearLayout) {
                layoutParams = new LinearLayout.LayoutParams(-1, -1);
            }
            ViewGroup.LayoutParams layoutParamsA = a(layoutParams, rect, viewWidth, iOptInt);
            x.a(view);
            int i2 = iIndexOfChild - 1;
            viewGroup.addView(view, i2 >= 0 ? i2 : 0, layoutParamsA);
            a(obj, strOptString2);
            a(obj, "onInsertViewBelow", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("insertViewBelow failed: ").append(th.getMessage());
        }
    }

    public final void u(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("targetComponentId");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            View view2 = linkedHashMapB.get(strOptString3);
            if (view2 == null || view2.getParent() == null) {
                c(obj, "view not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(view2);
            Rect rect = null;
            int iOptInt2 = 0;
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                rect = rect2;
            } else if (view instanceof BTBaseView) {
                rect = ((BTBaseView) view).getRect();
                iOptInt2 = ((BTBaseView) view).getViewWidth();
                iOptInt = ((BTBaseView) view).getViewHeight();
            } else {
                iOptInt = 0;
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (viewGroup instanceof FrameLayout) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof RelativeLayout) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof LinearLayout) {
                layoutParams = new LinearLayout.LayoutParams(-1, -1);
            }
            viewGroup.addView(view, iIndexOfChild + 1, a(layoutParams, rect, iOptInt2, iOptInt));
            a(obj, strOptString2);
            a(obj, "onInsertViewAbove", strOptString2);
            StringBuilder sb = new StringBuilder("insertViewAbove instanceId = ");
            sb.append(strOptString2);
            sb.append(" brotherId = ");
            sb.append(strOptString3);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("insertViewAbove failed: ").append(th.getMessage());
        }
    }

    public final void v(Object obj, JSONObject jSONObject) {
        int iOptInt;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject.optString("targetComponentId");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2) || !linkedHashMapB.containsKey(strOptString3)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            View view2 = linkedHashMapB.get(strOptString3);
            if (view2 == null || view2.getParent() == null) {
                c(obj, "view not exist");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(view2);
            Rect rect = null;
            int iOptInt2 = 0;
            if (jSONObjectOptJSONObject2 != null) {
                Rect rect2 = new Rect(jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject2.optInt("top", a), jSONObjectOptJSONObject2.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject2.optInt("bottom", a));
                iOptInt2 = jSONObjectOptJSONObject2.optInt("width");
                iOptInt = jSONObjectOptJSONObject2.optInt("height");
                rect = rect2;
            } else if (view instanceof BTBaseView) {
                rect = ((BTBaseView) view).getRect();
                iOptInt2 = ((BTBaseView) view).getViewWidth();
                iOptInt = ((BTBaseView) view).getViewHeight();
            } else {
                iOptInt = 0;
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (viewGroup instanceof FrameLayout) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof RelativeLayout) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            } else if (viewGroup instanceof LinearLayout) {
                layoutParams = new LinearLayout.LayoutParams(-1, -1);
            }
            viewGroup.addView(view, iIndexOfChild, a(layoutParams, rect, iOptInt2, iOptInt));
            a(obj, strOptString2);
            a(obj, "onInsertViewBelow", strOptString2);
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("insertViewBelow failed: ").append(th.getMessage());
        }
    }

    public final void w(Object obj, JSONObject jSONObject) {
        int iOptInt;
        int i2;
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                c(obj, "data is empty");
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("content");
            if (jSONObjectOptJSONObject2 == null) {
                c(obj, "content is empty");
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject2.optString("fileURL");
            String strOptString4 = jSONObjectOptJSONObject2.optString("filePath");
            String strOptString5 = jSONObjectOptJSONObject2.optString(com.tramini.plugin.a.f.a.b);
            if (TextUtils.isEmpty(strOptString3) && TextUtils.isEmpty(strOptString4) && TextUtils.isEmpty(strOptString5)) {
                c(obj, "url is empty");
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("campaigns");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                for (int i3 = 0; i3 < length; i3++) {
                    com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONArrayOptJSONArray.getJSONObject(i3));
                    if (cVarB != null) {
                        cVarB.l(strOptString);
                        arrayList.add(cVarB);
                    }
                }
            }
            String strOptString6 = jSONObjectOptJSONObject2.optString("unitId");
            d dVarA = d.a(jSONObjectOptJSONObject2.optJSONObject("unitSetting"));
            if (dVarA != null) {
                dVarA.a(strOptString6);
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("rect");
            Rect rect = new Rect(a, a, a, a);
            if (jSONObjectOptJSONObject3 != null) {
                Rect rect2 = new Rect(jSONObjectOptJSONObject3.optInt(ScrollClickView.DIR_LEFT, a), jSONObjectOptJSONObject3.optInt("top", a), jSONObjectOptJSONObject3.optInt(ScrollClickView.DIR_RIGHT, a), jSONObjectOptJSONObject3.optInt("bottom", a));
                int iOptInt2 = jSONObjectOptJSONObject3.optInt("width");
                iOptInt = jSONObjectOptJSONObject3.optInt("height");
                i2 = iOptInt2;
                rect = rect2;
            } else {
                iOptInt = 0;
                i2 = 0;
            }
            int iOptInt3 = jSONObjectOptJSONObject2.optInt("refreshCache", 0);
            try {
                LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
                if (!linkedHashMapB.containsKey(strOptString2)) {
                    c(obj, "instanceId not exist");
                    return;
                }
                View view = linkedHashMapB.get(strOptString2);
                if (!(view instanceof AnythinkBTWebView)) {
                    c(obj, "view not exist");
                    return;
                }
                AnythinkBTWebView anythinkBTWebView = (AnythinkBTWebView) view;
                anythinkBTWebView.setHtml(strOptString5);
                anythinkBTWebView.setFilePath(strOptString4);
                anythinkBTWebView.setFileURL(strOptString3);
                anythinkBTWebView.setRect(rect);
                anythinkBTWebView.setLayout(i2, iOptInt);
                anythinkBTWebView.setCampaigns(arrayList);
                anythinkBTWebView.setRewardUnitSetting(dVarA);
                anythinkBTWebView.webviewLoad(iOptInt3);
                a(obj, strOptString2);
            } catch (Throwable th) {
                th = th;
                c(obj, th.getMessage());
                new StringBuilder("webviewLoad failed: ").append(th.getMessage());
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void x(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTWebView)) {
                c(obj, "view not exist");
            } else if (((AnythinkBTWebView) view).webviewReload()) {
                a(obj, strOptString2);
            } else {
                c(obj, "reload failed");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("webviewReload failed: ").append(th.getMessage());
        }
    }

    public final void y(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTWebView)) {
                c(obj, "view not exist");
            } else if (((AnythinkBTWebView) view).webviewGoBack()) {
                a(obj, strOptString2);
            } else {
                c(obj, "webviewGoBack failed");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("webviewGoBack failed: ").append(th.getMessage());
        }
    }

    public final void z(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String strOptString = jSONObject.optString("unitId");
            String strOptString2 = jSONObject.optString("id");
            String strH = h(strOptString2);
            if (TextUtils.isEmpty(strH) && (windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a) != null) {
                strH = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                c(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> linkedHashMapB = b(strOptString, strH);
            if (!linkedHashMapB.containsKey(strOptString2)) {
                c(obj, "instanceId not exist");
                return;
            }
            View view = linkedHashMapB.get(strOptString2);
            if (!(view instanceof AnythinkBTWebView)) {
                c(obj, "view not exist");
            } else if (((AnythinkBTWebView) view).webviewGoForward()) {
                a(obj, strOptString2);
            } else {
                c(obj, "webviewGoForward failed");
            }
        } catch (Throwable th) {
            c(obj, th.getMessage());
            new StringBuilder("webviewGoForward failed: ").append(th.getMessage());
        }
    }
}
