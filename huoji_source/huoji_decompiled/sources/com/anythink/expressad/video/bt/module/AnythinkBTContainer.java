package com.anythink.expressad.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.b.n;
import com.anythink.core.common.c.g;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.g.a.f;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.out.j;
import com.anythink.expressad.video.bt.module.b.h;
import com.anythink.expressad.video.dynview.f.d;
import com.anythink.expressad.video.signal.a.c;
import com.anythink.expressad.video.signal.b;
import com.anythink.expressad.video.signal.container.AbstractJSContainer;
import com.anythink.expressad.videocommon.a;
import com.anythink.expressad.widget.FeedBackButton;
import com.octopus.ad.widget.ScrollClickView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkBTContainer extends AbstractJSContainer implements b {
    private static final String d = AnythinkBTContainer.class.getSimpleName();
    private TextView B;
    private boolean C;
    private boolean D;
    private String E;
    private boolean F;
    private List<c> G;
    private List<com.anythink.expressad.videocommon.b.c> H;
    private com.anythink.expressad.video.bt.module.a.a I;
    private h J;
    private h K;
    private com.anythink.expressad.video.bt.module.a.b L;
    private String M;
    private String N;
    private boolean O;
    private int P;
    private boolean Q;
    private int R;
    private String S;
    private d T;
    public c a;
    private int e;
    private int f;
    private FrameLayout g;
    private AnythinkBTLayout h;
    private WindVaneWebView i;
    private LayoutInflater j;
    private Context k;

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.AnythinkBTContainer$2, reason: invalid class name */
    public class AnonymousClass2 implements com.anythink.expressad.video.dynview.f.h {
        public AnonymousClass2() {
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(com.anythink.expressad.video.dynview.a aVar) {
            c cVar;
            StringBuilder sb;
            String str;
            if (AnythinkBTContainer.this.g == null || aVar.a() == null) {
                AnythinkBTContainer.this.a("nativeview is null");
                return;
            }
            AnythinkBTContainer.this.g.removeAllViews();
            AnythinkBTContainer.this.g.addView(aVar.a());
            AnythinkBTContainer anythinkBTContainer = AnythinkBTContainer.this;
            anythinkBTContainer.B = (TextView) anythinkBTContainer.findViewById(anythinkBTContainer.findID("anythink_choice_one_countdown_tv"));
            if (AnythinkBTContainer.this.I != null) {
                AnythinkBTContainer.this.I.a();
            }
            if (AnythinkBTContainer.this.G == null || AnythinkBTContainer.this.G.size() <= 0 || (cVar = (c) AnythinkBTContainer.this.G.get(0)) == null) {
                return;
            }
            String strAi = cVar.ai();
            com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), AnythinkBTContainer.this.n);
            int iM = dVarA != null ? dVarA.M() : 1;
            if (cVar.n() == 1) {
                sb = new StringBuilder();
                sb.append(strAi);
                str = "&to=1&cbt=";
            } else {
                sb = new StringBuilder();
                sb.append(strAi);
                str = "&to=0&cbt=";
            }
            sb.append(str);
            sb.append(cVar.az());
            sb.append("&tmorl=");
            sb.append(iM);
            com.anythink.expressad.a.a.a(n.a().f(), cVar, AnythinkBTContainer.this.n, sb.toString(), false, true, com.anythink.expressad.a.a.a.j);
            f.h.put(cVar.ai(), Long.valueOf(System.currentTimeMillis()));
            AnythinkBTContainer.this.a(cVar);
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(com.anythink.expressad.video.dynview.c.b bVar) {
            String str;
            if (bVar != null) {
                str = "errorCode:" + bVar.a() + "Msg:" + bVar.b();
            } else {
                str = "";
            }
            AnythinkBTContainer.this.a("nativeview is null".concat(String.valueOf(str)));
        }
    }

    public class a extends c.a {
        private a() {
        }

        public /* synthetic */ a(AnythinkBTContainer anythinkBTContainer, byte b) {
            this();
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void a(int i, String str) {
            super.a(i, str);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.foundation.d.c cVar, String str) {
            super.a(cVar, str);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void a(com.anythink.expressad.foundation.d.c cVar, boolean z) {
            super.a(cVar, z);
            AnythinkBTContainer.this.K.a(cVar);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void a(j jVar, String str) {
            super.a(jVar, str);
            if (jVar == null || !(jVar instanceof com.anythink.expressad.foundation.d.c)) {
                return;
            }
            try {
                com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) jVar;
                String strOptString = new JSONObject(AnythinkBTContainer.this.getJSVideoModule().getCurrentProgress()).optString(NotificationCompat.CATEGORY_PROGRESS, "");
                if (cVar.Q() == 3 && cVar.C() == 2 && strOptString.equals("1.0") && AnythinkBTContainer.this.m != null) {
                    if (AnythinkBTContainer.this.D) {
                        AnythinkBTContainer.this.onAdClose();
                    } else {
                        AnythinkBTContainer.this.m.finish();
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void b(j jVar, String str) {
            super.b(jVar, str);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void c() {
            super.c();
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void d() {
            super.d();
        }
    }

    public AnythinkBTContainer(Context context) {
        super(context);
        this.e = 0;
        this.f = 1;
        this.C = false;
        this.D = true;
        this.F = false;
        this.P = 1;
        init(context);
    }

    public AnythinkBTContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 0;
        this.f = 1;
        this.C = false;
        this.D = true;
        this.F = false;
        this.P = 1;
        init(context);
    }

    private void a(Context context) {
        if (this.T == null) {
            a("ChoiceOneCallback is null");
            return;
        }
        HashMap map = new HashMap();
        map.put(com.anythink.expressad.video.dynview.a.a.D, this.T);
        com.anythink.expressad.video.dynview.b.a();
        com.anythink.expressad.video.dynview.b.a(context, this.G, new AnonymousClass2(), map);
    }

    private boolean a(boolean z) {
        com.anythink.expressad.videocommon.e.d dVar;
        try {
            dVar = this.p;
        } catch (Throwable unused) {
        }
        if (dVar == null) {
            return false;
        }
        int iK = dVar.K();
        if (iK == 1) {
            return z;
        }
        if (iK == 2) {
            return z && g();
        }
        if (iK != 3) {
            return false;
        }
        return g();
    }

    private WindVaneWebView b(String str) {
        a.C0154a c0154aA = com.anythink.expressad.videocommon.a.a(str);
        if (c0154aA == null) {
            return null;
        }
        this.E = c0154aA.b();
        new StringBuilder("get BT wraper.getTag = ").append(this.E);
        c0154aA.a("");
        return c0154aA.a();
    }

    private com.anythink.expressad.video.bt.module.a.b c() {
        if (this.L == null) {
            this.L = new com.anythink.expressad.video.bt.module.a.b() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTContainer.3
                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a() {
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a(String str) {
                    if (AnythinkBTContainer.this.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(com.anythink.expressad.a.y, AnythinkBTContainer.this.o);
                            jSONObject2.put("unitId", AnythinkBTContainer.this.n);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onAdShow ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewPlayStart", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a(String str, com.anythink.expressad.foundation.d.c cVar) {
                    AnythinkBTContainer anythinkBTContainer = AnythinkBTContainer.this;
                    anythinkBTContainer.a = cVar;
                    if (anythinkBTContainer.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(com.anythink.expressad.a.y, AnythinkBTContainer.this.o);
                            jSONObject2.put("unitId", AnythinkBTContainer.this.n);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onVideoAdClicked ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a(String str, String str2) {
                    if (AnythinkBTContainer.this.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(com.anythink.expressad.a.y, AnythinkBTContainer.this.o);
                            jSONObject2.put("unitId", AnythinkBTContainer.this.n);
                            jSONObject2.put("error", str2);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onShowFail ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewPlayFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a(String str, boolean z, com.anythink.expressad.videocommon.c.c cVar) {
                    if (AnythinkBTContainer.this.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            if (cVar != null) {
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject3.put("name", cVar.a());
                                jSONObject3.put("amount", cVar.b());
                                jSONObject2.put("reward", jSONObject3);
                            }
                            jSONObject2.put("isComplete", z);
                            jSONObject2.put("convert", z ? 1 : 2);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onAdClose ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewDismissed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void a(boolean z, int i) {
                    AnythinkBTContainer.this.Q = z;
                    AnythinkBTContainer.this.R = i;
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void b(String str) {
                    if (AnythinkBTContainer.this.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("convert", true);
                            jSONObject2.put(com.anythink.expressad.a.y, AnythinkBTContainer.this.o);
                            jSONObject2.put("unitId", AnythinkBTContainer.this.n);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onVideoComplete ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewPlayCompleted", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.b
                public final void c(String str) {
                    if (AnythinkBTContainer.this.i != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(com.anythink.expressad.a.y, AnythinkBTContainer.this.o);
                            jSONObject2.put("unitId", AnythinkBTContainer.this.n);
                            jSONObject.put("data", jSONObject2);
                            String unused = AnythinkBTContainer.d;
                            new StringBuilder(" BT Call H5 onEndcardShow ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            String unused2 = AnythinkBTContainer.d;
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, "onSubPlayTemplateViewEndcardShowSuccess", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }
            };
        }
        return this.L;
    }

    private com.anythink.expressad.videocommon.b.c d(com.anythink.expressad.foundation.d.c cVar) {
        List<com.anythink.expressad.videocommon.b.c> list = this.H;
        if (list == null || cVar == null) {
            return null;
        }
        for (com.anythink.expressad.videocommon.b.c cVar2 : list) {
            if (cVar2.n().aZ().equals(cVar.aZ())) {
                return cVar2;
            }
        }
        return null;
    }

    private static void d() {
    }

    private static boolean e() {
        return true;
    }

    private static int f() {
        return 1;
    }

    private boolean g() {
        try {
            com.anythink.expressad.videocommon.e.d dVar = this.p;
            if (dVar == null) {
                return false;
            }
            double dL = dVar.L();
            if (dL == 1.0d) {
                return false;
            }
            return new Random().nextDouble() > dL;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            try {
                List<String> listE = cVar.e();
                if (listE == null || listE.size() <= 0) {
                    return;
                }
                Iterator<String> it = listE.iterator();
                while (it.hasNext()) {
                    com.anythink.expressad.a.a.a(n.a().f(), cVar, this.n, it.next(), true);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public final void a(String str) {
        h hVar = this.J;
        if (hVar != null) {
            hVar.a(str);
        }
        super.a(str);
    }

    public void appendSubView(AnythinkBTContainer anythinkBTContainer, ATTempContainer aTTempContainer, JSONObject jSONObject) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (jSONObject != null) {
                Context contextF = n.a().f();
                int iOptInt = jSONObject.optInt(ScrollClickView.DIR_LEFT, com.anythink.expressad.video.bt.a.c.a);
                int iOptInt2 = jSONObject.optInt("top", com.anythink.expressad.video.bt.a.c.a);
                int iOptInt3 = jSONObject.optInt(ScrollClickView.DIR_RIGHT, com.anythink.expressad.video.bt.a.c.a);
                int iOptInt4 = jSONObject.optInt("bottom", com.anythink.expressad.video.bt.a.c.a);
                if (iOptInt != -999 && contextF != null) {
                    layoutParams.leftMargin = t.b(contextF, iOptInt);
                }
                if (iOptInt2 != -999 && contextF != null) {
                    layoutParams.topMargin = t.b(contextF, iOptInt2);
                }
                if (iOptInt3 != -999 && contextF != null) {
                    layoutParams.rightMargin = t.b(contextF, iOptInt3);
                }
                if (iOptInt4 != -999 && contextF != null) {
                    layoutParams.bottomMargin = t.b(contextF, iOptInt4);
                }
                int iOptInt5 = jSONObject.optInt("width");
                int iOptInt6 = jSONObject.optInt("height");
                if (iOptInt5 > 0) {
                    layoutParams.width = iOptInt5;
                }
                if (iOptInt6 > 0) {
                    layoutParams.height = iOptInt6;
                }
            }
            anythinkBTContainer.addView(aTTempContainer, layoutParams);
            aTTempContainer.setActivity(this.m);
            aTTempContainer.setMute(this.t);
            aTTempContainer.setBidCampaign(this.C);
            aTTempContainer.setIV(this.u);
            aTTempContainer.setBigOffer(this.D);
            aTTempContainer.setIVRewardEnable(this.w, this.x, this.y);
            aTTempContainer.setShowRewardListener(this.K);
            aTTempContainer.setCampaignDownLoadTask(d(aTTempContainer.getCampaign()));
            aTTempContainer.setAnythinkTempCallback(c());
            aTTempContainer.setH5Cbp(getJSCommon().e());
            aTTempContainer.setWebViewFront(getJSCommon().f());
            aTTempContainer.init(this.k);
            aTTempContainer.onCreate();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.i != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", this.e);
                jSONObject2.put("id", this.E);
                jSONObject2.put("eventName", str);
                jSONObject2.put("data", jSONObject);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) this.i, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.anythink.expressad.video.bt.a.c.a();
                com.anythink.expressad.video.bt.a.c.a((WebView) this.i, "broadcast", this.E);
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.d
    public void click(int i, String str) {
    }

    public int findID(String str) {
        return i.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return i.a(getContext(), str, "layout");
    }

    @Override // com.anythink.expressad.video.signal.d
    public void handlerH5Exception(int i, String str) {
    }

    public void init(Context context) {
        this.k = context;
        this.j = LayoutInflater.from(context);
    }

    public boolean isNativeKilledCallback(com.anythink.expressad.foundation.d.c cVar) {
        if (getJSCommon().e() != 1 && cVar != null) {
            if (cVar.n() == 1) {
                com.anythink.expressad.videocommon.e.d dVar = this.p;
                if (dVar != null) {
                    if (dVar.M() == 1) {
                        cVar.m(1);
                        return true;
                    }
                    cVar.m(0);
                    return false;
                }
            } else {
                if (cVar.A()) {
                    cVar.m(0);
                    return false;
                }
                int iA = this.p.a();
                cVar.m(iA);
                if (iA == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    public void onAdClose() {
        Activity activity = this.m;
        if (activity != null) {
            activity.finish();
        }
    }

    public void onBackPressed() {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).onBackPressed();
                } else if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).onBackPressed();
                } else if (view instanceof AnythinkBTLayout) {
                    ((AnythinkBTLayout) view).onBackPressed();
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).onConfigurationChanged(configuration);
                } else if (view instanceof AnythinkBTWebView) {
                    ((AnythinkBTWebView) view).onConfigurationChanged(configuration);
                } else if (view instanceof AnythinkBTLayout) {
                    ((AnythinkBTLayout) view).onConfigurationChanged(configuration);
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void onCreate() {
        String strAr;
        WindVaneWebView windVaneWebViewA;
        com.anythink.expressad.foundation.d.c cVar;
        try {
            int iFindLayout = findLayout("anythink_bt_container");
            if (iFindLayout < 0) {
                a("anythink_bt_container layout null");
                return;
            }
            FrameLayout frameLayout = (FrameLayout) this.j.inflate(iFindLayout, this);
            this.g = frameLayout;
            if (frameLayout == null) {
                a("ViewIds null");
                return;
            }
            this.N = "";
            List<com.anythink.expressad.foundation.d.c> list = this.G;
            byte b = 0;
            if (list == null || list.size() <= 0) {
                strAr = "";
            } else {
                com.anythink.expressad.foundation.d.c cVar2 = this.G.get(0);
                strAr = cVar2.ar();
                this.N = cVar2.Z();
            }
            a.C0154a c0154aA = com.anythink.expressad.videocommon.a.a(this.n + "_" + this.N + "_" + strAr);
            RelativeLayout.LayoutParams layoutParams = null;
            if (c0154aA != null) {
                this.E = c0154aA.b();
                new StringBuilder("get BT wraper.getTag = ").append(this.E);
                c0154aA.a("");
                windVaneWebViewA = c0154aA.a();
            } else {
                windVaneWebViewA = null;
            }
            this.i = windVaneWebViewA;
            com.anythink.expressad.videocommon.a.b(this.n + "_" + this.N + "_" + strAr);
            WindVaneWebView windVaneWebView = this.i;
            if (windVaneWebView == null) {
                List<com.anythink.expressad.foundation.d.c> list2 = this.G;
                if (list2 == null || list2.size() <= 0 || (cVar = this.G.get(0)) == null || !cVar.j()) {
                    a("big template webview is null");
                    return;
                }
                Context context = this.k;
                if (this.T == null) {
                    a("ChoiceOneCallback is null");
                    return;
                }
                HashMap map = new HashMap();
                map.put(com.anythink.expressad.video.dynview.a.a.D, this.T);
                com.anythink.expressad.video.dynview.b.a();
                com.anythink.expressad.video.dynview.b.a(context, this.G, new AnonymousClass2(), map);
                return;
            }
            com.anythink.expressad.video.signal.factory.b bVar = new com.anythink.expressad.video.signal.factory.b(this.m, this, windVaneWebView);
            registerJsFactory(bVar);
            this.i.setApiManagerJSFactory(bVar);
            if (this.i.getParent() != null) {
                a("preload template webview is null or load error");
                return;
            }
            if (this.i.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                bVar.a((com.anythink.expressad.video.signal.a.j) this.i.getObject());
                if (this.i != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(com.anythink.expressad.foundation.g.a.ch, t.c(getContext()));
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.r.a());
                        jSONObject2.put("amount", this.r.b());
                        jSONObject2.put("id", this.s);
                        jSONObject.put("userId", this.q);
                        jSONObject.put("reward", jSONObject2);
                        jSONObject.put("playVideoMute", this.t);
                        jSONObject.put(g.a.h, this.S);
                    } catch (JSONException e) {
                        e.getMessage();
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                    this.K = new com.anythink.expressad.video.bt.module.b.d(c(), "");
                    getJSNotifyProxy().a(jSONObject.toString());
                    getJSCommon().h();
                    getJSCommon().a(new a(this, b));
                }
                ((com.anythink.expressad.video.signal.a.c) getJSCommon()).r.c();
            }
            this.i.setBackgroundColor(0);
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || !linkedHashMapB.containsKey(this.E)) {
                a("big template webviewLayout is null");
                return;
            }
            View view = linkedHashMapB.get(this.E);
            if (view instanceof AnythinkBTLayout) {
                AnythinkBTLayout anythinkBTLayout = (AnythinkBTLayout) view;
                this.h = anythinkBTLayout;
                anythinkBTLayout.addView(this.i, 0, new FrameLayout.LayoutParams(-1, -1));
                com.anythink.expressad.foundation.f.b.a().a(this.n + "_1", new com.anythink.expressad.foundation.f.a() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTContainer.1
                    @Override // com.anythink.expressad.foundation.f.a
                    public final void a() {
                        String string;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (n.a().f() != null) {
                                jSONObject3.put("status", 1);
                            }
                            string = jSONObject3.toString();
                        } catch (Throwable th) {
                            String unused = AnythinkBTContainer.d;
                            th.getMessage();
                            string = "";
                        }
                        String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, AbsFeedBackForH5.a, strEncodeToString);
                    }

                    @Override // com.anythink.expressad.foundation.f.a
                    public final void b() {
                        String string;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (n.a().f() != null) {
                                jSONObject3.put("status", 2);
                            }
                            string = jSONObject3.toString();
                        } catch (Throwable th) {
                            String unused = AnythinkBTContainer.d;
                            th.getMessage();
                            string = "";
                        }
                        String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, AbsFeedBackForH5.a, strEncodeToString);
                    }

                    @Override // com.anythink.expressad.foundation.f.a
                    public final void c() {
                        String string;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (n.a().f() != null) {
                                jSONObject3.put("status", 2);
                            }
                            string = jSONObject3.toString();
                        } catch (Throwable th) {
                            String unused = AnythinkBTContainer.d;
                            th.getMessage();
                            string = "";
                        }
                        String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) AnythinkBTContainer.this.i, AbsFeedBackForH5.a, strEncodeToString);
                    }
                });
                com.anythink.expressad.foundation.f.b.a().c(this.n + "_2");
                FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.n + "_1");
                if (com.anythink.expressad.foundation.f.b.a().b() && feedBackButtonB != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.f.b.a, com.anythink.expressad.foundation.f.b.b);
                    }
                    layoutParams.topMargin = t.b(n.a().f(), 10.0f);
                    layoutParams.leftMargin = t.b(n.a().f(), 10.0f);
                    feedBackButtonB.setLayoutParams(layoutParams);
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(feedBackButtonB);
                    }
                    this.h.addView(feedBackButtonB);
                }
                this.h.setTag(this.E);
                linkedHashMapB.put(this.E, this.h);
                Iterator<View> it = linkedHashMapB.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    View next = it.next();
                    if (next instanceof AnythinkBTRootLayout) {
                        AnythinkBTRootLayout anythinkBTRootLayout = (AnythinkBTRootLayout) next;
                        this.M = anythinkBTRootLayout.getInstanceId();
                        this.g.addView(anythinkBTRootLayout, new FrameLayout.LayoutParams(-1, -1));
                        break;
                    }
                }
                linkedHashMapB.remove(this.M);
                linkedHashMapB.put(this.M, this);
            }
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.a(this.n, this.t);
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.a(this.E, this.N);
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.a(this.M, this.N);
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.a(this.n + "_" + this.N, this.m);
            List<com.anythink.expressad.foundation.d.c> list3 = this.G;
            if (list3 == null || list3.size() <= 0) {
                return;
            }
            a(this.p, this.G.get(0));
        } catch (Throwable th) {
            a("onCreate exception ".concat(String.valueOf(th)));
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        if (this.F) {
            return;
        }
        this.F = true;
        super.onDestroy();
        com.anythink.expressad.video.bt.a.c.a();
        com.anythink.expressad.video.bt.a.c.d(this.n + "_" + this.N);
        try {
            WindVaneWebView windVaneWebView = this.i;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.i.clearWebView();
                this.i.release();
            }
            if (this.L != null) {
                this.L = null;
            }
            if (this.I != null) {
                this.I = null;
            }
            if (this.k != null) {
                this.k = null;
            }
            List<com.anythink.expressad.foundation.d.c> list = this.G;
            if (list != null && list.size() > 0) {
                for (com.anythink.expressad.foundation.d.c cVar : this.G) {
                    if (cVar != null && cVar.M() != null) {
                        com.anythink.expressad.videocommon.a.b(this.n + "_" + cVar.Z() + "_" + cVar.M().e());
                    }
                }
            }
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.f(this.E);
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.g(this.n);
            com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N).remove(this.E);
            com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N).remove(this.M);
            com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N).clear();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onPause() {
        com.anythink.expressad.foundation.d.c cVar;
        super.onPause();
        List<com.anythink.expressad.foundation.d.c> list = this.G;
        if (list != null && list.size() > 0 && (cVar = this.G.get(0)) != null && cVar.j()) {
            com.anythink.expressad.video.dynview.b.a.a();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).onPause();
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onResume() {
        com.anythink.expressad.foundation.d.c cVar;
        com.anythink.expressad.video.dynview.e.a aVar;
        super.onResume();
        List<com.anythink.expressad.foundation.d.c> list = this.G;
        if (list != null && list.size() > 0 && (cVar = this.G.get(0)) != null && cVar.j() && (aVar = com.anythink.expressad.video.dynview.b.a.a().a) != null) {
            aVar.a();
        }
        if (com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).onResume();
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onStop() {
        com.anythink.expressad.foundation.d.c cVar;
        com.anythink.expressad.video.dynview.e.a aVar;
        super.onStop();
        List<com.anythink.expressad.foundation.d.c> list = this.G;
        if (list != null && list.size() > 0 && (cVar = this.G.get(0)) != null && cVar.j() && (aVar = com.anythink.expressad.video.dynview.b.a.a().a) != null) {
            aVar.c();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).onStop();
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.b
    public void reactDeveloper(Object obj, String str) {
        int i;
        if (this.I == null || TextUtils.isEmpty(str)) {
            AbstractJSContainer.a(obj, "listener is null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("type");
            int iOptInt2 = jSONObject.optInt("hit");
            String strOptString = jSONObject.optString("unitId", getUnitId());
            jSONObject.optString(com.anythink.expressad.a.y, getPlacementId());
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            com.anythink.expressad.foundation.d.c cVar = this.G.get(0);
            boolean z = true;
            if (iOptInt == 1) {
                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("expired");
                if (cVar != null) {
                    if (zOptBoolean) {
                        cVar.e(1);
                    } else {
                        cVar.e(0);
                    }
                }
                this.O = isNativeKilledCallback(cVar);
            }
            switch (iOptInt) {
                case 1:
                    this.I.a();
                    break;
                case 2:
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("error");
                    String strOptString2 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("msg") : "";
                    if (TextUtils.isEmpty(strOptString2)) {
                        strOptString2 = jSONObjectOptJSONObject.optString("error");
                    }
                    if (!this.O && iOptInt2 != this.P) {
                        this.I.a(strOptString2);
                    }
                    break;
                case 3:
                    this.I.b();
                    break;
                case 4:
                    this.I.c();
                    break;
                case 5:
                    com.anythink.expressad.video.bt.module.a.a aVar = this.I;
                    com.anythink.expressad.foundation.d.c cVar2 = this.a;
                    if (cVar2 != null) {
                        cVar = cVar2;
                    }
                    aVar.a(cVar);
                    break;
                case 6:
                    if (jSONObjectOptJSONObject.optInt("convert") != 1) {
                        z = false;
                    }
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("reward");
                    com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONObjectOptJSONObject.optJSONObject("campaign"));
                    com.anythink.expressad.videocommon.c.c cVarA = com.anythink.expressad.videocommon.c.c.a(jSONObjectOptJSONObject3);
                    if (cVarA == null) {
                        cVarA = this.r;
                    }
                    String strOptString3 = jSONObjectOptJSONObject.optString(g.a.h);
                    if (!TextUtils.isEmpty(strOptString3)) {
                        this.S = strOptString3;
                    }
                    if (!this.O && iOptInt2 != this.P) {
                        if (this.u && ((i = this.w) == com.anythink.expressad.foundation.g.a.cr || i == com.anythink.expressad.foundation.g.a.cs)) {
                            this.I.a(this.Q, this.R);
                        }
                        if (!z) {
                            cVarA.a(0);
                        }
                        this.I.a(z, cVarA);
                        if (!this.u && z) {
                            if (cVarB == null) {
                                com.anythink.expressad.video.module.b.a.a(cVar, cVarA, strOptString, this.q, this.S);
                            } else {
                                com.anythink.expressad.video.module.b.a.a(cVarB, cVarA, strOptString, this.q, this.S);
                            }
                        }
                    }
                    break;
            }
            a(obj);
        } catch (JSONException e) {
            AbstractJSContainer.a(obj, e.getMessage());
            e.getMessage();
        }
    }

    public void setBTContainerCallback(com.anythink.expressad.video.bt.module.a.a aVar) {
        this.I = aVar;
    }

    public void setCampaignDownLoadTasks(List<com.anythink.expressad.videocommon.b.c> list) {
        this.H = list;
    }

    public void setCampaigns(List<com.anythink.expressad.foundation.d.c> list) {
        this.G = list;
    }

    public void setChoiceOneCallback(d dVar) {
        this.T = dVar;
    }

    public void setDeveloperExtraData(String str) {
        this.S = str;
    }

    public void setJSFactory(com.anythink.expressad.video.signal.factory.b bVar) {
        this.A = bVar;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4, int i5) {
        TextView textView;
        try {
            String strA = com.anythink.expressad.foundation.h.h.a(i, i2, i3, i4, i5);
            WindVaneWebView windVaneWebView = this.i;
            if (windVaneWebView != null && (windVaneWebView.getObject() instanceof com.anythink.expressad.video.signal.a.j) && !TextUtils.isEmpty(strA)) {
                ((com.anythink.expressad.video.signal.a.j) this.i.getObject()).b(strA);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) this.i, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
            }
            List<com.anythink.expressad.foundation.d.c> list = this.G;
            if (list != null && list.size() > 0) {
                try {
                    if (this.G.get(0).j() && (textView = this.B) != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
                        layoutParams.setMargins(i2, i4, i3, i5);
                        this.B.setLayoutParams(layoutParams);
                    }
                } catch (Exception e) {
                    e.getMessage();
                }
            }
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.a(i, i2, i3, i4, i5);
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(this.n, this.N);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof AnythinkBTVideoView) {
                    ((AnythinkBTVideoView) view).setNotchPadding(i2, i3, i4, i5);
                }
                if (view instanceof ATTempContainer) {
                    ((ATTempContainer) view).setNotchPadding(i, i2, i3, i4, i5);
                }
                if ((view instanceof WindVaneWebView) && !TextUtils.isEmpty(strA)) {
                    com.anythink.expressad.atsignalcommon.windvane.j.a().a(view, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void setShowRewardVideoListener(h hVar) {
        this.J = hVar;
    }
}
