package com.anythink.expressad.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.multidex.MultiDexExtractor;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge;
import com.anythink.expressad.atsignalcommon.mraid.MraidVolumeChangeReceiver;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.foundation.webview.BrowserView;
import com.anythink.expressad.video.signal.h;
import com.anythink.expressad.videocommon.b.i;
import com.anythink.expressad.widget.FeedBackButton;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkH5EndCardView extends AnythinkBaseView implements IMraidJSBridge, com.anythink.expressad.video.signal.f, h {
    private static final String A = "anythink_reward_endcard_h5";
    private static final String B = "portrait";
    private static final String C = "landscape";
    private static final int D = 1;
    private static final int E = 2;
    private static final int F = 20;
    private static final int G = 15;
    private static final int Q = 100;
    public static final String n = "orientation";
    public static final String o = "webviewshow";
    private FeedBackButton H;
    private boolean I;
    private boolean J;
    private int K;
    private int L;
    private boolean M;
    private boolean N;
    private int O;
    private long P;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean aa;
    private boolean ab;
    private String ac;
    private com.anythink.expressad.video.signal.factory.b ad;
    private boolean ae;
    private boolean af;
    public View p;
    public RelativeLayout q;
    public ImageView r;
    public WindVaneWebView s;
    public Handler t;
    public String u;
    public boolean v;
    public boolean w;
    public String x;
    public Handler y;
    public boolean z;

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkH5EndCardView$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {
        public AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView.this.H.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkH5EndCardView$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass6() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) AnythinkH5EndCardView.this.s, AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) AnythinkH5EndCardView.this.s, AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) AnythinkH5EndCardView.this.s, AbsFeedBackForH5.a, strEncodeToString);
        }
    }

    public class a implements Runnable {
        private AnythinkH5EndCardView b;

        public a(AnythinkH5EndCardView anythinkH5EndCardView) {
            this.b = anythinkH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            AnythinkH5EndCardView anythinkH5EndCardView = this.b;
            if (anythinkH5EndCardView == null || (handler = anythinkH5EndCardView.y) == null) {
                return;
            }
            handler.sendEmptyMessage(100);
        }
    }

    public class b implements Runnable {
        private AnythinkH5EndCardView b;

        public b(AnythinkH5EndCardView anythinkH5EndCardView) {
            this.b = anythinkH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView anythinkH5EndCardView = this.b;
            if (anythinkH5EndCardView == null || anythinkH5EndCardView.N) {
                return;
            }
            AnythinkH5EndCardView.d(this.b);
            this.b.v = false;
            AnythinkH5EndCardView.this.reportRenderResult("timeout", 5);
            this.b.e.a(127, "");
        }
    }

    public static class c implements Runnable {
        private AnythinkH5EndCardView a;
        private int b;

        public c(AnythinkH5EndCardView anythinkH5EndCardView, int i) {
            this.a = anythinkH5EndCardView;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView anythinkH5EndCardView = this.a;
            if (anythinkH5EndCardView == null || anythinkH5EndCardView.b == null) {
                return;
            }
            try {
                if (anythinkH5EndCardView.M) {
                    return;
                }
                AnythinkH5EndCardView.n(this.a);
                if (w.b(this.a.b.I())) {
                    this.a.b.I().contains(MultiDexExtractor.EXTRACTED_SUFFIX);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public class d implements Runnable {
        private AnythinkH5EndCardView b;

        public d(AnythinkH5EndCardView anythinkH5EndCardView) {
            this.b = anythinkH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView anythinkH5EndCardView = this.b;
            if (anythinkH5EndCardView != null) {
                AnythinkH5EndCardView.e(anythinkH5EndCardView);
            }
        }
    }

    public class e implements Runnable {
        private AnythinkH5EndCardView b;

        public e(AnythinkH5EndCardView anythinkH5EndCardView) {
            this.b = anythinkH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView anythinkH5EndCardView = this.b;
            if (anythinkH5EndCardView != null) {
                AnythinkH5EndCardView.f(anythinkH5EndCardView);
            }
        }
    }

    public class f implements Runnable {
        private AnythinkH5EndCardView b;

        public f(AnythinkH5EndCardView anythinkH5EndCardView) {
            this.b = anythinkH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkH5EndCardView anythinkH5EndCardView = this.b;
            if (anythinkH5EndCardView != null) {
                if (!anythinkH5EndCardView.aa) {
                    AnythinkH5EndCardView.this.setCloseVisible(0);
                }
                AnythinkH5EndCardView.l(this.b);
            }
        }
    }

    public AnythinkH5EndCardView(Context context) {
        super(context);
        this.I = false;
        this.t = new Handler();
        this.v = false;
        this.w = false;
        this.J = false;
        this.K = 1;
        this.L = 1;
        this.M = false;
        this.N = false;
        this.O = 1;
        this.P = 0L;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.aa = false;
        this.ab = false;
        this.ac = "";
        this.y = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.video.module.AnythinkH5EndCardView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 100) {
                    return;
                }
                if (AnythinkH5EndCardView.this.R) {
                    AnythinkH5EndCardView.this.e.a(com.anythink.expressad.video.module.a.a.H, "");
                }
                AnythinkH5EndCardView.this.e.a(103, "");
            }
        };
        this.ae = false;
        this.af = false;
        this.z = false;
    }

    public AnythinkH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = false;
        this.t = new Handler();
        this.v = false;
        this.w = false;
        this.J = false;
        this.K = 1;
        this.L = 1;
        this.M = false;
        this.N = false;
        this.O = 1;
        this.P = 0L;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.aa = false;
        this.ab = false;
        this.ac = "";
        this.y = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.video.module.AnythinkH5EndCardView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 100) {
                    return;
                }
                if (AnythinkH5EndCardView.this.R) {
                    AnythinkH5EndCardView.this.e.a(com.anythink.expressad.video.module.a.a.H, "");
                }
                AnythinkH5EndCardView.this.e.a(103, "");
            }
        };
        this.ae = false;
        this.af = false;
        this.z = false;
    }

    private void a(long j, boolean z) {
        try {
            if (this.M) {
                return;
            }
            this.M = true;
            String str = "2";
            if (w.b(this.b.I()) && this.b.I().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                str = "1";
            }
            int i = 10;
            String str2 = "ready yes";
            if (z) {
                i = 12;
                str2 = "ready timeout";
            } else if (this.O == 2) {
                i = 11;
                str2 = "ready no";
            }
            StringBuilder sb = new StringBuilder("insertEndCardReadyState result:");
            sb.append(i);
            sb.append(" endCardLoadTime:");
            sb.append(j);
            sb.append(" endcardurl:");
            sb.append(this.b.I());
            sb.append("  id:");
            sb.append(this.b.aZ());
            sb.append("  unitid:");
            sb.append(this.x);
            sb.append("  reason:");
            sb.append(str2);
            sb.append("  type:");
            sb.append(str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ void a(AnythinkH5EndCardView anythinkH5EndCardView, long j) {
        try {
            if (anythinkH5EndCardView.M) {
                return;
            }
            anythinkH5EndCardView.M = true;
            String str = "2";
            if (w.b(anythinkH5EndCardView.b.I()) && anythinkH5EndCardView.b.I().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                str = "1";
            }
            int i = 10;
            String str2 = "ready yes";
            if (anythinkH5EndCardView.O == 2) {
                i = 11;
                str2 = "ready no";
            }
            StringBuilder sb = new StringBuilder("insertEndCardReadyState result:");
            sb.append(i);
            sb.append(" endCardLoadTime:");
            sb.append(j);
            sb.append(" endcardurl:");
            sb.append(anythinkH5EndCardView.b.I());
            sb.append("  id:");
            sb.append(anythinkH5EndCardView.b.aZ());
            sb.append("  unitid:");
            sb.append(anythinkH5EndCardView.x);
            sb.append("  reason:");
            sb.append(str2);
            sb.append("  type:");
            sb.append(str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void a(String str) {
        try {
            String strAd = this.b.ad();
            if (!TextUtils.isEmpty(str)) {
                this.b.p(str);
            }
            new com.anythink.expressad.a.a(getContext(), this.x);
            this.b.p(strAd);
            this.e.a(126, "");
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private boolean a(View view) {
        this.r = (ImageView) view.findViewById(findID("anythink_windwv_close"));
        this.q = (RelativeLayout) view.findViewById(findID("anythink_windwv_content_rl"));
        this.s = new WindVaneWebView(getContext());
        this.s.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.q.addView(this.s);
        return isNotNULL(this.r, this.s);
    }

    public static /* synthetic */ boolean d(AnythinkH5EndCardView anythinkH5EndCardView) {
        anythinkH5EndCardView.N = true;
        return true;
    }

    public static /* synthetic */ boolean e(AnythinkH5EndCardView anythinkH5EndCardView) {
        anythinkH5EndCardView.V = true;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void f() {
        int iO;
        try {
            this.P = System.currentTimeMillis();
            String strI = this.b.I();
            com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.x);
            if (this.J && w.b(strI)) {
                if (strI.contains("wfr=1") || (dVarA != null && dVarA.o() > 0)) {
                    if (strI.contains("wfr=1")) {
                        String[] strArrSplit = strI.split("&");
                        if (strArrSplit == null || strArrSplit.length <= 0) {
                            iO = 20;
                        } else {
                            for (String str : strArrSplit) {
                                if (w.b(str) && str.contains("to") && str.split("=") != null && str.split("=").length > 0) {
                                    iO = t.a((Object) str.split("=")[1]);
                                    break;
                                }
                            }
                            iO = 20;
                        }
                    } else if (dVarA != null && dVarA.o() > 0) {
                        iO = dVarA.o();
                    }
                    if (iO >= 0) {
                        excuteEndCardShowTask(iO);
                    } else {
                        excuteEndCardShowTask(20);
                    }
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ boolean f(AnythinkH5EndCardView anythinkH5EndCardView) {
        anythinkH5EndCardView.W = true;
        return true;
    }

    private void g() {
        if (this.ae || this.T) {
            return;
        }
        this.ae = true;
        int i = this.K;
        if (i == 0) {
            this.V = true;
            return;
        }
        this.V = false;
        if (i >= 0) {
            this.t.postDelayed(new d(this), this.K * 1000);
        }
    }

    public static /* synthetic */ void g(AnythinkH5EndCardView anythinkH5EndCardView) {
        com.anythink.expressad.foundation.d.c cVar = anythinkH5EndCardView.b;
        if (cVar == null || !cVar.H()) {
            return;
        }
        int i = anythinkH5EndCardView.getResources().getConfiguration().orientation;
        String str = "undefined";
        if (i != 0) {
            if (i == 1) {
                str = B;
            } else if (i == 2) {
                str = C;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        HashMap map = new HashMap();
        map.put(CallMraidJS.a, "Interstitial");
        map.put("state", CallMraidJS.f);
        map.put(CallMraidJS.c, "true");
        map.put(CallMraidJS.d, jSONObject);
        if (anythinkH5EndCardView.getContext() instanceof Activity) {
            float fE = k.e(anythinkH5EndCardView.getContext());
            float f2 = k.f(anythinkH5EndCardView.getContext());
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) anythinkH5EndCardView.getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f3 = displayMetrics.widthPixels;
            float f4 = displayMetrics.heightPixels;
            CallMraidJS.getInstance().fireSetScreenSize(anythinkH5EndCardView.s, fE, f2);
            CallMraidJS.getInstance().fireSetMaxSize(anythinkH5EndCardView.s, f3, f4);
        }
        CallMraidJS.getInstance().fireSetDefaultPosition(anythinkH5EndCardView.s, r7.getLeft(), anythinkH5EndCardView.s.getTop(), anythinkH5EndCardView.s.getWidth(), anythinkH5EndCardView.s.getHeight());
        CallMraidJS.getInstance().fireSetCurrentPosition(anythinkH5EndCardView.s, r13.getLeft(), anythinkH5EndCardView.s.getTop(), anythinkH5EndCardView.s.getWidth(), anythinkH5EndCardView.s.getHeight());
        CallMraidJS.getInstance().fireChangeEventForPropertys(anythinkH5EndCardView.s, map);
        CallMraidJS.getInstance().fireAudioVolumeChange(anythinkH5EndCardView.s, MraidVolumeChangeReceiver.a);
        CallMraidJS.getInstance().fireReadyEvent(anythinkH5EndCardView.s);
    }

    private void h() {
        if (this.af || this.T) {
            return;
        }
        this.af = true;
        int i = this.L;
        if (i == 0) {
            this.W = true;
            return;
        }
        this.W = false;
        if (i >= 0) {
            this.t.postDelayed(new e(this), this.L * 1000);
        }
    }

    private void i() {
        try {
            if (com.anythink.expressad.foundation.f.b.a().b()) {
                com.anythink.expressad.foundation.f.b.a().c(this.x + "_1");
                FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.x + "_2");
                this.H = feedBackButtonB;
                if (feedBackButtonB != null) {
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.H);
                    }
                    this.q.addView(this.H);
                    this.q.postDelayed(new AnonymousClass5(), 200L);
                }
                this.b.l(this.x);
                com.anythink.expressad.foundation.f.b.a().a(this.x + "_2", this.b);
                com.anythink.expressad.foundation.f.b.a().a(this.x + "_2", new AnonymousClass6());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void i(AnythinkH5EndCardView anythinkH5EndCardView) {
        try {
            if (com.anythink.expressad.foundation.f.b.a().b()) {
                com.anythink.expressad.foundation.f.b.a().c(anythinkH5EndCardView.x + "_1");
                FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(anythinkH5EndCardView.x + "_2");
                anythinkH5EndCardView.H = feedBackButtonB;
                if (feedBackButtonB != null) {
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(anythinkH5EndCardView.H);
                    }
                    anythinkH5EndCardView.q.addView(anythinkH5EndCardView.H);
                    anythinkH5EndCardView.q.postDelayed(anythinkH5EndCardView.new AnonymousClass5(), 200L);
                }
                anythinkH5EndCardView.b.l(anythinkH5EndCardView.x);
                com.anythink.expressad.foundation.f.b.a().a(anythinkH5EndCardView.x + "_2", anythinkH5EndCardView.b);
                com.anythink.expressad.foundation.f.b.a().a(anythinkH5EndCardView.x + "_2", anythinkH5EndCardView.new AnonymousClass6());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void j() {
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || !cVar.H()) {
            return;
        }
        int i = getResources().getConfiguration().orientation;
        String str = "undefined";
        if (i != 0) {
            if (i == 1) {
                str = B;
            } else if (i == 2) {
                str = C;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        HashMap map = new HashMap();
        map.put(CallMraidJS.a, "Interstitial");
        map.put("state", CallMraidJS.f);
        map.put(CallMraidJS.c, "true");
        map.put(CallMraidJS.d, jSONObject);
        if (getContext() instanceof Activity) {
            float fE = k.e(getContext());
            float f2 = k.f(getContext());
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f3 = displayMetrics.widthPixels;
            float f4 = displayMetrics.heightPixels;
            CallMraidJS.getInstance().fireSetScreenSize(this.s, fE, f2);
            CallMraidJS.getInstance().fireSetMaxSize(this.s, f3, f4);
        }
        CallMraidJS.getInstance().fireSetDefaultPosition(this.s, r7.getLeft(), this.s.getTop(), this.s.getWidth(), this.s.getHeight());
        CallMraidJS.getInstance().fireSetCurrentPosition(this.s, r13.getLeft(), this.s.getTop(), this.s.getWidth(), this.s.getHeight());
        CallMraidJS.getInstance().fireChangeEventForPropertys(this.s, map);
        CallMraidJS.getInstance().fireAudioVolumeChange(this.s, MraidVolumeChangeReceiver.a);
        CallMraidJS.getInstance().fireReadyEvent(this.s);
    }

    private static void k() {
    }

    public static /* synthetic */ boolean l(AnythinkH5EndCardView anythinkH5EndCardView) {
        anythinkH5EndCardView.S = true;
        return true;
    }

    public static /* synthetic */ boolean n(AnythinkH5EndCardView anythinkH5EndCardView) {
        anythinkH5EndCardView.M = true;
        return true;
    }

    public String a() {
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null) {
            this.R = false;
            return null;
        }
        this.R = true;
        if (cVar.H()) {
            this.J = false;
            String strG = this.b.G();
            if (TextUtils.isEmpty(strG)) {
                return this.b.P();
            }
            File file = new File(strG);
            try {
                strG = (file.exists() && file.isFile() && file.canRead()) ? "file:////".concat(String.valueOf(strG)) : this.b.P();
                return strG;
            } catch (Throwable th) {
                if (!com.anythink.expressad.a.a) {
                    return strG;
                }
                th.printStackTrace();
                return strG;
            }
        }
        String strI = this.b.I();
        if (w.a(strI)) {
            this.J = false;
            return this.b.P();
        }
        this.J = true;
        String strC = i.a().c(strI);
        if (!TextUtils.isEmpty(strC)) {
            return strC + "&native_adtype=" + this.b.w();
        }
        try {
            String path = Uri.parse(strI).getPath();
            if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                String strP = this.b.P();
                if (TextUtils.isEmpty(strP)) {
                    return null;
                }
                this.J = false;
                excuteTask();
                return strP;
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
        return strI + "&native_adtype=" + this.b.w();
    }

    public RelativeLayout.LayoutParams b() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public final void c() {
        super.c();
        if (this.f) {
            this.r.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkH5EndCardView.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnythinkH5EndCardView.this.onCloseViewClick();
                }
            });
        }
    }

    public boolean canBackPress() {
        ImageView imageView = this.r;
        return imageView != null && imageView.getVisibility() == 0;
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    public void e() {
        if (this.f) {
            setMatchParent();
        }
    }

    public void excuteEndCardShowTask(int i) {
        this.t.postDelayed(new c(this, i), i * 1000);
    }

    public void excuteTask() {
        if (this.J || this.K < 0) {
            return;
        }
        this.t.postDelayed(new f(this), this.K * 1000);
    }

    public void executeEndCardShow(int i) {
        this.t.postDelayed(new b(this), i * 1000);
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public void expand(String str, boolean z) {
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public com.anythink.expressad.foundation.d.c getMraidCampaign() {
        return this.b;
    }

    @Override // com.anythink.expressad.video.signal.h
    public void handlerPlayableException(String str) {
        if (this.w) {
            return;
        }
        this.w = true;
        this.v = false;
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void init(Context context) {
        int iFindLayout = findLayout(A);
        if (iFindLayout >= 0) {
            View viewInflate = this.c.inflate(iFindLayout, (ViewGroup) null);
            this.p = viewInflate;
            try {
                this.r = (ImageView) viewInflate.findViewById(findID("anythink_windwv_close"));
                this.q = (RelativeLayout) viewInflate.findViewById(findID("anythink_windwv_content_rl"));
                this.s = new WindVaneWebView(getContext());
                this.s.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.q.addView(this.s);
                this.f = isNotNULL(this.r, this.s);
            } catch (Exception unused) {
                this.f = false;
            }
            addView(this.p, b());
            c();
            e();
        }
    }

    @Override // com.anythink.expressad.video.signal.h
    public void install(com.anythink.expressad.foundation.d.c cVar) {
    }

    public boolean isLoadSuccess() {
        return this.v;
    }

    public boolean isPlayable() {
        return this.J;
    }

    @Override // com.anythink.expressad.video.signal.h
    public void notifyCloseBtn(int i) {
        if (i == 0) {
            this.T = true;
        } else {
            if (i != 1) {
                return;
            }
            this.U = true;
        }
    }

    public void onBackPress() {
        boolean z;
        if (this.S || (((z = this.T) && this.U) || (!(z || !this.V || this.z) || (!z && this.W && this.z)))) {
            onCloseViewClick();
        }
    }

    public void onCloseViewClick() {
        try {
            if (this.s == null) {
                this.e.a(103, "");
                this.e.a(119, "webview is null when closing webview");
            } else {
                j.a();
                j.a((WebView) this.s, "onSystemDestory", "");
                new Thread(new a(this)).start();
            }
        } catch (Exception e2) {
            this.e.a(103, "");
            this.e.a(119, "close webview exception" + e2.getMessage());
            e2.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0 || this.ab) {
            return;
        }
        this.ab = true;
        setFocusableInTouchMode(true);
        requestFocus();
        requestFocusFromTouch();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || !cVar.H()) {
            return;
        }
        if (z) {
            CallMraidJS.getInstance().fireSetIsViewable(this.s, "true");
        } else {
            CallMraidJS.getInstance().fireSetIsViewable(this.s, "false");
        }
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public void open(String str) {
        try {
            String strAd = this.b.ad();
            if (!TextUtils.isEmpty(str)) {
                this.b.p(str);
            }
            new com.anythink.expressad.a.a(getContext(), this.x);
            this.b.p(strAd);
            this.e.a(126, "");
        } catch (Exception e2) {
            try {
                e2.getMessage();
            } catch (Exception e3) {
                e3.getMessage();
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.h
    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("orientation", configuration.orientation == 2 ? C : B);
            String strEncodeToString = Base64.encodeToString(jSONObject.toString().getBytes(), 2);
            j.a();
            j.a((WebView) this.s, "orientation", strEncodeToString);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6 A[Catch: all -> 0x00fe, TryCatch #0 {all -> 0x00fe, blocks: (B:13:0x006c, B:15:0x008e, B:17:0x0094, B:20:0x009c, B:22:0x00a2, B:24:0x00aa, B:26:0x00b2, B:28:0x00b5, B:30:0x00b9, B:32:0x00c1, B:34:0x00c9, B:36:0x00cf, B:38:0x00d6, B:46:0x00f6, B:47:0x00fa, B:39:0x00e2, B:41:0x00e7, B:43:0x00ed), top: B:58:0x006c }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fa A[Catch: all -> 0x00fe, TRY_LEAVE, TryCatch #0 {all -> 0x00fe, blocks: (B:13:0x006c, B:15:0x008e, B:17:0x0094, B:20:0x009c, B:22:0x00a2, B:24:0x00aa, B:26:0x00b2, B:28:0x00b5, B:30:0x00b9, B:32:0x00c1, B:34:0x00c9, B:36:0x00cf, B:38:0x00d6, B:46:0x00f6, B:47:0x00fa, B:39:0x00e2, B:41:0x00e7, B:43:0x00ed), top: B:58:0x006c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preLoadData(com.anythink.expressad.video.signal.factory.b bVar) {
        int iO;
        this.ad = bVar;
        String strA = a();
        if (!this.f || this.b == null || TextUtils.isEmpty(strA)) {
            reportRenderResult("PL URL IS NULL", 3);
            this.e.a(127, "");
            this.e.a(129, "");
        } else {
            this.P = System.currentTimeMillis();
            BrowserView.DownloadListener downloadListener = new BrowserView.DownloadListener(this.b);
            downloadListener.setTitle(this.b.bb());
            this.s.setDownloadListener(downloadListener);
            this.s.setCampaignId(this.b.aZ());
            setCloseVisible(8);
            this.s.setApiManagerJSFactory(bVar);
            if (this.b.H()) {
                this.s.setMraidObject(this);
            }
            this.s.setWebViewListener(new com.anythink.expressad.atsignalcommon.a.b() { // from class: com.anythink.expressad.video.module.AnythinkH5EndCardView.3
                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void loadingResourceStatus(WebView webView, int i) {
                    super.loadingResourceStatus(webView, i);
                    AnythinkH5EndCardView.this.O = i;
                    if (AnythinkH5EndCardView.this.N) {
                        return;
                    }
                    AnythinkH5EndCardView.d(AnythinkH5EndCardView.this);
                    if (i == 1) {
                        AnythinkH5EndCardView.this.reportRenderResult("success", 4);
                    } else {
                        AnythinkH5EndCardView.this.e.a(127, "");
                        AnythinkH5EndCardView.this.reportRenderResult("failed", 6);
                    }
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    if (AnythinkH5EndCardView.this.w) {
                        return;
                    }
                    new StringBuilder("===========finish  loadSuccess:").append(AnythinkH5EndCardView.this.v);
                    AnythinkH5EndCardView anythinkH5EndCardView = AnythinkH5EndCardView.this;
                    anythinkH5EndCardView.v = true;
                    anythinkH5EndCardView.e.a(100, "");
                    AnythinkH5EndCardView.this.e.a(120, "");
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    AnythinkH5EndCardView anythinkH5EndCardView = AnythinkH5EndCardView.this;
                    if (anythinkH5EndCardView.w) {
                        return;
                    }
                    anythinkH5EndCardView.e.a(118, "onReceivedError " + i + str);
                    AnythinkH5EndCardView.this.reportRenderResult(str, 3);
                    AnythinkH5EndCardView.this.e.a(127, "");
                    AnythinkH5EndCardView.this.e.a(129, "");
                    AnythinkH5EndCardView.this.w = true;
                }

                @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
                public final void readyState(WebView webView, int i) {
                    super.readyState(webView, i);
                    StringBuilder sb = new StringBuilder("h5EncardView readyStatus:");
                    sb.append(i);
                    sb.append("- isError");
                    sb.append(AnythinkH5EndCardView.this.w);
                    AnythinkH5EndCardView.this.O = i;
                    if (AnythinkH5EndCardView.this.w) {
                        return;
                    }
                    AnythinkH5EndCardView.a(AnythinkH5EndCardView.this, System.currentTimeMillis() - AnythinkH5EndCardView.this.P);
                }
            });
            if (TextUtils.isEmpty(this.b.G())) {
                try {
                    this.P = System.currentTimeMillis();
                    String strI = this.b.I();
                    com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.x);
                    if (this.J && w.b(strI) && (strI.contains("wfr=1") || (dVarA != null && dVarA.o() > 0))) {
                        if (strI.contains("wfr=1")) {
                            String[] strArrSplit = strI.split("&");
                            if (strArrSplit == null || strArrSplit.length <= 0) {
                                iO = 20;
                                if (iO >= 0) {
                                    excuteEndCardShowTask(iO);
                                } else {
                                    excuteEndCardShowTask(20);
                                }
                            } else {
                                for (String str : strArrSplit) {
                                    if (w.b(str) && str.contains("to") && str.split("=") != null && str.split("=").length > 0) {
                                        iO = t.a((Object) str.split("=")[1]);
                                        break;
                                    }
                                }
                                iO = 20;
                                if (iO >= 0) {
                                }
                            }
                        } else {
                            if (dVarA != null && dVarA.o() > 0) {
                                iO = dVarA.o();
                            }
                            if (iO >= 0) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            setHtmlSource(com.anythink.expressad.videocommon.b.j.a().b(strA));
            if (TextUtils.isEmpty(this.u)) {
                this.s.loadUrl(strA);
            } else {
                this.s.loadDataWithBaseURL(strA, this.u, "text/html", "UTF-8", null);
            }
        }
        this.z = false;
    }

    @Override // com.anythink.expressad.video.signal.h
    public void readyStatus(int i) {
    }

    public void release() {
        Handler handler = this.t;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.t = null;
        }
        Handler handler2 = this.y;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.y = null;
        }
        this.q.removeAllViews();
        this.s.release();
        this.s = null;
    }

    public void reportRenderResult(String str, int i) {
    }

    public void setCloseDelayShowTime(int i) {
        this.K = i;
    }

    public void setCloseVisible(int i) {
        if (this.f) {
            this.r.setVisibility(i);
        }
    }

    public void setCloseVisibleForMraid(int i) {
        if (this.f) {
            this.aa = true;
            if (i == 4) {
                this.r.setImageDrawable(new ColorDrawable(ItemTouchHelper.ACTION_MODE_DRAG_MASK));
            } else {
                this.r.setImageResource(findDrawable("anythink_reward_close"));
            }
            this.r.setVisibility(0);
        }
    }

    public void setError(boolean z) {
        this.w = z;
    }

    public void setHtmlSource(String str) {
        this.u = str;
    }

    public void setLoadPlayable(boolean z) {
        this.z = z;
    }

    public void setNotchValue(String str, int i, int i2, int i3, int i4) {
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || cVar.f() == 2) {
            return;
        }
        this.ac = str;
        new StringBuilder("NOTCH H5ENDCARD ").append(String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.r.getLayoutParams();
        int iB = t.b(getContext(), 20.0f);
        int i5 = i3 + iB;
        layoutParams.setMargins(i + iB, i5, i2 + iB, i4 + iB);
        new StringBuilder("NOTCH H5ENDCARD ").append(i5);
        this.r.setLayoutParams(layoutParams);
    }

    public void setPlayCloseBtnTm(int i) {
        this.L = i;
    }

    public void setUnitId(String str) {
        this.x = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String strI = this.b.I();
            int iA = 15;
            if (w.b(strI) && strI.contains("wfl=1")) {
                String[] strArrSplit = strI.split("&");
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str : strArrSplit) {
                        if (w.b(str) && str.contains("timeout") && str.split("=") != null && str.split("=").length > 0) {
                            iA = t.a((Object) str.split("=")[1]);
                        }
                    }
                }
                executeEndCardShow(iA);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.h
    public void toggleCloseBtn(int i) {
        Handler handler;
        Runnable dVar;
        int i2;
        int visibility = this.r.getVisibility();
        if (i == 1) {
            this.S = true;
            visibility = 0;
        } else if (i == 2) {
            this.S = false;
            visibility = 8;
            if (this.z) {
                if (!this.af && !this.T) {
                    this.af = true;
                    int i3 = this.L;
                    if (i3 == 0) {
                        this.W = true;
                    } else {
                        this.W = false;
                        if (i3 >= 0) {
                            handler = this.t;
                            dVar = new e(this);
                            i2 = this.L;
                            handler.postDelayed(dVar, i2 * 1000);
                        }
                    }
                }
            } else if (!this.ae && !this.T) {
                this.ae = true;
                int i4 = this.K;
                if (i4 == 0) {
                    this.V = true;
                } else {
                    this.V = false;
                    if (i4 >= 0) {
                        handler = this.t;
                        dVar = new d(this);
                        i2 = this.K;
                        handler.postDelayed(dVar, i2 * 1000);
                    }
                }
            }
        }
        setCloseVisible(visibility);
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public void unload() {
        close();
    }

    @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
    public void useCustomClose(boolean z) {
        try {
            setCloseVisibleForMraid(z ? 4 : 0);
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public void volumeChange(double d2) {
        CallMraidJS.getInstance().fireAudioVolumeChange(this.s, d2);
    }

    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.s;
        if (windVaneWebView != null) {
            windVaneWebView.post(new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkH5EndCardView.4
                @Override // java.lang.Runnable
                public final void run() {
                    String string;
                    try {
                        try {
                            int[] iArr = new int[2];
                            AnythinkH5EndCardView.this.s.getLocationOnScreen(iArr);
                            StringBuilder sb = new StringBuilder("coordinate:");
                            sb.append(iArr[0]);
                            sb.append("--");
                            sb.append(iArr[1]);
                            JSONObject jSONObject = new JSONObject();
                            Context contextF = n.a().f();
                            if (contextF != null) {
                                jSONObject.put("startX", t.a(contextF, iArr[0]));
                                jSONObject.put("startY", t.a(contextF, iArr[1]));
                                jSONObject.put(com.anythink.expressad.foundation.g.a.ch, t.c(contextF));
                            }
                            string = jSONObject.toString();
                        } catch (Throwable th) {
                            th.getMessage();
                            string = "";
                        }
                        String strEncodeToString = Base64.encodeToString(string.toString().getBytes(), 2);
                        j.a();
                        j.a((WebView) AnythinkH5EndCardView.this.s, "webviewshow", strEncodeToString);
                        AnythinkH5EndCardView.this.e.a(109, "");
                        AnythinkH5EndCardView.g(AnythinkH5EndCardView.this);
                        AnythinkH5EndCardView.this.startCounterEndCardShowTimer();
                        j.a();
                        AnythinkH5EndCardView anythinkH5EndCardView = AnythinkH5EndCardView.this;
                        j.a((WebView) anythinkH5EndCardView.s, "oncutoutfetched", Base64.encodeToString(anythinkH5EndCardView.ac.getBytes(), 0));
                        AnythinkH5EndCardView.i(AnythinkH5EndCardView.this);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }
}
