package com.anythink.expressad.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.b.n;
import com.anythink.core.common.c.g;
import com.anythink.expressad.atsignalcommon.mraid.MraidVolumeChangeReceiver;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.h.g;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.module.b.h;
import com.anythink.expressad.video.module.AnythinkContainerView;
import com.anythink.expressad.video.module.AnythinkVideoView;
import com.anythink.expressad.video.module.a.a.f;
import com.anythink.expressad.video.module.a.a.m;
import com.anythink.expressad.video.signal.a.c;
import com.anythink.expressad.video.signal.container.AbstractJSContainer;
import com.anythink.expressad.videocommon.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ATTempContainer extends AbstractJSContainer {
    private static final String B = ATTempContainer.class.getSimpleName();
    private static final long ab = 5000;
    private static final long ac = 2000;
    private static final long ad = 100;
    private static final int ae = -1;
    private static final int af = -2;
    private static final int ag = -3;
    private static final int ah = -3;
    private static final int ai = -4;
    private static final int am = 250;
    public static final int b = 0;
    private View C;
    private com.anythink.expressad.foundation.d.c D;
    private com.anythink.expressad.videocommon.b.c E;
    private h F;
    private com.anythink.expressad.video.bt.module.a.b G;
    private com.anythink.expressad.video.dynview.f.a H;
    private int I;
    private String J;
    private com.anythink.expressad.video.signal.factory.b K;
    private int L;
    private int M;
    private boolean N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private String T;
    private String U;
    private List<com.anythink.expressad.foundation.d.c> V;
    private int W;
    public boolean a;
    private LayoutInflater aa;
    private int aj;
    private int ak;
    private int al;
    private View an;
    private boolean ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private boolean as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private boolean ax;
    private MraidVolumeChangeReceiver ay;
    private Runnable az;
    public boolean c;
    public a d;
    public WindVaneWebView e;
    public AnythinkVideoView f;
    public AnythinkContainerView g;
    public Handler h;
    public Runnable i;
    public Runnable j;
    public com.anythink.expressad.reward.player.c k;

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.ATTempContainer$5, reason: invalid class name */
    public class AnonymousClass5 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass5() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
            String string;
            ATTempContainer.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = ATTempContainer.B;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) ATTempContainer.this.e, AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
            String string;
            ATTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = ATTempContainer.B;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) ATTempContainer.this.e, AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
            String string;
            ATTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = ATTempContainer.B;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) ATTempContainer.this.e, AbsFeedBackForH5.a, strEncodeToString);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.ATTempContainer$6, reason: invalid class name */
    public class AnonymousClass6 implements MraidVolumeChangeReceiver.VolumeChangeListener {
        public AnonymousClass6() {
        }

        @Override // com.anythink.expressad.atsignalcommon.mraid.MraidVolumeChangeReceiver.VolumeChangeListener
        public final void onVolumeChanged(double d) {
            AnythinkContainerView anythinkContainerView;
            String unused = ATTempContainer.B;
            try {
                if (!ATTempContainer.this.D.H() || (anythinkContainerView = ATTempContainer.this.g) == null || anythinkContainerView.getH5EndCardView() == null) {
                    return;
                }
                ATTempContainer.this.g.getH5EndCardView().volumeChange(d);
            } catch (Exception e) {
                String unused2 = ATTempContainer.B;
                e.getMessage();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.ATTempContainer$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ATTempContainer.this.an.setBackgroundColor(0);
            ATTempContainer.this.an.setVisibility(0);
            ATTempContainer.this.an.bringToFront();
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.ATTempContainer$8, reason: invalid class name */
    public class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ATTempContainer.this.an.setVisibility(8);
        }
    }

    public interface a {

        /* JADX INFO: renamed from: com.anythink.expressad.video.bt.module.ATTempContainer$a$a, reason: collision with other inner class name */
        public static class C0149a implements a {
            private static final String b = "ActivityErrorListener";
            private boolean a = false;

            @Override // com.anythink.expressad.video.bt.module.ATTempContainer.a
            public void a(String str) {
                this.a = true;
            }

            @Override // com.anythink.expressad.video.bt.module.ATTempContainer.a
            public final boolean a() {
                return this.a;
            }

            @Override // com.anythink.expressad.video.bt.module.ATTempContainer.a
            public final void b() {
                this.a = true;
            }
        }

        void a(String str);

        boolean a();

        void b();
    }

    public final class b extends f {
        private Activity V;
        private com.anythink.expressad.foundation.d.c W;

        public b(Activity activity, com.anythink.expressad.foundation.d.c cVar) {
            this.V = activity;
            this.W = cVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x008c A[PHI: r0
          0x008c: PHI (r0v10 com.anythink.expressad.video.signal.c) = (r0v8 com.anythink.expressad.video.signal.c), (r0v28 com.anythink.expressad.video.signal.c) binds: [B:44:0x00f1, B:32:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a(int i, Object obj) {
            com.anythink.expressad.video.signal.c jSCommon;
            Context context = ATTempContainer.this.getContext();
            if (context != null && context != context.getApplicationContext()) {
                ATTempContainer.this.getJSCommon().a(context);
            }
            if (this.V != null) {
                ATTempContainer.this.getJSCommon().a(this.V);
            }
            ATTempContainer.m(ATTempContainer.this);
            String string = "";
            if (i != 108) {
                if (i == 113) {
                    ATTempContainer.this.F.a(this.W);
                } else if (i == 117) {
                    AnythinkVideoView anythinkVideoView = ATTempContainer.this.f;
                    if (anythinkVideoView != null) {
                        anythinkVideoView.setVisible(4);
                    }
                    ATTempContainer.m(ATTempContainer.this);
                    ATTempContainer.this.F.c();
                } else if (i != 126 && i != 128) {
                    switch (i) {
                        case 103:
                        case 104:
                            ATTempContainer.k(ATTempContainer.this);
                            break;
                        case 105:
                            jSCommon = ATTempContainer.this.getJSCommon();
                            if (obj != null) {
                                string = obj.toString();
                            }
                            jSCommon.click(1, string);
                            break;
                        case 106:
                            if (ATTempContainer.this.G != null) {
                                ATTempContainer.this.G.a(ATTempContainer.this.J, this.W);
                            } else {
                                ATTempContainer.this.F.a(this.W);
                            }
                            if (this.V != null && this.W != null) {
                                n.a().a(new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.b.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ATTempContainer.k(ATTempContainer.this);
                                    }
                                }, 50L);
                            }
                            break;
                    }
                } else {
                    ATTempContainer.this.F.a(this.W);
                }
                com.anythink.expressad.reward.player.c cVar = ATTempContainer.this.k;
            } else {
                ATTempContainer.this.getJSCommon().a(new c.b(ATTempContainer.this.getJSCommon(), new d(ATTempContainer.this, (byte) 0)));
                jSCommon = ATTempContainer.this.getJSCommon();
                if (obj != null) {
                }
                jSCommon.click(1, string);
            }
            super.a(i, obj);
        }
    }

    public final class c extends f {
        private c() {
        }

        public /* synthetic */ c(ATTempContainer aTTempContainer, byte b) {
            this();
        }

        @Override // com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
        public final void a(int i, Object obj) {
            ATTempContainer aTTempContainer;
            int i2;
            super.a(i, obj);
            try {
                String string = obj instanceof JSONObject ? obj.toString() : (String) obj;
                if (ATTempContainer.this.u && !TextUtils.isEmpty(string)) {
                    JSONObject jSONObject = new JSONObject(string);
                    int iOptInt = jSONObject.optInt("type");
                    int iOptInt2 = jSONObject.optInt(com.anythink.expressad.foundation.d.c.bX);
                    if (iOptInt == 2) {
                        aTTempContainer = ATTempContainer.this;
                        i2 = com.anythink.expressad.foundation.g.a.cx;
                    } else if (iOptInt != 3) {
                        aTTempContainer = ATTempContainer.this;
                        i2 = com.anythink.expressad.foundation.g.a.cv;
                    } else {
                        aTTempContainer = ATTempContainer.this;
                        i2 = com.anythink.expressad.foundation.g.a.cw;
                    }
                    aTTempContainer.L = i2;
                    ATTempContainer.this.M = iOptInt2;
                }
            } catch (Exception unused) {
            }
            if (i == 120) {
                ATTempContainer.this.F.c();
                if (ATTempContainer.this.k != null) {
                }
                return;
            }
            if (i == 126) {
                ATTempContainer.this.F.a(ATTempContainer.this.D);
                if (ATTempContainer.this.k != null) {
                    return;
                } else {
                    return;
                }
            }
            if (i == 127) {
                ATTempContainer.h(ATTempContainer.this);
                ATTempContainer.this.F.a();
                ATTempContainer.this.F.c();
                ATTempContainer.this.getJSContainerModule().showEndcard(100);
                return;
            }
            switch (i) {
                case 100:
                    ATTempContainer.q(ATTempContainer.this);
                    ATTempContainer aTTempContainer2 = ATTempContainer.this;
                    aTTempContainer2.h.postDelayed(aTTempContainer2.az, 250L);
                    ATTempContainer.this.F.a();
                    break;
                case 101:
                case 102:
                    ATTempContainer.this.getJSCommon().j();
                    break;
                case 103:
                    ATTempContainer.h(ATTempContainer.this);
                    if (!ATTempContainer.this.D.H()) {
                        ATTempContainer.this.getJSCommon().j();
                    } else {
                        ATTempContainer.k(ATTempContainer.this);
                    }
                    break;
                case 104:
                    ATTempContainer.k(ATTempContainer.this);
                    break;
                case 105:
                    ATTempContainer.this.getJSCommon().click(1, obj != null ? obj.toString() : "");
                    break;
            }
        }
    }

    public class d extends c.a {
        private d() {
        }

        public /* synthetic */ d(ATTempContainer aTTempContainer, byte b) {
            this();
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void a(int i, String str) {
            super.a(i, str);
            ATTempContainer.this.defaultLoad(i, str);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.foundation.d.c cVar, String str) {
            super.a(cVar, str);
            ATTempContainer.s(ATTempContainer.this);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void a(com.anythink.expressad.foundation.d.c cVar, boolean z) {
            super.a(cVar, z);
            ATTempContainer.this.F.a(cVar);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.out.j jVar, String str) {
            super.a(jVar, str);
            ATTempContainer.t(ATTempContainer.this);
            ATTempContainer.u(ATTempContainer.this);
            if (jVar == null || !(jVar instanceof com.anythink.expressad.foundation.d.c)) {
                return;
            }
            try {
                com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) jVar;
                String strOptString = new JSONObject(ATTempContainer.this.getJSVideoModule().getCurrentProgress()).optString(NotificationCompat.CATEGORY_PROGRESS, "");
                if (cVar.Q() == 3 && cVar.C() == 2 && strOptString.equals("1.0") && ATTempContainer.this.m != null) {
                    if (ATTempContainer.this.z) {
                        ATTempContainer.k(ATTempContainer.this);
                    } else {
                        ATTempContainer.this.m.finish();
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.out.p.c
        public final void b(com.anythink.expressad.out.j jVar, String str) {
            super.b(jVar, str);
            ATTempContainer.u(ATTempContainer.this);
            ATTempContainer.t(ATTempContainer.this);
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void c() {
            super.c();
            ATTempContainer.this.receiveSuccess();
        }

        @Override // com.anythink.expressad.video.signal.a.c.a, com.anythink.expressad.video.signal.c.a
        public final void d() {
            super.d();
            ATTempContainer aTTempContainer = ATTempContainer.this;
            Handler handler = aTTempContainer.h;
            if (handler != null) {
                handler.removeCallbacks(aTTempContainer.i);
            }
        }
    }

    public final class e extends f {
        private e() {
        }

        public /* synthetic */ e(ATTempContainer aTTempContainer, byte b) {
            this();
        }

        @Override // com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
        public final void a(int i, Object obj) {
            super.a(i, obj);
            if (ATTempContainer.this.u) {
                try {
                    if (obj instanceof String) {
                        String str = (String) obj;
                        if (!TextUtils.isEmpty(str)) {
                            JSONObject jSONObject = new JSONObject(str);
                            ATTempContainer.this.L = jSONObject.getInt("Alert_window_status");
                            ATTempContainer.this.M = jSONObject.getInt("complete_info");
                        }
                    }
                } catch (Exception e) {
                    e.getMessage();
                }
            }
            if (i != 2) {
                if (i == 121) {
                    ATTempContainer.h(ATTempContainer.this);
                    ATTempContainer.this.F.b();
                    ATTempContainer.this.au = false;
                    return;
                }
                if (i == 16) {
                    ATTempContainer.k(ATTempContainer.this);
                    return;
                }
                if (i == 17) {
                    ATTempContainer.h(ATTempContainer.this);
                    AnythinkContainerView anythinkContainerView = ATTempContainer.this.g;
                    if (anythinkContainerView != null) {
                        anythinkContainerView.setRewardStatus(true);
                        return;
                    }
                    return;
                }
                switch (i) {
                    case 10:
                        ATTempContainer.this.au = true;
                        if (ATTempContainer.this.D != null) {
                            if (!ATTempContainer.this.D.j()) {
                                ATTempContainer.this.F.a();
                            } else if (!ATTempContainer.this.z) {
                                ATTempContainer.this.F.a();
                            } else if (ATTempContainer.this.D.l()) {
                                ATTempContainer.this.F.a();
                            }
                        }
                        break;
                }
                return;
            }
            if (i == 12 && !ATTempContainer.this.au) {
                if (ATTempContainer.this.p.U() == 0) {
                    ATTempContainer.this.F.a("play error");
                    ATTempContainer.this.au = false;
                    ATTempContainer.k(ATTempContainer.this);
                    return;
                } else if (ATTempContainer.this.D == null || !ATTempContainer.this.D.j() || !ATTempContainer.this.z || ATTempContainer.this.D.l()) {
                    ATTempContainer.this.F.a();
                }
            }
            ATTempContainer.this.getJSVideoModule().videoOperate(3);
            ATTempContainer.this.au = false;
        }
    }

    public ATTempContainer(Context context) {
        super(context);
        this.I = 1;
        this.J = "";
        this.L = com.anythink.expressad.foundation.g.a.cv;
        this.N = false;
        this.T = "";
        this.V = new ArrayList();
        this.W = 0;
        this.a = false;
        this.c = false;
        this.d = new a.C0149a();
        this.h = new Handler();
        this.aj = 0;
        this.ak = 0;
        this.al = 0;
        this.i = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.1
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.getActivityProxy().h() != 0) {
                    ATTempContainer.this.aj = -3;
                } else {
                    Log.d(ATTempContainer.B, "run: WebView load timeout");
                    ATTempContainer.this.defaultLoad(-1, "WebView load timeout");
                }
            }
        };
        this.j = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.2
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.getActivityProxy().h() == 0) {
                    ATTempContainer.this.defaultLoad(-3, "JS bridge connect timeout");
                } else {
                    ATTempContainer.this.aj = -4;
                }
            }
        };
        this.ao = false;
        this.ap = false;
        this.aq = false;
        this.as = false;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = false;
        this.ax = false;
        this.az = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.3
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.an != null) {
                    ATTempContainer.this.an.setVisibility(8);
                }
            }
        };
        init(context);
    }

    public ATTempContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = 1;
        this.J = "";
        this.L = com.anythink.expressad.foundation.g.a.cv;
        this.N = false;
        this.T = "";
        this.V = new ArrayList();
        this.W = 0;
        this.a = false;
        this.c = false;
        this.d = new a.C0149a();
        this.h = new Handler();
        this.aj = 0;
        this.ak = 0;
        this.al = 0;
        this.i = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.1
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.getActivityProxy().h() != 0) {
                    ATTempContainer.this.aj = -3;
                } else {
                    Log.d(ATTempContainer.B, "run: WebView load timeout");
                    ATTempContainer.this.defaultLoad(-1, "WebView load timeout");
                }
            }
        };
        this.j = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.2
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.getActivityProxy().h() == 0) {
                    ATTempContainer.this.defaultLoad(-3, "JS bridge connect timeout");
                } else {
                    ATTempContainer.this.aj = -4;
                }
            }
        };
        this.ao = false;
        this.ap = false;
        this.aq = false;
        this.as = false;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = false;
        this.ax = false;
        this.az = new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.3
            @Override // java.lang.Runnable
            public final void run() {
                if (ATTempContainer.this.an != null) {
                    ATTempContainer.this.an.setVisibility(8);
                }
            }
        };
        init(context);
    }

    private int a(int i, int i2) {
        List<com.anythink.expressad.foundation.d.c> list;
        if (i < 0 || (list = this.V) == null || list.size() == 0 || i2 <= 1) {
            return i;
        }
        int iBi = 0;
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            if (this.V.get(i3) != null) {
                iBi += this.V.get(i3).bi();
            }
        }
        if (i > iBi) {
            return i - iBi;
        }
        return 0;
    }

    private void a(int i, String str) {
        try {
            r rVar = new r();
            rVar.h(r.i);
            rVar.c("code=" + i + ",desc=" + str);
            com.anythink.expressad.foundation.d.c cVar = this.D;
            rVar.b((cVar == null || cVar.M() == null) ? "" : this.D.M().e());
            rVar.f(this.n);
            com.anythink.expressad.foundation.d.c cVar2 = this.D;
            rVar.g(cVar2 != null ? cVar2.aZ() : "");
            com.anythink.expressad.foundation.d.c cVar3 = this.D;
            if (cVar3 != null && !TextUtils.isEmpty(cVar3.Z())) {
                rVar.d(this.D.Z());
            }
            com.anythink.expressad.foundation.d.c cVar4 = this.D;
            if (cVar4 != null && !TextUtils.isEmpty(cVar4.aa())) {
                rVar.e(this.D.aa());
            }
            getContext();
            int iA = k.a();
            rVar.c(iA);
            rVar.j(k.a(getContext(), iA));
            r.a(rVar);
            com.anythink.expressad.video.module.b.a.a();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private static RelativeLayout.LayoutParams c() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    private void d() {
        if (this.a) {
            setMatchParent();
        }
    }

    private int e() {
        com.anythink.expressad.video.signal.a.j jVarB = b(this.D);
        if (jVarB != null) {
            return jVarB.c();
        }
        return 0;
    }

    private int f() {
        if (getJSCommon() != null) {
            return getJSCommon().n();
        }
        return 1;
    }

    private int g() {
        com.anythink.expressad.video.signal.a.j jVarB = b(this.D);
        if (jVarB != null) {
            return jVarB.b();
        }
        return 0;
    }

    private boolean h() {
        com.anythink.expressad.video.signal.a.j jVarB = b(this.D);
        if (jVarB != null) {
            return jVarB.a();
        }
        return false;
    }

    public static /* synthetic */ boolean h(ATTempContainer aTTempContainer) {
        aTTempContainer.ap = true;
        return true;
    }

    private boolean i() {
        AnythinkVideoView anythinkVideoView = this.f;
        if (anythinkVideoView != null) {
            return anythinkVideoView.isShowingAlertView() || this.f.isInstallDialogShowing();
        }
        return false;
    }

    private void j() {
        int iF;
        int iE;
        try {
            if (this.e != null) {
                int i = getResources().getConfiguration().orientation;
                if (h()) {
                    iF = t.g(getContext());
                    iE = t.h(getContext());
                    if (g.a(getContext())) {
                        int i2 = t.i(getContext());
                        if (i == 2) {
                            iF += i2;
                        } else {
                            iE += i2;
                        }
                    }
                } else {
                    iF = t.f(getContext());
                    iE = t.e(getContext());
                }
                int iC = this.D.M().c();
                if (c(this.D) == 1) {
                    iC = i;
                }
                getJSNotifyProxy().a(i, iC, iF, iE);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.anythink.expressad.foundation.g.a.ch, t.c(getContext()));
                try {
                    if (this.r != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.r.a());
                        jSONObject2.put("amount", this.r.b());
                        jSONObject2.put("id", this.s);
                        jSONObject.put("userId", this.q);
                        jSONObject.put("reward", jSONObject2);
                        jSONObject.put("playVideoMute", this.t);
                        jSONObject.put(g.a.h, this.U);
                    }
                } catch (JSONException e2) {
                    e2.getMessage();
                } catch (Exception e3) {
                    e3.getMessage();
                }
                getJSNotifyProxy().a(jSONObject.toString());
                j.a();
                j.a((WebView) this.e, "oncutoutfetched", Base64.encodeToString(this.T.getBytes(), 0));
                getJSCommon().h();
                loadModuleDatas();
                this.h.postDelayed(this.i, 2000L);
            }
        } catch (Exception e4) {
            if (com.anythink.expressad.a.a) {
                e4.printStackTrace();
            }
        }
    }

    private void k() {
        int i = this.aj;
        Runnable runnable = i == -3 ? this.i : i == -4 ? this.j : null;
        if (runnable != null) {
            runnable.run();
            this.aj = 0;
        }
    }

    public static /* synthetic */ void k(ATTempContainer aTTempContainer) {
        int i;
        try {
            com.anythink.expressad.video.bt.module.a.b bVar = aTTempContainer.G;
            if (bVar == null) {
                Activity activity = aTTempContainer.m;
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
            if (aTTempContainer.u && ((i = aTTempContainer.w) == com.anythink.expressad.foundation.g.a.cr || i == com.anythink.expressad.foundation.g.a.cs)) {
                boolean z = true;
                if (aTTempContainer.M != 1) {
                    z = false;
                }
                bVar.a(z, aTTempContainer.L);
            }
            aTTempContainer.G.a(aTTempContainer.J, aTTempContainer.ap, aTTempContainer.r);
        } catch (Exception unused) {
            Activity activity2 = aTTempContainer.m;
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    private boolean l() {
        this.e = findWindVaneWebView();
        AnythinkVideoView anythinkVideoViewFindAnythinkVideoView = findAnythinkVideoView();
        this.f = anythinkVideoViewFindAnythinkVideoView;
        anythinkVideoViewFindAnythinkVideoView.setVideoLayout(this.D);
        this.f.setIsIV(this.u);
        this.f.setUnitId(this.n);
        this.f.setCamPlayOrderCallback(this.H, this.V, this.I, this.W);
        this.f.setTempEventListener(this.k);
        if (this.z) {
            this.f.setNotchPadding(this.P, this.Q, this.R, this.S);
        }
        AnythinkContainerView anythinkContainerViewFindAnythinkContainerView = findAnythinkContainerView();
        this.g = anythinkContainerViewFindAnythinkContainerView;
        if (this.z) {
            anythinkContainerViewFindAnythinkContainerView.setNotchPadding(this.O, this.P, this.Q, this.R, this.S);
        }
        return (this.f == null || this.g == null || !initViews()) ? false : true;
    }

    private void m() {
        if (this.p == null) {
            this.p = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.n, this.u);
        }
    }

    public static /* synthetic */ boolean m(ATTempContainer aTTempContainer) {
        aTTempContainer.av = true;
        return true;
    }

    private static void n() {
    }

    private void o() {
        int i;
        try {
            com.anythink.expressad.video.bt.module.a.b bVar = this.G;
            if (bVar == null) {
                Activity activity = this.m;
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
            if (this.u && ((i = this.w) == com.anythink.expressad.foundation.g.a.cr || i == com.anythink.expressad.foundation.g.a.cs)) {
                boolean z = true;
                if (this.M != 1) {
                    z = false;
                }
                bVar.a(z, this.L);
            }
            this.G.a(this.J, this.ap, this.r);
        } catch (Exception unused) {
            Activity activity2 = this.m;
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    private static void p() {
    }

    private void q() {
        ViewGroup viewGroup;
        List<com.anythink.expressad.foundation.d.c> list;
        WindVaneWebView windVaneWebView = this.e;
        byte b2 = 0;
        this.K = new com.anythink.expressad.video.signal.factory.b(this.m, windVaneWebView, this.f, this.g, this.D, new d(this, b2));
        com.anythink.expressad.foundation.d.c cVar = this.D;
        if (cVar != null && cVar.k() == 5 && (list = this.V) != null) {
            this.K.a(list);
        }
        registerJsFactory(this.K);
        com.anythink.expressad.foundation.f.b.a().a(this.n + "_1", new AnonymousClass5());
        if (windVaneWebView == null) {
            defaultLoad(0, "preload template webview is null or load error");
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.C.findViewById(i.a(getContext(), "anythink_video_templete_webview_parent", "id"));
        windVaneWebView.setApiManagerJSFactory(this.K);
        if (windVaneWebView.getParent() != null) {
            defaultLoad(0, "preload template webview is null or load error");
            return;
        }
        if (windVaneWebView.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
            this.K.a((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject());
            getJSCommon().a(this.t);
            getJSCommon().a(this.n);
            getJSCommon().a(this.p);
            getJSCommon().a(new d(this, b2));
            com.anythink.expressad.foundation.d.c cVar2 = this.D;
            if (cVar2 != null && (cVar2.H() || this.D.ay())) {
                MraidVolumeChangeReceiver mraidVolumeChangeReceiver = new MraidVolumeChangeReceiver(getContext());
                this.ay = mraidVolumeChangeReceiver;
                mraidVolumeChangeReceiver.registerReceiver();
                this.ay.getCurrentVolume();
                this.ay.setVolumeChangeListener(new AnonymousClass6());
            }
            getJSContainerModule().readyStatus(((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject()).r());
            j();
            ((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject()).r.c();
            if (this.z) {
                getJSCommon().f(this.ak);
                getJSCommon().e(this.al);
            }
        }
        if (getJSCommon().f() == 1 && (viewGroup = (ViewGroup) this.C.findViewById(i.a(getContext(), "anythink_video_templete_webview_parent", "id"))) != null) {
            ((ViewGroup) this.C).removeView(viewGroup);
            ((ViewGroup) this.C).addView(viewGroup, 1);
        }
        viewGroup2.addView(windVaneWebView, new ViewGroup.LayoutParams(-1, -1));
    }

    public static /* synthetic */ boolean q(ATTempContainer aTTempContainer) {
        aTTempContainer.aw = true;
        return true;
    }

    private void r() {
        getJSCommon().a(this.t);
        getJSCommon().a(this.n);
        getJSCommon().a(this.p);
        getJSCommon().a(new d(this, (byte) 0));
        com.anythink.expressad.foundation.d.c cVar = this.D;
        if (cVar != null) {
            if (cVar.H() || this.D.ay()) {
                MraidVolumeChangeReceiver mraidVolumeChangeReceiver = new MraidVolumeChangeReceiver(getContext());
                this.ay = mraidVolumeChangeReceiver;
                mraidVolumeChangeReceiver.registerReceiver();
                this.ay.getCurrentVolume();
                this.ay.setVolumeChangeListener(new AnonymousClass6());
            }
        }
    }

    private void s() {
        if (this.ap) {
            com.anythink.expressad.video.module.b.a.a(this.D, this.r, this.n, this.q, this.U);
        }
    }

    public static /* synthetic */ void s(ATTempContainer aTTempContainer) {
        if (aTTempContainer.isLoadSuccess()) {
            aTTempContainer.m.runOnUiThread(aTTempContainer.new AnonymousClass7());
        }
    }

    private void t() {
        com.anythink.expressad.foundation.d.c cVar;
        int i;
        com.anythink.expressad.foundation.d.c cVar2;
        int i2;
        boolean z = true;
        try {
            this.ao = true;
            com.anythink.expressad.foundation.d.c cVar3 = this.D;
            if (cVar3 != null && cVar3.J() == 2) {
                this.ap = true;
            }
            h hVar = this.F;
            if (hVar != null) {
                if (this.u && ((i2 = this.w) == com.anythink.expressad.foundation.g.a.cr || i2 == com.anythink.expressad.foundation.g.a.cs)) {
                    if (this.M != 1) {
                        z = false;
                    }
                    hVar.a(z, this.L);
                }
                if (!this.ap) {
                    this.r.a(0);
                }
                this.F.a(this.ap, this.r);
            }
            this.h.removeCallbacks(this.az);
            if (((!this.u && !this.z) || ((cVar = this.D) != null && cVar.j())) && this.ap) {
                com.anythink.expressad.video.module.b.a.a(this.D, this.r, this.n, this.q, this.U);
            }
            if (!this.z) {
                if (this.u) {
                    i = com.anythink.expressad.foundation.g.a.aU;
                    cVar2 = this.D;
                } else {
                    i = 94;
                    cVar2 = this.D;
                }
                com.anythink.expressad.videocommon.a.b(i, cVar2);
            }
            AnythinkContainerView anythinkContainerView = this.g;
            if (anythinkContainerView != null) {
                anythinkContainerView.release();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ boolean t(ATTempContainer aTTempContainer) {
        aTTempContainer.at = true;
        return true;
    }

    private static int u() {
        try {
            com.anythink.expressad.videocommon.e.a aVarB = com.anythink.expressad.videocommon.e.c.a().b();
            if (aVarB == null) {
                com.anythink.expressad.videocommon.e.c.a();
                com.anythink.expressad.videocommon.e.c.c();
            }
            if (aVarB != null) {
                return (int) aVarB.g();
            }
            return 5;
        } catch (Throwable th) {
            th.printStackTrace();
            return 5;
        }
    }

    public static /* synthetic */ void u(ATTempContainer aTTempContainer) {
        if (aTTempContainer.isLoadSuccess()) {
            aTTempContainer.m.runOnUiThread(aTTempContainer.new AnonymousClass8());
        }
    }

    private void v() {
        if (isLoadSuccess()) {
            this.m.runOnUiThread(new AnonymousClass7());
        }
    }

    private void w() {
        if (isLoadSuccess()) {
            this.m.runOnUiThread(new AnonymousClass8());
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public final void a(String str) {
        h hVar = this.F;
        if (hVar != null) {
            hVar.a(str);
        }
        super.a(str);
    }

    public boolean canBackPress() {
        AnythinkContainerView anythinkContainerView = this.g;
        return anythinkContainerView == null || anythinkContainerView.canBackPress();
    }

    public void defaultLoad(int i, String str) {
        int i2;
        superDefaultLoad(i, str);
        if (!isLoadSuccess()) {
            a(i, str);
            Activity activity = this.m;
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        byte b2 = 0;
        if (this.D.J() == 2) {
            this.g.setCampaign(this.D);
            this.g.addOrderViewData(this.V);
            this.g.setUnitID(this.n);
            this.g.setCloseDelayTime(this.D.g() > -2 ? this.D.g() : this.p.p());
            this.g.setPlayCloseBtnTm(this.p.j());
            this.g.setNotifyListener(new com.anythink.expressad.video.module.a.a.h(this.D, this.E, this.r, b(), this.n, new c(this, b2), this.p.M(), this.z));
            this.g.preLoadData(this.K);
            this.g.showPlayableView();
            return;
        }
        a(i, str);
        this.an.setVisibility(8);
        loadModuleDatas();
        int iF = this.p.f();
        int iE = e();
        int i3 = iE != 0 ? iE : iF;
        com.anythink.expressad.foundation.d.c cVar = this.D;
        if (cVar != null && cVar.j()) {
            this.f.setContainerViewOnNotifyListener(new b(this.m, this.D));
        }
        com.anythink.expressad.foundation.d.c cVar2 = this.D;
        int iE2 = (cVar2 == null || cVar2.h() <= -2) ? this.p.e() : this.D.h();
        if (this.D.k() == 5 && (i2 = this.I) > 1) {
            iE2 = a(iE2, i2);
            this.D.a(iE2);
        }
        int i4 = iE2;
        this.f.setVideoSkipTime(i4);
        AnythinkVideoView anythinkVideoView = this.f;
        anythinkVideoView.setNotifyListener(new m(anythinkVideoView, this.g, this.D, this.r, this.E, b(), this.n, i3, i4, new e(this, b2), this.p.M(), this.z, this.p.U()));
        this.f.defaultShow();
        AnythinkContainerView anythinkContainerView = this.g;
        anythinkContainerView.setNotifyListener(new com.anythink.expressad.video.module.a.a.b(this.f, anythinkContainerView, this.D, this.r, this.E, b(), this.n, new b(this.m, this.D), this.p.M(), this.z));
        this.g.defaultShow();
    }

    public AnythinkContainerView findAnythinkContainerView() {
        return (AnythinkContainerView) findViewById(findID("anythink_video_templete_container"));
    }

    public AnythinkVideoView findAnythinkVideoView() {
        return (AnythinkVideoView) findViewById(findID("anythink_video_templete_videoview"));
    }

    public int findID(String str) {
        return i.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return i.a(getContext(), str, "layout");
    }

    public WindVaneWebView findWindVaneWebView() {
        try {
            if (!this.z) {
                a.C0154a c0154aA = this.u ? com.anythink.expressad.videocommon.a.a(com.anythink.expressad.foundation.g.a.aU, this.D) : com.anythink.expressad.videocommon.a.a(94, this.D);
                if (c0154aA == null || !c0154aA.c()) {
                    return null;
                }
                if (this.u) {
                    com.anythink.expressad.videocommon.a.b(com.anythink.expressad.foundation.g.a.aU, this.D);
                } else {
                    com.anythink.expressad.videocommon.a.b(94, this.D);
                }
                WindVaneWebView windVaneWebViewA = c0154aA.a();
                if (this.as) {
                    windVaneWebViewA.setWebViewTransparent();
                }
                return windVaneWebViewA;
            }
            com.anythink.expressad.foundation.d.c cVar = this.D;
            if (cVar == null || cVar.M() == null) {
                return null;
            }
            a.C0154a c0154aA2 = com.anythink.expressad.videocommon.a.a(this.n + "_" + this.D.aZ() + "_" + this.D.Z() + "_" + this.D.M().e());
            if (c0154aA2 != null) {
                return c0154aA2.a();
            }
            return null;
        } catch (Exception e2) {
            if (!com.anythink.expressad.a.a) {
                return null;
            }
            e2.printStackTrace();
            return null;
        }
    }

    public com.anythink.expressad.foundation.d.c getCampaign() {
        return this.D;
    }

    public String getInstanceId() {
        return this.J;
    }

    public int getLayoutID() {
        return findLayout(this.as ? "anythink_reward_activity_video_templete_transparent" : "anythink_reward_activity_video_templete");
    }

    public void init(Context context) {
        this.aa = LayoutInflater.from(context);
    }

    public boolean initViews() {
        View viewFindViewById = findViewById(findID("anythink_video_templete_progressbar"));
        this.an = viewFindViewById;
        return viewFindViewById != null;
    }

    public boolean isLoadSuccess() {
        return this.c;
    }

    public void loadModuleDatas() {
        int i;
        int i2;
        com.anythink.expressad.video.signal.a.j jVarB = b(this.D);
        byte b2 = 0;
        int iB = jVarB != null ? jVarB.b() : 0;
        if (iB != 0) {
            this.t = iB;
        }
        int iF = this.p.f();
        int iE = e();
        int i3 = iE != 0 ? iE : iF;
        this.f.setSoundState(this.t);
        this.f.setCampaign(this.D);
        this.f.setPlayURL(this.E.r());
        com.anythink.expressad.foundation.d.c cVar = this.D;
        int iE2 = (cVar == null || cVar.h() <= -2) ? this.p.e() : this.D.h();
        if (this.D.k() == 5 && (i2 = this.I) > 1) {
            iE2 = a(iE2, i2);
            this.D.a(iE2);
        }
        this.f.setVideoSkipTime(iE2);
        this.f.setCloseAlert(this.p.k());
        this.f.setBufferTimeout(u());
        this.f.setNotifyListener(new com.anythink.expressad.video.module.a.a.n(this.K, this.D, this.r, this.E, b(), this.n, i3, iE2, new e(this, b2), this.p.M(), this.z, this.p.U()));
        this.f.setShowingTransparent(this.as);
        if (this.u && ((i = this.w) == com.anythink.expressad.foundation.g.a.cr || i == com.anythink.expressad.foundation.g.a.cs)) {
            this.f.setIVRewardEnable(i, this.x, this.y);
            this.f.setDialogRole(getJSCommon() != null ? getJSCommon().n() : 1);
        }
        this.g.setCampaign(this.D);
        this.g.addOrderViewData(this.V);
        this.g.setUnitID(this.n);
        this.g.setCloseDelayTime(this.D.g() > -2 ? this.D.g() : this.p.p());
        this.g.setPlayCloseBtnTm(this.p.j());
        this.g.setVideoInteractiveType(this.p.h());
        this.g.setEndscreenType(this.p.r());
        this.g.setVideoSkipTime(iE2);
        this.g.setShowingTransparent(this.as);
        this.g.setJSFactory(this.K);
        if (this.D.J() == 2) {
            this.g.setNotifyListener(new com.anythink.expressad.video.module.a.a.h(this.D, this.E, this.r, b(), this.n, new c(this, (byte) 0), this.p.M(), this.z));
            this.g.preLoadData(this.K);
            this.g.showPlayableView();
        } else {
            this.g.setNotifyListener(new com.anythink.expressad.video.module.a.a.c(this.K, this.D, this.r, this.E, b(), this.n, new b(this.m, this.D), this.p.M(), this.z));
            this.g.preLoadData(this.K);
            this.f.preLoadData(this.K);
        }
        if (this.as) {
            this.g.setAnythinkClickMiniCardViewTransparent();
        }
    }

    public void notifyEvent(String str) {
        WindVaneWebView windVaneWebView = this.e;
        if (windVaneWebView != null) {
            String str2 = this.J;
            j.a();
            j.a((WebView) windVaneWebView, str, Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    public void onBackPressed() {
        Activity activity;
        AnythinkContainerView anythinkContainerView;
        AnythinkContainerView anythinkContainerView2;
        AnythinkVideoView anythinkVideoView;
        AnythinkVideoView anythinkVideoView2;
        if (this.as && (anythinkVideoView2 = this.f) != null) {
            anythinkVideoView2.notifyVideoClose();
            return;
        }
        if (this.au && (anythinkVideoView = this.f) != null) {
            if (!anythinkVideoView.isMiniCardShowing()) {
                this.f.onBackPress();
                return;
            }
            AnythinkContainerView anythinkContainerView3 = this.g;
            if (anythinkContainerView3 != null) {
                anythinkContainerView3.onMiniEndcardBackPress();
                return;
            }
            return;
        }
        if (this.aw && (anythinkContainerView2 = this.g) != null) {
            anythinkContainerView2.onPlayableBackPress();
            return;
        }
        if (this.av && (anythinkContainerView = this.g) != null) {
            anythinkContainerView.onEndcardBackPress();
        }
        if (getJSCommon().g()) {
            if (getJSContainerModule() == null || !getJSContainerModule().miniCardShowing()) {
                getActivityProxy().g();
                return;
            }
            return;
        }
        if (!canBackPress() || (activity = this.m) == null || this.z || this.ax) {
            return;
        }
        this.ax = true;
        activity.onBackPressed();
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate() {
        ViewGroup viewGroup;
        List<com.anythink.expressad.foundation.d.c> list;
        new StringBuilder("onCreate isBigOffer: ").append(this.z);
        if (this.p == null) {
            this.p = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.n, this.u);
        }
        byte b2 = 0;
        this.ax = false;
        try {
            if (this.z) {
                com.anythink.expressad.foundation.d.c cVar = this.D;
                this.F = (cVar == null || !cVar.j()) ? new com.anythink.expressad.video.bt.module.b.d(this.G, this.J) : new com.anythink.expressad.video.bt.module.b.e(getContext(), this.u, this.p, this.D, this.F, b(), this.n);
            } else {
                this.F = new com.anythink.expressad.video.bt.module.b.e(getContext(), this.u, this.p, this.D, this.F, b(), this.n);
            }
            registerErrorListener(new com.anythink.expressad.video.bt.module.b.f(this.F));
            a(this.p, this.D);
            setShowingTransparent();
            int layoutID = getLayoutID();
            if (layoutID <= 0) {
                a("layoutID not found");
                return;
            }
            View viewInflate = this.aa.inflate(layoutID, (ViewGroup) null);
            this.C = viewInflate;
            addView(viewInflate, new RelativeLayout.LayoutParams(-1, -1));
            if (this.a) {
                setMatchParent();
            }
            this.e = findWindVaneWebView();
            AnythinkVideoView anythinkVideoViewFindAnythinkVideoView = findAnythinkVideoView();
            this.f = anythinkVideoViewFindAnythinkVideoView;
            anythinkVideoViewFindAnythinkVideoView.setVideoLayout(this.D);
            this.f.setIsIV(this.u);
            this.f.setUnitId(this.n);
            this.f.setCamPlayOrderCallback(this.H, this.V, this.I, this.W);
            this.f.setTempEventListener(this.k);
            if (this.z) {
                this.f.setNotchPadding(this.P, this.Q, this.R, this.S);
            }
            AnythinkContainerView anythinkContainerViewFindAnythinkContainerView = findAnythinkContainerView();
            this.g = anythinkContainerViewFindAnythinkContainerView;
            if (this.z) {
                anythinkContainerViewFindAnythinkContainerView.setNotchPadding(this.O, this.P, this.Q, this.R, this.S);
            }
            if (!((this.f == null || this.g == null || !initViews()) ? false : true)) {
                this.d.a(com.anythink.expressad.foundation.e.a.b);
                Activity activity = this.m;
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
            this.c = true;
            WindVaneWebView windVaneWebView = this.e;
            this.K = new com.anythink.expressad.video.signal.factory.b(this.m, windVaneWebView, this.f, this.g, this.D, new d(this, b2));
            com.anythink.expressad.foundation.d.c cVar2 = this.D;
            if (cVar2 != null && cVar2.k() == 5 && (list = this.V) != null) {
                this.K.a(list);
            }
            registerJsFactory(this.K);
            com.anythink.expressad.foundation.f.b.a().a(this.n + "_1", new AnonymousClass5());
            if (windVaneWebView == null) {
                defaultLoad(0, "preload template webview is null or load error");
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.C.findViewById(i.a(getContext(), "anythink_video_templete_webview_parent", "id"));
            windVaneWebView.setApiManagerJSFactory(this.K);
            if (windVaneWebView.getParent() != null) {
                defaultLoad(0, "preload template webview is null or load error");
                return;
            }
            if (windVaneWebView.getObject() instanceof com.anythink.expressad.video.signal.a.j) {
                this.K.a((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject());
                getJSCommon().a(this.t);
                getJSCommon().a(this.n);
                getJSCommon().a(this.p);
                getJSCommon().a(new d(this, b2));
                com.anythink.expressad.foundation.d.c cVar3 = this.D;
                if (cVar3 != null && (cVar3.H() || this.D.ay())) {
                    MraidVolumeChangeReceiver mraidVolumeChangeReceiver = new MraidVolumeChangeReceiver(getContext());
                    this.ay = mraidVolumeChangeReceiver;
                    mraidVolumeChangeReceiver.registerReceiver();
                    this.ay.getCurrentVolume();
                    this.ay.setVolumeChangeListener(new AnonymousClass6());
                }
                getJSContainerModule().readyStatus(((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject()).r());
                j();
                ((com.anythink.expressad.video.signal.a.j) windVaneWebView.getObject()).r.c();
                if (this.z) {
                    getJSCommon().f(this.ak);
                    getJSCommon().e(this.al);
                }
            }
            if (getJSCommon().f() == 1 && (viewGroup = (ViewGroup) this.C.findViewById(i.a(getContext(), "anythink_video_templete_webview_parent", "id"))) != null) {
                ((ViewGroup) this.C).removeView(viewGroup);
                ((ViewGroup) this.C).addView(viewGroup, 1);
            }
            viewGroup2.addView(windVaneWebView, new ViewGroup.LayoutParams(-1, -1));
        } catch (Throwable th) {
            a("onCreate error".concat(String.valueOf(th)));
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        com.anythink.expressad.foundation.d.c cVar;
        int i;
        com.anythink.expressad.foundation.d.c cVar2;
        int i2;
        if (this.N) {
            return;
        }
        boolean z = true;
        this.N = true;
        super.onDestroy();
        try {
            AnythinkVideoView anythinkVideoView = this.f;
            if (anythinkVideoView != null) {
                anythinkVideoView.releasePlayer();
            }
            WindVaneWebView windVaneWebView = this.e;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.e.clearWebView();
                this.e.release();
            }
            if (this.G != null) {
                this.G = null;
            }
            this.h.removeCallbacks(this.i);
            this.h.removeCallbacks(this.j);
            getJSCommon().k();
            if (this.u) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.b.c(this.n);
            }
            if (!this.ao) {
                try {
                    this.ao = true;
                    com.anythink.expressad.foundation.d.c cVar3 = this.D;
                    if (cVar3 != null && cVar3.J() == 2) {
                        this.ap = true;
                    }
                    h hVar = this.F;
                    if (hVar != null) {
                        if (this.u && ((i2 = this.w) == com.anythink.expressad.foundation.g.a.cr || i2 == com.anythink.expressad.foundation.g.a.cs)) {
                            if (this.M != 1) {
                                z = false;
                            }
                            hVar.a(z, this.L);
                        }
                        if (!this.ap) {
                            this.r.a(0);
                        }
                        this.F.a(this.ap, this.r);
                    }
                    this.h.removeCallbacks(this.az);
                    if (((!this.u && !this.z) || ((cVar = this.D) != null && cVar.j())) && this.ap) {
                        com.anythink.expressad.video.module.b.a.a(this.D, this.r, this.n, this.q, this.U);
                    }
                    if (!this.z) {
                        if (this.u) {
                            i = com.anythink.expressad.foundation.g.a.aU;
                            cVar2 = this.D;
                        } else {
                            i = 94;
                            cVar2 = this.D;
                        }
                        com.anythink.expressad.videocommon.a.b(i, cVar2);
                    }
                    AnythinkContainerView anythinkContainerView = this.g;
                    if (anythinkContainerView != null) {
                        anythinkContainerView.release();
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            MraidVolumeChangeReceiver mraidVolumeChangeReceiver = this.ay;
            if (mraidVolumeChangeReceiver != null) {
                mraidVolumeChangeReceiver.unregisterReceiver();
            }
            if (!this.z) {
                if (isLoadSuccess()) {
                    this.h.postDelayed(new Runnable() { // from class: com.anythink.expressad.video.bt.module.ATTempContainer.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (ATTempContainer.this.m != null) {
                                ATTempContainer.this.m.finish();
                            }
                        }
                    }, 100L);
                } else {
                    Activity activity = this.m;
                    if (activity != null) {
                        activity.finish();
                    }
                }
            }
            com.anythink.expressad.video.bt.a.c.a();
            com.anythink.expressad.video.bt.a.c.f(this.J);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onPause() {
        super.onPause();
        this.aq = true;
        try {
            getJSVideoModule().videoOperate(2);
            AnythinkContainerView anythinkContainerView = this.g;
            if (anythinkContainerView != null) {
                anythinkContainerView.setOnPause();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onResume() {
        Activity activity;
        super.onResume();
        int i = this.aj;
        Runnable runnable = i == -3 ? this.i : i == -4 ? this.j : null;
        if (runnable != null) {
            runnable.run();
            this.aj = 0;
        }
        try {
            if (this.f != null && !i() && !this.f.isMiniCardShowing() && !com.anythink.expressad.foundation.f.b.c) {
                this.f.setCover(false);
            }
            AnythinkContainerView anythinkContainerView = this.g;
            if (anythinkContainerView != null) {
                anythinkContainerView.setOnResume();
            }
            if (this.aq && !i() && !com.anythink.expressad.foundation.f.b.c) {
                getJSVideoModule().videoOperate(1);
            }
            Activity activity2 = this.m;
            if (activity2 != null) {
                t.a(activity2.getWindow().getDecorView());
            }
            if (this.as && this.at && (activity = this.m) != null) {
                activity.finish();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.container.AbstractJSContainer
    public void onStop() {
        super.onStop();
        AnythinkVideoView anythinkVideoView = this.f;
        if (anythinkVideoView != null) {
            anythinkVideoView.setCover(true);
        }
    }

    public void preload() {
    }

    public void receiveSuccess() {
        this.h.removeCallbacks(this.j);
        this.h.postDelayed(this.az, 250L);
    }

    public void registerErrorListener(a aVar) {
        this.d = aVar;
    }

    public void setAnythinkTempCallback(com.anythink.expressad.video.bt.module.a.b bVar) {
        this.G = bVar;
    }

    public void setCamPlayOrderCallback(com.anythink.expressad.video.dynview.f.a aVar, int i) {
        this.H = aVar;
        this.I = i;
    }

    public void setCampOrderViewData(List<com.anythink.expressad.foundation.d.c> list, int i) {
        if (list != null) {
            this.V = list;
        }
        this.W = i;
    }

    public void setCampaign(com.anythink.expressad.foundation.d.c cVar) {
        this.D = cVar;
        if (cVar != null) {
            if (TextUtils.isEmpty(cVar.K()) && !TextUtils.isEmpty(this.n)) {
                cVar.l(this.n);
            }
            com.anythink.expressad.foundation.f.b.a().a(cVar.K() + "_1", cVar);
        }
    }

    public void setCampaignDownLoadTask(com.anythink.expressad.videocommon.b.c cVar) {
        this.E = cVar;
    }

    public void setCampaignExpired(boolean z) {
        try {
            com.anythink.expressad.foundation.d.c cVar = this.D;
            if (cVar != null) {
                if (!z) {
                    cVar.e(0);
                    if (this.D.A()) {
                        this.D.m(0);
                        return;
                    }
                    com.anythink.expressad.videocommon.e.d dVar = this.p;
                    if (dVar != null) {
                        this.D.m(dVar.a());
                        return;
                    }
                    return;
                }
                cVar.e(1);
                if (this.v) {
                    this.D.m(0);
                    return;
                }
                com.anythink.expressad.videocommon.e.d dVar2 = this.p;
                if (dVar2 != null) {
                    if (dVar2.M() == 1) {
                        this.D.m(1);
                    } else {
                        this.D.m(0);
                    }
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public void setDeveloperExtraData(String str) {
        this.U = str;
    }

    public void setH5Cbp(int i) {
        this.al = i;
    }

    public void setInstanceId(String str) {
        this.J = str;
    }

    public void setJSFactory(com.anythink.expressad.video.signal.factory.b bVar) {
        this.K = bVar;
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
    }

    public void setMediaPlayerUrl(String str) {
    }

    public void setNotchPadding(int i, int i2, int i3, int i4, int i5) {
        this.O = i;
        this.P = i2;
        this.Q = i3;
        this.R = i4;
        this.S = i5;
        this.T = com.anythink.expressad.foundation.h.h.a(i, i2, i3, i4, i5);
        if (getJSCommon() != null && !TextUtils.isEmpty(this.T)) {
            getJSCommon().b(this.T);
            if (this.e != null && !TextUtils.isEmpty(this.T)) {
                j.a();
                j.a((WebView) this.e, "oncutoutfetched", Base64.encodeToString(this.T.getBytes(), 0));
            }
        }
        AnythinkVideoView anythinkVideoView = this.f;
        if (anythinkVideoView != null) {
            anythinkVideoView.setNotchPadding(i2, i3, i4, i5);
        }
        AnythinkContainerView anythinkContainerView = this.g;
        if (anythinkContainerView != null) {
            anythinkContainerView.setNotchPadding(i, i2, i3, i4, i5);
        }
    }

    public void setShowRewardListener(h hVar) {
        this.F = hVar;
    }

    public void setShowingTransparent() {
        int iA;
        Activity activity;
        boolean zH = h();
        this.as = zH;
        if (zH || (iA = i.a(getContext(), "anythink_reward_theme", i.e)) <= 1 || (activity = this.m) == null) {
            return;
        }
        activity.setTheme(iA);
    }

    public void setTempEventListener(com.anythink.expressad.reward.player.c cVar) {
        this.k = cVar;
    }

    public void setWebViewFront(int i) {
        this.ak = i;
    }

    public void superDefaultLoad(int i, String str) {
        StringBuilder sb = new StringBuilder("receiveError:");
        sb.append(i);
        sb.append(",descroption:");
        sb.append(str);
        this.h.removeCallbacks(this.i);
        this.h.removeCallbacks(this.j);
        this.d.b();
        WindVaneWebView windVaneWebView = this.e;
        if (windVaneWebView != null) {
            windVaneWebView.setVisibility(8);
        }
    }
}
