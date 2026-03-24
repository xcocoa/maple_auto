package com.anythink.expressad.reward.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.multidex.MultiDexExtractor;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.reward.a.c;
import com.anythink.expressad.reward.a.e;
import com.anythink.expressad.reward.player.ATRewardVideoActivity;
import com.anythink.expressad.videocommon.a;
import com.anythink.expressad.videocommon.b.i;
import com.anythink.expressad.videocommon.b.l;
import com.anythink.expressad.videocommon.b.m;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d implements com.anythink.expressad.reward.a.a {
    private static final int L = 8;
    private static final int M = 9;
    private static final int N = 16;
    private static final int O = 17;
    private static final int P = 5000;
    private static final int Q = 30000;
    public static final String a = "APP ALREADY INSTALLED";
    public static final String b = "Offer list is empty";
    public static final String d = "1";
    public static final String e = "1";
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = 4;
    public static final int j = 5;
    public static final int k = 6;
    public static final int l = 7;
    private static final String u = "RewardMVVideoAdapter";
    private int A;
    private int B;
    private boolean C;
    private String D;
    private String E;
    private com.anythink.expressad.video.bt.module.b.h F;
    private volatile com.anythink.expressad.reward.a.b G;
    private Runnable H;
    private com.anythink.expressad.videocommon.e.d I;
    private boolean T;
    private boolean U;
    private int W;
    private int X;
    private int Y;
    private com.anythink.expressad.foundation.d.d Z;
    private CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> aa;
    private List<com.anythink.expressad.foundation.d.c> ag;
    private List<com.anythink.expressad.foundation.d.c> ah;
    private Context v;
    private String w;
    private String x;
    private int y;
    private int z;
    private boolean J = false;
    private boolean K = false;
    public Object c = new Object();
    private CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> R = new CopyOnWriteArrayList<>();
    private int S = 2;
    private String V = "";
    private boolean ab = false;
    public String m = "";
    public String n = "";
    private long ac = 0;
    private Handler ad = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.reward.a.d.1
        /* JADX WARN: Removed duplicated region for block: B:78:0x01d9  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01db  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void handleMessage(Message message) {
            boolean z;
            try {
                try {
                    int i2 = message.what;
                    if (i2 == 8) {
                        if (d.this.G == null || ((com.anythink.expressad.foundation.d.c) message.obj) == null || TextUtils.isEmpty(d.this.w)) {
                            return;
                        }
                        d.this.c();
                        return;
                    }
                    if (i2 == 9 || i2 == 16) {
                        try {
                            Object[] objArr = (Object[]) message.obj;
                            com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) objArr[0];
                            String str = (String) objArr[2];
                            com.anythink.expressad.videocommon.e.d dVar = (com.anythink.expressad.videocommon.e.d) objArr[3];
                            String str2 = (String) objArr[4];
                            WindVaneWebView windVaneWebView = objArr.length == 7 ? (WindVaneWebView) objArr[6] : null;
                            if (cVar != null) {
                                if (d.this.R != null) {
                                    d dVar2 = d.this;
                                    d.a(dVar2, windVaneWebView, str2, cVar, dVar2.R, "", str, dVar);
                                    return;
                                } else {
                                    if (d.this.ah != null) {
                                        d dVar3 = d.this;
                                        d.a(dVar3, windVaneWebView, str2, cVar, dVar3.ah, "", str, dVar);
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        } catch (Exception e2) {
                            e2.getLocalizedMessage();
                            if (com.anythink.expressad.a.a) {
                                e2.printStackTrace();
                                return;
                            }
                            return;
                        }
                    }
                    if (i2 == 17) {
                        try {
                            Object[] objArr2 = (Object[]) message.obj;
                            com.anythink.expressad.foundation.d.c cVar2 = (com.anythink.expressad.foundation.d.c) objArr2[0];
                            String str3 = (String) objArr2[1];
                            String str4 = (String) objArr2[2];
                            com.anythink.expressad.videocommon.e.d dVar4 = (com.anythink.expressad.videocommon.e.d) objArr2[3];
                            String str5 = (String) objArr2[4];
                            if (cVar2 == null || TextUtils.isEmpty(str3)) {
                                return;
                            }
                            d.a(d.this, str5, cVar2, str3, str4, dVar4);
                            return;
                        } catch (Exception e3) {
                            e3.getLocalizedMessage();
                            if (com.anythink.expressad.a.a) {
                                e3.printStackTrace();
                                return;
                            }
                            return;
                        }
                    }
                    switch (i2) {
                        case 1:
                            StringBuilder sb = new StringBuilder("handler id obtain success,start load mTtcIds:");
                            sb.append(d.this.D);
                            sb.append("  mExcludes:");
                            sb.append(d.this.E);
                            if (message.obj != null) {
                            }
                            break;
                        case 2:
                            StringBuilder sb2 = new StringBuilder("handler id obtain timeout,start load mTtcIds:");
                            sb2.append(d.this.D);
                            sb2.append("  mExcludes:");
                            sb2.append(d.this.E);
                            if (message.obj != null) {
                            }
                            break;
                        case 3:
                            if (d.this.G != null) {
                                d.this.G.b();
                            }
                            sendEmptyMessageDelayed(5, com.anythink.expressad.foundation.g.a.cq);
                            break;
                        case 4:
                            if (d.this.G != null) {
                                String unused = d.this.w;
                                List unused2 = d.this.ag;
                                boolean unused3 = d.this.U;
                                if (d.this.ag != null && d.this.ag.size() > 0) {
                                    d.this.ag.get(0);
                                }
                                try {
                                    Object obj = message.obj;
                                    if (obj == null) {
                                        if (d.this.ad != null) {
                                            d.this.ad.removeMessages(5);
                                        }
                                        removeMessages(6);
                                        if (!d.this.t) {
                                            d.this.t = true;
                                            d.this.G.a("errorCode: 3506 errorMessage: data load failed");
                                        }
                                    } else {
                                        String str6 = (String) obj;
                                        if (TextUtils.isEmpty(str6)) {
                                            if (d.this.ad != null) {
                                                d.this.ad.removeMessages(5);
                                            }
                                            removeMessages(6);
                                            if (!d.this.t) {
                                                d.this.t = true;
                                                d.this.G.a("errorCode: 3507 errorMessage: data load failed, errorMsg null");
                                            }
                                        } else {
                                            if (d.this.ad != null) {
                                                d.this.ad.removeMessages(5);
                                            }
                                            removeMessages(6);
                                            StringBuilder sb3 = new StringBuilder("=====================onVideoLoadFail=====================3333333 + ");
                                            sb3.append(str6);
                                            sb3.append(" isCalledLoadFailed: ");
                                            sb3.append(d.this.t);
                                            if (!d.this.t) {
                                                d.this.t = true;
                                                d.this.G.a("errorCode: 3507 errorMessage: data load failed, errorMsg is ".concat(String.valueOf(str6)));
                                            }
                                        }
                                    }
                                } catch (Exception e4) {
                                    if (d.this.ad != null) {
                                        d.this.ad.removeMessages(5);
                                    }
                                    removeMessages(6);
                                    String unused4 = d.this.w;
                                    List unused5 = d.this.ag;
                                    boolean unused6 = d.this.U;
                                    if (d.this.t) {
                                        return;
                                    }
                                    d.this.t = true;
                                    d.this.G.a("errorCode: 3508 errorMessage: data load failed, exception is " + e4.getMessage());
                                    return;
                                }
                            }
                            break;
                        case 5:
                            if (d.this.G != null) {
                                if (d.this.ag != null && d.this.ag.size() > 0) {
                                    com.anythink.expressad.foundation.d.c cVar3 = (com.anythink.expressad.foundation.d.c) d.this.ag.get(0);
                                    boolean z3 = !TextUtils.isEmpty(cVar3.ar());
                                    int iAp = cVar3.ap();
                                    d dVar5 = d.this;
                                    if (dVar5.b(dVar5.aa, z3, iAp)) {
                                        String str7 = d.this.w;
                                        List unused7 = d.this.ag;
                                        List list = d.this.ah;
                                        boolean unused8 = d.this.U;
                                        d.a(str7, list);
                                        sendEmptyMessage(6);
                                        removeMessages(5);
                                        if (!d.this.s) {
                                            d.this.s = true;
                                            TextUtils.isEmpty(d.this.w);
                                            d.this.G.a();
                                        }
                                    }
                                }
                                String unused9 = d.this.w;
                                List unused10 = d.this.ag;
                                boolean unused11 = d.this.U;
                                if (d.this.ad != null) {
                                    d.this.ad.removeMessages(5);
                                    d.this.ad.removeMessages(6);
                                }
                                if (!d.this.t) {
                                    d.this.t = true;
                                    if (d.this.ag != null && d.this.ag.size() > 0) {
                                        d.this.ag.get(0);
                                    }
                                    d.this.G.a("errorCode: 3401 errorMessage: resource load timeout");
                                    if (d.this.aa != null && d.this.aa.size() > 0) {
                                        boolean z4 = false;
                                        for (com.anythink.expressad.foundation.d.c cVar4 : d.this.aa) {
                                            if (cVar4 != null) {
                                                try {
                                                    if (!TextUtils.isEmpty(cVar4.S()) && !l.a().a(cVar4.S())) {
                                                        z = true;
                                                    }
                                                    if (cVar4 != null && !TextUtils.isEmpty(cVar4.I()) && !l.a().b(cVar4.I())) {
                                                        z = true;
                                                    }
                                                    if (cVar4 != null && !TextUtils.isEmpty(cVar4.ar())) {
                                                        if (l.a().b(cVar4.ar())) {
                                                            z = true;
                                                        } else if (!z4 && !z) {
                                                            if (com.anythink.expressad.videocommon.a.a(d.this.w + "_" + cVar4.Z() + "_" + cVar4.ar()) == null) {
                                                                z4 = true;
                                                            }
                                                        }
                                                    }
                                                    if (cVar4 == null && cVar4.M() != null && !TextUtils.isEmpty(cVar4.M().e()) && !cVar4.M().e().contains(com.anythink.expressad.foundation.d.c.d) && l.a().b(cVar4.M().e()) && TextUtils.isEmpty(cVar4.ar()) && !z) {
                                                        com.anythink.expressad.videocommon.a.a(cVar4.w(), cVar4);
                                                    }
                                                } catch (Exception unused12) {
                                                }
                                            }
                                            z = false;
                                            if (cVar4 != null) {
                                                z = true;
                                            }
                                            if (cVar4 != null) {
                                                if (l.a().b(cVar4.ar())) {
                                                }
                                            }
                                            if (cVar4 == null) {
                                            }
                                        }
                                        break;
                                    }
                                }
                            }
                            break;
                        case 6:
                            String str8 = d.this.w;
                            List unused13 = d.this.ag;
                            List list2 = d.this.ah;
                            boolean unused14 = d.this.U;
                            d.a(str8, list2);
                            if (d.this.G != null) {
                                removeMessages(6);
                                if (d.this.ad != null) {
                                    d.this.ad.removeMessages(5);
                                }
                                if (d.this.G != null && !d.this.s) {
                                    d.this.s = true;
                                    TextUtils.isEmpty(d.this.w);
                                    d.this.G.a();
                                    break;
                                }
                            }
                            break;
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    };
    public boolean o = false;
    private long ae = 0;
    public volatile boolean p = false;
    public volatile boolean q = false;
    public volatile boolean r = false;
    public volatile boolean s = false;
    public volatile boolean t = false;
    private String af = "";

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.d$2, reason: invalid class name */
    public class AnonymousClass2 implements c.InterfaceC0139c {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ com.anythink.expressad.foundation.d.c b;
        public final /* synthetic */ int c;

        public AnonymousClass2(boolean z, com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = z;
            this.b = cVar;
            this.c = i;
        }

        @Override // com.anythink.expressad.reward.a.c.InterfaceC0139c
        public final void a(final String str, final String str2, final String str3, final CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList) {
            new StringBuilder("Campaign download sucess: ").append(copyOnWriteArrayList.size());
            d.this.p = true;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.size();
            }
            if (this.a) {
                if (!d.this.q || d.this.r || d.this.ad == null) {
                    StringBuilder sb = new StringBuilder("Campaign download success:bid temp,big temp download fail: isCampaignTPLDownloadSuccess: ");
                    sb.append(d.this.q);
                    sb.append("  isCampaignTPLProLoad: ");
                    sb.append(d.this.r);
                    return;
                }
                synchronized (d.this.c) {
                    if (d.this.r) {
                        return;
                    }
                    d.this.r = true;
                    d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.anythink.expressad.reward.a.c cVar = c.m.a;
                            boolean z = d.this.ab;
                            Handler handler = d.this.ad;
                            boolean z3 = d.this.T;
                            boolean z4 = d.this.U;
                            String str4 = str3;
                            AnonymousClass2.this.b.aa();
                            String str5 = d.this.x;
                            String str6 = str2;
                            String strAr = AnonymousClass2.this.b.ar();
                            int i = d.this.S;
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            cVar.a(z, handler, z3, z4, str4, str5, str6, strAr, i, anonymousClass2.b, d.this.aa, com.anythink.expressad.videocommon.b.i.a().c(AnonymousClass2.this.b.ar()), str2, d.this.I, new c.j() { // from class: com.anythink.expressad.reward.a.d.2.2.1
                                @Override // com.anythink.expressad.reward.a.c.j
                                public final void a() {
                                    d dVar = d.this;
                                    CopyOnWriteArrayList copyOnWriteArrayList2 = dVar.aa;
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    if (!dVar.a(copyOnWriteArrayList2, anonymousClass22.a, anonymousClass22.c)) {
                                        List unused = d.this.ag;
                                        boolean unused2 = d.this.U;
                                        if (d.this.ad != null) {
                                            d.this.ad.removeMessages(5);
                                        }
                                        if (d.this.G == null || d.this.t) {
                                            return;
                                        }
                                        d.this.t = true;
                                        TextUtils.isEmpty(d.this.w);
                                        d.this.G.a("errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                                        return;
                                    }
                                    String str7 = d.this.w;
                                    List list = d.this.ah;
                                    boolean unused3 = d.this.U;
                                    d.a(str7, list);
                                    if (d.this.ad != null) {
                                        d.this.ad.removeMessages(5);
                                    }
                                    if (d.this.G == null || d.this.s) {
                                        return;
                                    }
                                    d.this.s = true;
                                    TextUtils.isEmpty(d.this.w);
                                    d.this.G.a();
                                }

                                @Override // com.anythink.expressad.reward.a.c.j
                                public final void a(String str7) {
                                    if (AnonymousClass2.this.b.aB() == null || AnonymousClass2.this.b.aB().size() <= 0 || !AnonymousClass2.this.b.aB().contains(3)) {
                                        List unused = d.this.ag;
                                        boolean unused2 = d.this.U;
                                        if (d.this.ad != null) {
                                            d.this.ad.removeMessages(5);
                                        }
                                        if (d.this.G == null || d.this.t) {
                                            return;
                                        }
                                        d.this.t = true;
                                        d.this.G.a("errorCode: 3303 errorMessage: tpl temp preload failed: ".concat(String.valueOf(str7)));
                                    }
                                }
                            });
                        }
                    });
                    return;
                }
            }
            for (final com.anythink.expressad.foundation.d.c cVar : copyOnWriteArrayList) {
                if (cVar == null || cVar.M() == null || TextUtils.isEmpty(cVar.M().e()) || cVar.M().e().contains(com.anythink.expressad.foundation.d.c.d) || d.this.ad == null) {
                    d dVar = d.this;
                    if (dVar.a(dVar.aa, this.a, this.c)) {
                        new StringBuilder("模板加载成功 requestId ").append(copyOnWriteArrayList.get(0).Z());
                        String str4 = d.this.w;
                        List list = d.this.ah;
                        boolean unused = d.this.U;
                        d.a(str4, list);
                        if (d.this.ad != null) {
                            d.this.ad.removeMessages(5);
                        }
                        if (d.this.G != null && !d.this.s) {
                            d.this.s = true;
                            TextUtils.isEmpty(d.this.w);
                            d.this.G.a();
                        }
                    } else {
                        new StringBuilder("temp load fail requestId ").append(copyOnWriteArrayList.get(0).Z());
                        List unused2 = d.this.ag;
                        boolean unused3 = d.this.U;
                        if (d.this.ad != null) {
                            d.this.ad.removeMessages(5);
                        }
                        if (d.this.G != null && !d.this.t) {
                            d.this.t = true;
                            if (!TextUtils.isEmpty(d.this.w) && cVar != null && !TextUtils.isEmpty(cVar.aa())) {
                                cVar.aa();
                            }
                            d.this.G.a("errorCode: 3503 errorMessage: have no temp but isReady false");
                        }
                    }
                } else {
                    d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.anythink.expressad.reward.a.c cVar2 = c.m.a;
                            boolean z = d.this.ab;
                            Handler handler = d.this.ad;
                            boolean z3 = d.this.T;
                            boolean z4 = d.this.U;
                            String strE = cVar.M().e();
                            int i = d.this.S;
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            com.anythink.expressad.foundation.d.c cVar3 = anonymousClass2.b;
                            CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2 = d.this.aa;
                            String strC = com.anythink.expressad.videocommon.b.i.a().c(cVar.M().e());
                            String str5 = str;
                            String str6 = str2;
                            String str7 = str3;
                            cVar.aa();
                            cVar2.a(z, handler, z3, z4, (WindVaneWebView) null, strE, i, cVar3, copyOnWriteArrayList2, strC, str5, str6, str7, d.this.I, new c.j() { // from class: com.anythink.expressad.reward.a.d.2.1.1
                                @Override // com.anythink.expressad.reward.a.c.j
                                public final void a() {
                                    d dVar2 = d.this;
                                    CopyOnWriteArrayList copyOnWriteArrayList3 = dVar2.aa;
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    if (!dVar2.a(copyOnWriteArrayList3, anonymousClass22.a, anonymousClass22.c)) {
                                        List unused4 = d.this.ag;
                                        boolean unused5 = d.this.U;
                                        if (d.this.ad != null) {
                                            d.this.ad.removeMessages(5);
                                        }
                                        if (d.this.G == null || d.this.t) {
                                            return;
                                        }
                                        d.this.t = true;
                                        TextUtils.isEmpty(d.this.w);
                                        d.this.G.a("errorCode: 3502 errorMessage: temp preload success but isReady false");
                                        return;
                                    }
                                    String str8 = d.this.w;
                                    List list2 = d.this.ah;
                                    boolean unused6 = d.this.U;
                                    d.a(str8, list2);
                                    if (d.this.ad != null) {
                                        d.this.ad.removeMessages(5);
                                    }
                                    if (d.this.G == null || d.this.s) {
                                        return;
                                    }
                                    d.this.s = true;
                                    TextUtils.isEmpty(d.this.w);
                                    d.this.G.a();
                                }

                                @Override // com.anythink.expressad.reward.a.c.j
                                public final void a(String str8) {
                                    if (AnonymousClass2.this.b.aB() == null || AnonymousClass2.this.b.aB().size() <= 0 || !AnonymousClass2.this.b.aB().contains(1)) {
                                        List unused4 = d.this.ag;
                                        boolean unused5 = d.this.U;
                                        if (d.this.ad != null) {
                                            d.this.ad.removeMessages(5);
                                        }
                                        if (d.this.G == null || d.this.t) {
                                            return;
                                        }
                                        d.this.t = true;
                                        TextUtils.isEmpty(d.this.w);
                                        d.this.G.a("errorCode: 3301 errorMessage: temp preload failed: ".concat(String.valueOf(str8)));
                                    }
                                }
                            });
                        }
                    });
                }
            }
        }

        @Override // com.anythink.expressad.reward.a.c.InterfaceC0139c
        public final void a(final String str, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList) {
            new StringBuilder("Campaign download fail: ").append(copyOnWriteArrayList.size());
            d.this.p = false;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.size();
            }
            if (d.this.G == null || d.this.ad == null) {
                return;
            }
            d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.2.3
                @Override // java.lang.Runnable
                public final void run() {
                    List unused = d.this.ag;
                    boolean unused2 = d.this.U;
                    if (d.this.ad != null) {
                        d.this.ad.removeMessages(5);
                    }
                    if (d.this.t || d.this.G == null) {
                        return;
                    }
                    d.this.t = true;
                    TextUtils.isEmpty(d.this.w);
                    d.this.G.a("errorCode: 3201 errorMessage: campaign resource download failed");
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.d$4, reason: invalid class name */
    public class AnonymousClass4 implements c.i {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ boolean b;
        public final /* synthetic */ int c;

        public AnonymousClass4(com.anythink.expressad.foundation.d.c cVar, boolean z, int i) {
            this.a = cVar;
            this.b = z;
            this.c = i;
        }

        @Override // com.anythink.expressad.reward.a.c.i
        public final void a(String str) {
            if (d.this.ag.get(0) != null) {
                d.this.ag.size();
            }
            if (this.a.aB() != null && this.a.aB().size() > 0) {
                if (this.a.aB().contains(3)) {
                    return;
                }
                if (this.a.ar().equals(this.a.I()) && this.a.aB().contains(2)) {
                    return;
                }
            }
            d.this.q = false;
            List unused = d.this.ag;
            boolean unused2 = d.this.U;
            if (d.this.ad != null) {
                d.this.ad.removeMessages(5);
            }
            if (d.this.G == null || d.this.t) {
                return;
            }
            d.this.t = true;
            d.this.G.a("errorCode: 3203 errorMessage: tpl temp resource download failed");
        }

        @Override // com.anythink.expressad.reward.a.c.i
        public final void a(final String str, final String str2, final String str3) {
            d.this.q = true;
            if (!d.this.p || d.this.r || d.this.ad == null) {
                StringBuilder sb = new StringBuilder("bid temp,big temp download success，Campaign 下载不成功，isCampaignsDownloadSuccess: ");
                sb.append(d.this.p);
                sb.append("  isCampaignTPLProLoad: ");
                sb.append(d.this.r);
                return;
            }
            synchronized (d.this.c) {
                if (d.this.r) {
                    return;
                }
                d.this.r = true;
                d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.anythink.expressad.reward.a.c cVar = c.m.a;
                        boolean z = d.this.ab;
                        Handler handler = d.this.ad;
                        boolean z3 = d.this.T;
                        boolean z4 = d.this.U;
                        String str4 = str3;
                        AnonymousClass4.this.a.aa();
                        String str5 = str;
                        String str6 = str2;
                        String strAr = AnonymousClass4.this.a.ar();
                        int i = d.this.S;
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        cVar.a(z, handler, z3, z4, str4, str5, str6, strAr, i, anonymousClass4.a, d.this.aa, com.anythink.expressad.videocommon.b.i.a().c(AnonymousClass4.this.a.ar()), str2, d.this.I, new c.j() { // from class: com.anythink.expressad.reward.a.d.4.1.1
                            @Override // com.anythink.expressad.reward.a.c.j
                            public final void a() {
                                d dVar = d.this;
                                CopyOnWriteArrayList copyOnWriteArrayList = dVar.aa;
                                AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                                if (!dVar.a(copyOnWriteArrayList, anonymousClass42.b, anonymousClass42.c)) {
                                    List unused = d.this.ag;
                                    boolean unused2 = d.this.U;
                                    if (d.this.ad != null) {
                                        d.this.ad.removeMessages(5);
                                    }
                                    if (d.this.G == null || d.this.t) {
                                        return;
                                    }
                                    d.this.t = true;
                                    d.this.G.a("errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                                    return;
                                }
                                String str7 = d.this.w;
                                List unused3 = d.this.ag;
                                List list = d.this.ah;
                                boolean unused4 = d.this.U;
                                d.a(str7, list);
                                if (d.this.ad != null) {
                                    d.this.ad.removeMessages(5);
                                }
                                if (d.this.G == null || d.this.s) {
                                    return;
                                }
                                d.this.s = true;
                                TextUtils.isEmpty(d.this.w);
                                d.this.G.a();
                            }

                            @Override // com.anythink.expressad.reward.a.c.j
                            public final void a(String str7) {
                                List unused = d.this.ag;
                                boolean unused2 = d.this.U;
                                if (d.this.ad != null) {
                                    d.this.ad.removeMessages(5);
                                }
                                if (d.this.G == null || d.this.t) {
                                    return;
                                }
                                d.this.t = true;
                                d.this.G.a("errorCode: 3303 errorMessage: tpl temp preload failed: ".concat(String.valueOf(str7)));
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.d$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {
        public final /* synthetic */ com.anythink.expressad.foundation.d.d a;

        public AnonymousClass5(com.anythink.expressad.foundation.d.d dVar) {
            this.a = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
            com.anythink.expressad.foundation.d.d dVar = this.a;
            if (dVar == null || (arrayList = dVar.J) == null || arrayList.size() <= 0) {
                return;
            }
            d.a(d.this, this.a.J);
        }
    }

    public static class a extends com.anythink.expressad.atsignalcommon.a.a {
        private d b;
        private String c;
        private String d;
        private a.C0154a e;
        private com.anythink.expressad.foundation.d.c f;
        private boolean g;
        private boolean h;
        private g i;
        private Handler j;

        public a(String str, String str2, a.C0154a c0154a, com.anythink.expressad.foundation.d.c cVar, d dVar, g gVar, Handler handler) {
            this.c = str;
            this.d = str2;
            this.e = c0154a;
            if (dVar != null) {
                this.b = dVar;
            }
            this.f = cVar;
            this.i = gVar;
            this.j = handler;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.c
        public final String a(String str) {
            return com.anythink.expressad.videocommon.b.i.a().c(str);
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.c
        public final void a(String str, int i, int i2) {
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.g) {
                return;
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.b(webView);
            this.g = true;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            try {
                d dVar = this.b;
                if (dVar != null) {
                    synchronized (dVar) {
                        d.a(this.b, str, str2);
                        this.b = null;
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void readyState(WebView webView, int i) {
            Handler handler;
            if (this.h) {
                return;
            }
            g gVar = this.i;
            if (gVar != null && (handler = this.j) != null) {
                handler.removeCallbacks(gVar);
            }
            l.a().c(this.c, true);
            StringBuilder sb = new StringBuilder();
            sb.append(this.d);
            sb.append("_");
            sb.append(this.c);
            a.C0154a c0154a = this.e;
            if (c0154a != null) {
                c0154a.a(true);
            }
            this.h = true;
        }
    }

    public static final class b implements com.anythink.expressad.videocommon.d.c {
        private d a;
        private com.anythink.expressad.foundation.d.c b;

        public b(d dVar, com.anythink.expressad.foundation.d.c cVar) {
            this.a = dVar;
            this.b = cVar;
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str) {
            try {
                l.a().a(str, true);
                d dVar = this.a;
                if (dVar != null) {
                    synchronized (dVar) {
                        d dVar2 = this.a;
                        if (dVar2 != null && dVar2.c() && this.a.ad != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.obj = this.b;
                            this.a.ad.sendMessage(messageObtain);
                            this.a.ad.removeMessages(5);
                            this.a = null;
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str, String str2) {
            try {
                d dVar = this.a;
                if (dVar != null) {
                    synchronized (dVar) {
                        d.a(this.a, str, str2);
                        this.a = null;
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public static final class c implements com.anythink.expressad.foundation.g.d.c {
        private d a;
        private com.anythink.expressad.foundation.d.c b;
        private String c;

        public c(d dVar, com.anythink.expressad.foundation.d.c cVar, String str) {
            this.a = dVar;
            this.b = cVar;
            this.c = str;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.d$d, reason: collision with other inner class name */
    public static class C0143d implements i.b {
        private com.anythink.expressad.foundation.d.c a;
        private String b;
        private com.anythink.expressad.videocommon.e.d c;
        private d d;

        public C0143d(d dVar, com.anythink.expressad.foundation.d.c cVar, String str, com.anythink.expressad.videocommon.e.d dVar2) {
            this.a = cVar;
            this.b = str;
            this.c = dVar2;
            this.d = dVar;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            d dVar = this.d;
            if (dVar != null) {
                dVar.a(this.a, str, this.b, this.c);
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            d dVar = this.d;
            if (dVar != null) {
                d.a(dVar, "TemplateUrl source download failed", str);
            }
        }
    }

    public static final class e implements com.anythink.expressad.foundation.g.d.c {
        private d a;
        private com.anythink.expressad.foundation.d.c b;
        private String c;

        public e(d dVar, com.anythink.expressad.foundation.d.c cVar, String str) {
            this.a = dVar;
            this.b = cVar;
            this.c = str;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            try {
                l.a();
                l.c(str);
                d dVar = this.a;
                if (dVar != null) {
                    synchronized (dVar) {
                        if (this.a.c() && this.a.ad != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.obj = this.b;
                            this.a.ad.sendMessage(messageObtain);
                            this.a.ad.removeMessages(5);
                            this.a = null;
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
            try {
                d dVar = this.a;
                if (dVar != null) {
                    synchronized (dVar) {
                        d.a(this.a, str, str2);
                        this.a = null;
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public static final class f implements i.b {
        private d a;
        private com.anythink.expressad.foundation.d.c b;
        private long c = System.currentTimeMillis();
        private String d;
        private boolean e;

        public f(d dVar, com.anythink.expressad.foundation.d.c cVar, String str, boolean z) {
            this.e = true;
            this.d = str;
            this.a = dVar;
            this.b = cVar;
            this.e = z;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            try {
                if (this.a.ad != null) {
                    StringBuilder sb = new StringBuilder("H5SourceDownloadListener source code download success cid:");
                    sb.append(this.b.aZ());
                    sb.append("  url:");
                    sb.append(str);
                    this.a.ad.removeMessages(5);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 8;
                    messageObtain.obj = this.b;
                    this.a.ad.sendMessage(messageObtain);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            try {
                StringBuilder sb = new StringBuilder("H5SourceDownloadListener source code download fail cid:");
                sb.append(this.b.aZ());
                sb.append("  url:");
                sb.append(str);
                d dVar = this.a;
                if (dVar != null) {
                    d.a(dVar, "H5 code resource download failed ", str);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public class g implements Runnable {
        private String b;
        private com.anythink.expressad.foundation.d.c c;
        private String d;
        private String e;
        private com.anythink.expressad.videocommon.e.d f;
        private int g;
        private d h;

        public g(String str, com.anythink.expressad.foundation.d.c cVar, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar, int i, d dVar2) {
            this.b = str;
            this.c = cVar;
            this.d = str2;
            this.e = str3;
            this.f = dVar;
            this.g = i;
            this.h = dVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                new StringBuilder("retry load tpl url = ").append(this.d);
                a.C0154a c0154a = new a.C0154a();
                WindVaneWebView windVaneWebView = new WindVaneWebView(n.a().f());
                c0154a.a(windVaneWebView);
                com.anythink.expressad.video.bt.a.c.a();
                String strB = com.anythink.expressad.video.bt.a.c.b();
                c0154a.a(strB);
                com.anythink.expressad.video.signal.a.j jVar = (d.this.Z.J == null || d.this.Z.J.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, this.c) : new com.anythink.expressad.video.signal.a.j(null, this.c, d.this.Z.J);
                jVar.a(this.g);
                jVar.a(this.e);
                jVar.c(strB);
                jVar.a(this.f);
                jVar.b(d.this.ab);
                windVaneWebView.setWebViewListener(new a(this.d, this.b, c0154a, this.c, this.h, null, null));
                windVaneWebView.setObject(jVar);
                windVaneWebView.loadUrl(this.d);
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public class h implements Runnable {
        private WindVaneWebView b;
        private String c;
        private com.anythink.expressad.foundation.d.c d;
        private List<com.anythink.expressad.foundation.d.c> e;
        private String f;
        private String g;
        private com.anythink.expressad.videocommon.e.d h;
        private int i;
        private d j;

        public h(WindVaneWebView windVaneWebView, String str, com.anythink.expressad.foundation.d.c cVar, List<com.anythink.expressad.foundation.d.c> list, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar, int i, d dVar2) {
            this.b = windVaneWebView;
            this.c = str;
            this.d = cVar;
            this.e = list;
            this.f = str2;
            this.g = str3;
            this.h = dVar;
            this.i = i;
            this.j = dVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                new StringBuilder("retry load template url = ").append(this.f);
                a.C0154a c0154a = new a.C0154a();
                WindVaneWebView windVaneWebView = new WindVaneWebView(n.a().f());
                c0154a.a(windVaneWebView);
                List<com.anythink.expressad.foundation.d.c> list = this.e;
                com.anythink.expressad.video.signal.a.j jVar = (list == null || list.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, this.d) : new com.anythink.expressad.video.signal.a.j(null, this.d, this.e);
                jVar.a(this.i);
                jVar.a(this.g);
                jVar.a(this.h);
                jVar.b(d.this.ab);
                windVaneWebView.setWebViewListener(new j(this.b, this.f, this.c, c0154a, this.d, this.j, null, null));
                windVaneWebView.setObject(jVar);
                windVaneWebView.loadUrl(this.f);
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public static final class i implements i.d {
        public static final int a = 497;
        public static final int b = 859;
        public static final int c = 313;
        public static final int d = 502;
        private com.anythink.expressad.foundation.d.c e;
        private d f;
        private long g = System.currentTimeMillis();
        private String h;
        private int i;
        private com.anythink.expressad.videocommon.e.d j;
        private boolean k;

        public i(com.anythink.expressad.foundation.d.c cVar, d dVar, String str, int i, com.anythink.expressad.videocommon.e.d dVar2, boolean z) {
            this.i = 0;
            this.k = true;
            this.h = str;
            this.e = cVar;
            this.i = i;
            this.j = dVar2;
            this.f = dVar;
            this.k = z;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            r rVar;
            String str2;
            Context context;
            String str3;
            try {
                l.a().b(str, true);
                long jCurrentTimeMillis = System.currentTimeMillis() - this.g;
                int i = this.i;
                if (i != 497) {
                    if (i == 859) {
                        rVar = new r();
                        rVar.h(r.m);
                        if (this.f != null) {
                            if (TextUtils.isEmpty(this.e.ar())) {
                                this.f.a(this.e, str, this.h, this.j);
                            }
                            Context context2 = this.f.v;
                            if (context2 != null) {
                                context2.getApplicationContext();
                                rVar.c(k.a());
                            }
                        }
                        rVar.d(1);
                        com.anythink.expressad.foundation.d.c cVar = this.e;
                        if (cVar != null) {
                            rVar.g(cVar.aZ());
                            rVar.d(this.e.Z());
                            rVar.e(this.e.aa());
                        }
                        rVar.b(str);
                        rVar.i("");
                        str2 = this.h;
                    } else if (i == 502) {
                        rVar = new r();
                        rVar.h(r.m);
                        d dVar = this.f;
                        if (dVar != null && (context = dVar.v) != null) {
                            context.getApplicationContext();
                            rVar.c(k.a());
                        }
                        rVar.d(1);
                        com.anythink.expressad.foundation.d.c cVar2 = this.e;
                        if (cVar2 != null) {
                            rVar.g(cVar2.aZ());
                            rVar.d(this.e.Z());
                            rVar.e(this.e.aa());
                        }
                        rVar.b(str);
                        rVar.i("");
                        str2 = this.h;
                    } else if (i == 313) {
                        return;
                    }
                    rVar.f(str2);
                } else if (this.k) {
                    r rVar2 = new r(r.k, 14, String.valueOf(jCurrentTimeMillis), str, this.e.aZ(), this.h, "", "1");
                    rVar2.d(this.e.Z());
                    rVar2.e(this.e.aa());
                    rVar2.g(this.e.aZ());
                    rVar2.b(this.e.f());
                    if (this.e.w() != 287) {
                        str3 = this.e.w() == 94 ? "1" : "3";
                    }
                    rVar2.a(str3);
                }
                d dVar2 = this.f;
                if (dVar2 != null) {
                    synchronized (dVar2) {
                        if (this.f.c() && this.f.ad != null) {
                            this.f.ad.sendEmptyMessage(6);
                            this.f.ad.removeMessages(5);
                            this.f = null;
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            Context context;
            String str3;
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.g;
                int i = this.i;
                if (i == 497) {
                    if (this.k) {
                        r rVar = new r(r.k, 3, String.valueOf(jCurrentTimeMillis), str2, this.e.aZ(), this.h, "zip download failed", "1");
                        rVar.d(this.e.Z());
                        rVar.e(this.e.aa());
                        rVar.g(this.e.aZ());
                        rVar.b(this.e.f());
                        if (this.e.w() != 287) {
                            str3 = this.e.w() == 94 ? "1" : "3";
                        }
                        rVar.a(str3);
                    }
                } else if (i == 859) {
                    r rVar2 = new r();
                    rVar2.h(r.m);
                    d dVar = this.f;
                    if (dVar != null && (context = dVar.v) != null) {
                        context.getApplicationContext();
                        rVar2.c(k.a());
                    }
                    rVar2.d(3);
                    com.anythink.expressad.foundation.d.c cVar = this.e;
                    if (cVar != null) {
                        rVar2.g(cVar.aZ());
                        rVar2.d(this.e.Z());
                        rVar2.e(this.e.aa());
                    }
                    rVar2.b(str2);
                    rVar2.i(str);
                    rVar2.f(this.h);
                } else if (i == 313) {
                    return;
                }
                d dVar2 = this.f;
                if (dVar2 != null) {
                    d.a(dVar2, str, str2);
                }
            } catch (Exception e) {
                try {
                    d dVar3 = this.f;
                    if (dVar3 != null) {
                        dVar3.b("clear error info failed");
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
                e.getMessage();
            }
            if (this.f != null) {
                this.f = null;
            }
        }
    }

    public static class j extends com.anythink.expressad.atsignalcommon.a.b {
        public static final int a = 0;
        public static final int b = 1;
        private d c;
        private WindVaneWebView e;
        private String f;
        private String g;
        private a.C0154a h;
        private com.anythink.expressad.foundation.d.c i;
        private boolean j;
        private boolean k;
        private h l;
        private Handler m;

        public j(WindVaneWebView windVaneWebView, String str, String str2, a.C0154a c0154a, com.anythink.expressad.foundation.d.c cVar, d dVar, h hVar, Handler handler) {
            this.e = windVaneWebView;
            this.f = str;
            this.g = str2;
            this.h = c0154a;
            if (dVar != null) {
                this.c = dVar;
            }
            this.i = cVar;
            this.l = hVar;
            this.m = handler;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.j) {
                return;
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.b(webView);
            this.j = true;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            try {
                d dVar = this.c;
                if (dVar != null) {
                    synchronized (dVar) {
                        d.a(this.c, str, str2);
                        this.c = null;
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void readyState(WebView webView, int i) {
            int i2;
            Handler handler;
            if (this.k) {
                return;
            }
            h hVar = this.l;
            if (hVar != null && (handler = this.m) != null) {
                handler.removeCallbacks(hVar);
            }
            String str = this.g + "_" + this.f;
            a.C0154a c0154a = this.h;
            if (c0154a != null) {
                c0154a.a(true);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", 1);
                jSONObject.put("id", str);
                jSONObject.put("unitid", this.g);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            l.a().c(this.f, true);
            d dVar = this.c;
            if (dVar == null || !dVar.T) {
                if (this.i.A()) {
                    i2 = 94;
                    com.anythink.expressad.videocommon.a.a(i2, this.i.aa(), this.h);
                }
            } else if (this.i.A()) {
                i2 = com.anythink.expressad.foundation.g.a.aU;
                com.anythink.expressad.videocommon.a.a(i2, this.i.aa(), this.h);
            }
            try {
                d dVar2 = this.c;
                if (dVar2 != null) {
                    synchronized (dVar2) {
                        d dVar3 = this.c;
                        if (dVar3 != null && dVar3.c() && this.c.ad != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.obj = this.i;
                            this.c.ad.sendMessage(messageObtain);
                            this.c.ad.removeMessages(5);
                            this.c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            this.k = true;
        }
    }

    public d(Context context, String str, String str2) {
        try {
            this.v = context.getApplicationContext();
            this.w = str2;
            this.x = str;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(WindVaneWebView windVaneWebView, String str, com.anythink.expressad.foundation.d.c cVar, List<com.anythink.expressad.foundation.d.c> list, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar) {
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(n.a().f());
            c0154a.a(windVaneWebView2);
            com.anythink.expressad.video.signal.a.j jVar = (list == null || list.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, cVar) : new com.anythink.expressad.video.signal.a.j(null, cVar, list);
            jVar.a(this.S);
            jVar.a(str3);
            jVar.a(dVar);
            jVar.b(this.ab);
            h hVar = new h(windVaneWebView, str3, cVar, list, str2, str3, dVar, this.S, this);
            windVaneWebView2.setWebViewListener(new j(windVaneWebView, str, str3, c0154a, cVar, this, hVar, this.ad));
            windVaneWebView2.setObject(jVar);
            windVaneWebView2.loadUrl(str2);
            this.ad.postDelayed(hVar, com.anythink.expressad.exoplayer.f.a);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.anythink.expressad.foundation.d.c cVar, String str, String str2, com.anythink.expressad.videocommon.e.d dVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strC = com.anythink.expressad.videocommon.b.i.a().c(str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 16;
            messageObtain.obj = new Object[]{cVar, strC, str2, dVar, str};
            Handler handler = this.ad;
            if (handler != null) {
                handler.sendMessage(messageObtain);
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void a(d dVar, WindVaneWebView windVaneWebView, String str, com.anythink.expressad.foundation.d.c cVar, List list, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar2) {
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(n.a().f());
            c0154a.a(windVaneWebView2);
            com.anythink.expressad.video.signal.a.j jVar = (list == null || list.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, cVar) : new com.anythink.expressad.video.signal.a.j(null, cVar, list);
            jVar.a(dVar.S);
            jVar.a(str3);
            jVar.a(dVar2);
            jVar.b(dVar.ab);
            h hVar = dVar.new h(windVaneWebView, str3, cVar, list, str2, str3, dVar2, dVar.S, dVar);
            windVaneWebView2.setWebViewListener(new j(windVaneWebView, str, str3, c0154a, cVar, dVar, hVar, dVar.ad));
            windVaneWebView2.setObject(jVar);
            windVaneWebView2.loadUrl(str2);
            dVar.ad.postDelayed(hVar, com.anythink.expressad.exoplayer.f.a);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ void a(d dVar, String str, com.anythink.expressad.foundation.d.c cVar, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar2) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebView = new WindVaneWebView(n.a().f());
            c0154a.a(windVaneWebView);
            com.anythink.expressad.video.bt.a.c.a();
            String strB = com.anythink.expressad.video.bt.a.c.b();
            c0154a.a(strB);
            com.anythink.expressad.foundation.d.d dVar3 = dVar.Z;
            com.anythink.expressad.video.signal.a.j jVar = (dVar3 == null || (arrayList = dVar3.J) == null || arrayList.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, cVar) : new com.anythink.expressad.video.signal.a.j(null, cVar, dVar.Z.J);
            jVar.a(dVar.S);
            jVar.a(str3);
            jVar.c(strB);
            jVar.a(dVar2);
            jVar.b(dVar.ab);
            g gVar = dVar.new g(str3, cVar, str2, str3, dVar2, dVar.S, dVar);
            windVaneWebView.setWebViewListener(new a(str, str3, c0154a, cVar, dVar, gVar, dVar.ad));
            windVaneWebView.setObject(jVar);
            windVaneWebView.loadUrl(str2);
            dVar.ad.postDelayed(gVar, com.anythink.expressad.exoplayer.f.a);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ void a(d dVar, String str, String str2) {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList;
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2;
        List<String> list;
        try {
            if (dVar.R == null || TextUtils.isEmpty(str2)) {
                if (dVar.G != null) {
                    Handler handler = dVar.ad;
                    if (handler != null) {
                        handler.removeMessages(5);
                    }
                    dVar.b(str);
                    dVar.G.a(str);
                    return;
                }
                return;
            }
            for (com.anythink.expressad.foundation.d.c cVar : dVar.R) {
                if (cVar != null) {
                    String strS = cVar.S();
                    if (TextUtils.isEmpty(strS) || !str2.equals(strS)) {
                        String strI = cVar.I();
                        if (TextUtils.isEmpty(strI) || !str2.equals(strI)) {
                            c.C0131c c0131cM = cVar.M();
                            if (c0131cM == null) {
                                continue;
                            } else {
                                List<c.C0131c.a> listF = c0131cM.f();
                                if (listF != null) {
                                    Iterator<c.C0131c.a> it = listF.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        c.C0131c.a next = it.next();
                                        if (next != null && (list = next.b) != null && list.contains(str2)) {
                                            dVar.R.remove(cVar);
                                            break;
                                        }
                                    }
                                }
                                String strE = c0131cM.e();
                                if (!TextUtils.isEmpty(strE) && str2.equals(strE)) {
                                    copyOnWriteArrayList2 = dVar.R;
                                }
                            }
                        } else {
                            copyOnWriteArrayList2 = dVar.R;
                        }
                    } else {
                        copyOnWriteArrayList2 = dVar.R;
                    }
                    copyOnWriteArrayList2.remove(cVar);
                    break;
                }
            }
            if (dVar.G == null || (copyOnWriteArrayList = dVar.R) == null || copyOnWriteArrayList.size() != 0) {
                return;
            }
            Handler handler2 = dVar.ad;
            if (handler2 != null) {
                handler2.removeMessages(5);
            }
            dVar.b(str);
            dVar.G.a(str);
        } catch (Throwable th) {
            th.getMessage();
            try {
                if (dVar.G != null) {
                    Handler handler3 = dVar.ad;
                    if (handler3 != null) {
                        handler3.removeMessages(5);
                    }
                    dVar.b(str);
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }

    public static /* synthetic */ void a(d dVar, List list) {
        if (dVar.v == null || list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) list.get(i2);
            if (cVar != null) {
                t.a(dVar.v, cVar.ba());
            }
        }
    }

    private void a(Runnable runnable) {
        this.H = runnable;
    }

    private void a(String str) {
        this.V = str;
    }

    private void a(String str, com.anythink.expressad.foundation.d.c cVar, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebView = new WindVaneWebView(n.a().f());
            c0154a.a(windVaneWebView);
            com.anythink.expressad.video.bt.a.c.a();
            String strB = com.anythink.expressad.video.bt.a.c.b();
            c0154a.a(strB);
            com.anythink.expressad.foundation.d.d dVar2 = this.Z;
            com.anythink.expressad.video.signal.a.j jVar = (dVar2 == null || (arrayList = dVar2.J) == null || arrayList.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, cVar) : new com.anythink.expressad.video.signal.a.j(null, cVar, this.Z.J);
            jVar.a(this.S);
            jVar.a(str3);
            jVar.c(strB);
            jVar.a(dVar);
            jVar.b(this.ab);
            g gVar = new g(str3, cVar, str2, str3, dVar, this.S, this);
            windVaneWebView.setWebViewListener(new a(str, str3, c0154a, cVar, this, gVar, this.ad));
            windVaneWebView.setObject(jVar);
            windVaneWebView.loadUrl(str2);
            this.ad.postDelayed(gVar, com.anythink.expressad.exoplayer.f.a);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void a(String str, String str2) {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList;
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2;
        List<String> list;
        try {
            if (this.R == null || TextUtils.isEmpty(str2)) {
                if (this.G != null) {
                    Handler handler = this.ad;
                    if (handler != null) {
                        handler.removeMessages(5);
                    }
                    b(str);
                    this.G.a(str);
                    return;
                }
                return;
            }
            for (com.anythink.expressad.foundation.d.c cVar : this.R) {
                if (cVar != null) {
                    String strS = cVar.S();
                    if (TextUtils.isEmpty(strS) || !str2.equals(strS)) {
                        String strI = cVar.I();
                        if (TextUtils.isEmpty(strI) || !str2.equals(strI)) {
                            c.C0131c c0131cM = cVar.M();
                            if (c0131cM == null) {
                                continue;
                            } else {
                                List<c.C0131c.a> listF = c0131cM.f();
                                if (listF != null) {
                                    Iterator<c.C0131c.a> it = listF.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        c.C0131c.a next = it.next();
                                        if (next != null && (list = next.b) != null && list.contains(str2)) {
                                            this.R.remove(cVar);
                                            break;
                                        }
                                    }
                                }
                                String strE = c0131cM.e();
                                if (!TextUtils.isEmpty(strE) && str2.equals(strE)) {
                                    copyOnWriteArrayList2 = this.R;
                                }
                            }
                        } else {
                            copyOnWriteArrayList2 = this.R;
                        }
                    } else {
                        copyOnWriteArrayList2 = this.R;
                    }
                    copyOnWriteArrayList2.remove(cVar);
                    break;
                }
            }
            if (this.G == null || (copyOnWriteArrayList = this.R) == null || copyOnWriteArrayList.size() != 0) {
                return;
            }
            Handler handler2 = this.ad;
            if (handler2 != null) {
                handler2.removeMessages(5);
            }
            b(str);
            this.G.a(str);
        } catch (Throwable th) {
            th.getMessage();
            try {
                if (this.G != null) {
                    Handler handler3 = this.ad;
                    if (handler3 != null) {
                        handler3.removeMessages(5);
                    }
                    b(str);
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }

    public static /* synthetic */ void a(String str, List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        new StringBuilder("mark cache data: ").append(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) it.next();
            if (cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                com.anythink.expressad.videocommon.a.b(str + "_" + cVar.aZ() + "_" + cVar.Z() + "_" + cVar.M().e());
                com.anythink.expressad.videocommon.a.b(cVar.w(), cVar);
            }
        }
    }

    private void a(List<com.anythink.expressad.foundation.d.c> list) {
        if (this.v == null || list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.anythink.expressad.foundation.d.c cVar = list.get(i2);
            if (cVar != null) {
                t.a(this.v, cVar.ba());
            }
        }
    }

    private void a(List<com.anythink.expressad.foundation.d.c> list, com.anythink.expressad.videocommon.e.d dVar) {
        if (list != null) {
            try {
                Iterator<com.anythink.expressad.foundation.d.c> it = list.iterator();
                while (it.hasNext()) {
                    com.anythink.expressad.foundation.d.c next = it.next();
                    boolean z = true;
                    boolean z3 = next != null;
                    if (next.M() == null) {
                        z = false;
                    }
                    if ((z & z3) && !TextUtils.isEmpty(next.M().e())) {
                        a(next, next.M().e(), this.w, dVar);
                    }
                    if (next != null && !TextUtils.isEmpty(next.ar())) {
                        a(next, next.ar(), this.w, dVar);
                    }
                }
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private static boolean a(com.anythink.expressad.foundation.d.c cVar) {
        try {
            if (com.anythink.expressad.videocommon.a.a.a() == null) {
                return true;
            }
            com.anythink.expressad.videocommon.a.a.a();
            return com.anythink.expressad.videocommon.a.a.a(cVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    private static boolean a(List<com.anythink.expressad.foundation.d.c> list, String str, boolean z, int i2) {
        if (list != null && list.size() > 0) {
            com.anythink.expressad.foundation.d.c cVar = list.get(0);
            if (com.anythink.expressad.videocommon.b.e.a().b(str, false, list.size(), z, i2, list)) {
                if (!z) {
                    if (cVar != null && cVar.j()) {
                        return true;
                    }
                    if ((cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(1)) && cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                        if (l.a().d(str + "_" + cVar.Z() + "_" + cVar.M().e())) {
                        }
                    }
                    return true;
                }
                if (cVar.j()) {
                    return true;
                }
                if (cVar.aB() != null && cVar.aB().size() > 0) {
                    if (cVar.aB().contains(3)) {
                        return true;
                    }
                    if (cVar.ar().equals(cVar.I()) && cVar.aB().contains(2)) {
                        return true;
                    }
                }
                if (l.a().d(str + "_" + cVar.Z() + "_" + cVar.ar())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void b(com.anythink.expressad.foundation.d.c cVar, String str, String str2, com.anythink.expressad.videocommon.e.d dVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Object[] objArr = new Object[5];
            if (!str.contains("zip") || this.ad == null) {
                return;
            }
            String strC = com.anythink.expressad.videocommon.b.i.a().c(str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 17;
            objArr[0] = cVar;
            objArr[1] = strC;
            objArr[2] = str2;
            objArr[3] = dVar;
            objArr[4] = str;
            messageObtain.obj = objArr;
            this.ad.sendMessage(messageObtain);
        } catch (Exception unused) {
        }
    }

    private void b(com.anythink.expressad.foundation.d.d dVar) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        try {
            this.Z = dVar;
            new StringBuilder("V3 data just requested back,requestId ").append(this.Z.f());
            com.anythink.expressad.foundation.d.d dVar2 = this.Z;
            if (dVar2 != null && (arrayList = dVar2.J) != null) {
                arrayList.size();
            }
            c(this.Z);
            this.m = this.Z.f();
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
            CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.clear();
            }
            List<com.anythink.expressad.foundation.d.c> list = this.ag;
            if (list != null) {
                list.clear();
            }
            this.p = false;
            this.q = false;
            synchronized (this.c) {
                if (this.r) {
                    this.r = false;
                }
                this.t = false;
                this.s = false;
                b("exception after load success");
                r();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (this.ad != null) {
            if (TextUtils.isEmpty(str)) {
                this.ad.sendEmptyMessage(4);
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            if (str.contains("exception")) {
                this.ad.sendMessageAtFrontOfQueue(messageObtain);
            } else {
                this.ad.sendMessage(messageObtain);
            }
        }
    }

    private static void b(String str, List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        new StringBuilder("mark cache data: ").append(list.size());
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            if (cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                com.anythink.expressad.videocommon.a.b(str + "_" + cVar.aZ() + "_" + cVar.Z() + "_" + cVar.M().e());
                com.anythink.expressad.videocommon.a.b(cVar.w(), cVar);
            }
        }
    }

    private void b(List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            if (cVar != null) {
                if (!TextUtils.isEmpty(cVar.P())) {
                    com.anythink.expressad.videocommon.b.i.a().b(cVar.P());
                }
                if (cVar.M() != null) {
                    c.C0131c c0131cM = cVar.M();
                    if (!TextUtils.isEmpty(c0131cM.d())) {
                        if (c0131cM.d().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                            com.anythink.expressad.videocommon.b.i.a().b(c0131cM.d(), (i.a) new i(cVar, this, this.w, 313, this.I, false));
                        } else {
                            com.anythink.expressad.videocommon.b.i.a().b(c0131cM.d(), (i.a) null);
                        }
                    }
                    if (!TextUtils.isEmpty(c0131cM.e()) && !c0131cM.e().contains(com.anythink.expressad.foundation.d.c.d)) {
                        if (c0131cM.e().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                            com.anythink.expressad.videocommon.b.i.a().b(c0131cM.e(), (i.a) new i(cVar, this, this.w, 859, this.I, false));
                        } else {
                            com.anythink.expressad.videocommon.b.i.a().b(c0131cM.e(), new C0143d(this, cVar, this.w, this.I));
                        }
                    }
                }
            }
        }
    }

    private boolean b(com.anythink.expressad.foundation.d.c cVar) {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<com.anythink.expressad.foundation.d.c> it = this.aa.iterator();
            while (it.hasNext()) {
                if (it.next().aZ().equals(cVar.aZ())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(List<com.anythink.expressad.foundation.d.c> list, boolean z, int i2) {
        if (list != null && list.size() > 0) {
            com.anythink.expressad.foundation.d.c cVar = list.get(0);
            if (com.anythink.expressad.videocommon.b.e.a().b(this.w, this.U, list.size(), z, i2, list)) {
                if (!z) {
                    if (cVar != null && cVar.j()) {
                        return true;
                    }
                    if ((cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(1)) && cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                        if (l.a().d(this.w + "_" + cVar.Z() + "_" + cVar.M().e())) {
                        }
                    }
                    return true;
                }
                if (cVar.j()) {
                    return true;
                }
                if (cVar.aB() != null && cVar.aB().size() > 0) {
                    if (cVar.aB().contains(3)) {
                        return true;
                    }
                    if (cVar.ar().equals(cVar.I()) && cVar.aB().contains(2)) {
                        return true;
                    }
                }
                if (l.a().d(this.w + "_" + cVar.Z() + "_" + cVar.ar())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void c(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null) {
            return;
        }
        if (!TextUtils.isEmpty(cVar.P())) {
            com.anythink.expressad.videocommon.b.i.a().b(cVar.P());
        }
        if (cVar.M() != null) {
            c.C0131c c0131cM = cVar.M();
            if (!TextUtils.isEmpty(c0131cM.d())) {
                if (c0131cM.d().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                    com.anythink.expressad.videocommon.b.i.a().b(c0131cM.d(), (i.a) new i(cVar, this, this.w, 313, this.I, false));
                } else {
                    com.anythink.expressad.videocommon.b.i.a().b(c0131cM.d(), (i.a) null);
                }
            }
            if (TextUtils.isEmpty(c0131cM.e()) || c0131cM.e().contains(com.anythink.expressad.foundation.d.c.d)) {
                return;
            }
            if (c0131cM.e().contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                com.anythink.expressad.videocommon.b.i.a().b(c0131cM.e(), (i.a) new i(cVar, this, this.w, 859, this.I, false));
            } else {
                com.anythink.expressad.videocommon.b.i.a().b(c0131cM.e(), new C0143d(this, cVar, this.w, this.I));
            }
        }
    }

    private void c(com.anythink.expressad.foundation.d.d dVar) {
        this.Z = dVar;
        new StringBuilder("Campaign request success: ").append(dVar.J.size());
        this.aa = d(dVar);
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass5(dVar));
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            if (TextUtils.isEmpty(this.af)) {
                this.af = b;
            }
            b(this.af);
            return;
        }
        new StringBuilder("onload load success,size:").append(this.aa.size());
        Handler handler = this.ad;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
        if (dVar != null) {
            String strC = dVar.c();
            if (w.b(strC)) {
                com.anythink.expressad.reward.b.a.b = strC;
            }
        }
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2 = this.aa;
        if (copyOnWriteArrayList2 != null) {
            try {
                if (copyOnWriteArrayList2.size() > 0) {
                    this.y += copyOnWriteArrayList2.size();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        com.anythink.expressad.videocommon.e.d dVar2 = this.I;
        if (dVar2 == null || this.y > dVar2.D()) {
            this.y = 0;
        }
        new StringBuilder("onload 算出 下次的offset是:").append(this.y);
        if (w.b(this.w)) {
            com.anythink.expressad.reward.b.a.a(this.w, this.y);
        }
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList3 = this.aa;
        if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
            new StringBuilder("#######onload,save the ad data locally,size:").append(this.aa.size());
        }
        final com.anythink.expressad.foundation.d.c cVar = this.aa.get(0);
        final boolean z = !TextUtils.isEmpty(cVar.ar());
        final int iAp = cVar.ap();
        this.p = false;
        this.q = false;
        synchronized (this.c) {
            if (this.r) {
                this.r = false;
            }
        }
        this.t = false;
        this.s = false;
        c.m.a.a(this.v, z, iAp, this.U, this.T ? com.anythink.expressad.foundation.g.a.aU : 94, this.x, this.w, cVar.Z(), this.aa, new AnonymousClass2(z, cVar, iAp), new c.i() { // from class: com.anythink.expressad.reward.a.d.3
            @Override // com.anythink.expressad.reward.a.c.i
            public final void a(final String str) {
                if (!z && d.this.G != null && d.this.ad != null) {
                    if (cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(1)) {
                        d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                List unused = d.this.ag;
                                boolean unused2 = d.this.U;
                                if (d.this.ad != null) {
                                    d.this.ad.removeMessages(5);
                                }
                                if (d.this.t || d.this.G == null) {
                                    return;
                                }
                                d.this.t = true;
                                d.this.G.a("errorCode: 3202 errorMessage: temp resource download failed");
                            }
                        });
                        return;
                    }
                    return;
                }
                if (iAp == 1) {
                    if (cVar.aB() != null && cVar.aB().size() > 0) {
                        if (cVar.aB().contains(3)) {
                            return;
                        }
                        if (cVar.ar().equals(cVar.I()) && cVar.aB().contains(2)) {
                            return;
                        }
                    }
                    if (d.this.G == null || d.this.ad == null) {
                        return;
                    }
                    d.this.ad.post(new Runnable() { // from class: com.anythink.expressad.reward.a.d.3.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            List unused = d.this.ag;
                            boolean unused2 = d.this.U;
                            if (d.this.ad != null) {
                                d.this.ad.removeMessages(5);
                            }
                            if (d.this.t || d.this.G == null) {
                                return;
                            }
                            d.this.t = true;
                            d.this.G.a("errorCode: 3203 errorMessage: tpl temp resource download failed");
                        }
                    });
                }
            }

            @Override // com.anythink.expressad.reward.a.c.i
            public final void a(String str, String str2, String str3) {
            }
        });
        if (z) {
            c.m.a.a(this.v, cVar, this.x, this.w, cVar.Z(), new AnonymousClass4(cVar, z, iAp));
        }
    }

    private static void c(String str) {
        if (w.b(str)) {
            com.anythink.expressad.reward.b.a.b = str;
        }
    }

    private void c(List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            String strI = cVar.I();
            if (!TextUtils.isEmpty(strI) && !cVar.H()) {
                if (strI.contains(MultiDexExtractor.EXTRACTED_SUFFIX) && strI.contains(m.b)) {
                    com.anythink.expressad.videocommon.b.i.a().b(strI, (i.a) new i(cVar, this, this.w, 497, this.I, TextUtils.isEmpty(com.anythink.expressad.videocommon.b.i.a().c(strI))));
                } else {
                    com.anythink.expressad.videocommon.b.i.a().b(strI, new f(this, cVar, this.w, TextUtils.isEmpty(com.anythink.expressad.videocommon.b.j.a().b(strI))));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> d(com.anythink.expressad.foundation.d.d dVar) throws Throwable {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        boolean z;
        String str;
        File file;
        FileOutputStream fileOutputStream;
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        try {
            com.anythink.expressad.videocommon.e.d dVar2 = this.I;
            if (dVar2 != null) {
                dVar2.A();
            }
            if (dVar != null && (arrayList = dVar.J) != null && arrayList.size() > 0) {
                ArrayList<com.anythink.expressad.foundation.d.c> arrayList2 = dVar.J;
                this.ag = arrayList2;
                if (dVar != null && arrayList2 != null && arrayList2.size() > 0) {
                    ArrayList<com.anythink.expressad.foundation.d.c> arrayList3 = dVar.J;
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        com.anythink.expressad.foundation.d.c cVar = arrayList3.get(i2);
                        cVar.l(this.w);
                        arrayList3.set(i2, cVar);
                    }
                }
                for (int i3 = 0; i3 < arrayList2.size() && i3 < Integer.MAX_VALUE; i3++) {
                    com.anythink.expressad.foundation.d.c cVar2 = arrayList2.get(i3);
                    if (cVar2.H()) {
                        if (!TextUtils.isEmpty(cVar2.G().trim())) {
                            FileOutputStream fileOutputStream2 = null;
                            if (cVar2.w() != 287 && cVar2.w() != 94) {
                                cVar2.w();
                            }
                            try {
                                try {
                                    String strB = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_HTML);
                                    String strA = p.a(cVar2.G());
                                    if (TextUtils.isEmpty(strA)) {
                                        strA = String.valueOf(System.currentTimeMillis());
                                    }
                                    file = new File(strB, strA.concat(".html"));
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                StringBuilder sb = new StringBuilder();
                                sb.append("<script>");
                                com.anythink.expressad.d.b.a.a();
                                sb.append(com.anythink.expressad.d.b.a.b());
                                sb.append("</script>");
                                sb.append(cVar2.G());
                                fileOutputStream.write(sb.toString().getBytes());
                                fileOutputStream.flush();
                                cVar2.j(file.getAbsolutePath());
                                fileOutputStream.close();
                            } catch (Exception e3) {
                                e = e3;
                                fileOutputStream2 = fileOutputStream;
                                e.printStackTrace();
                                cVar2.j("");
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream2 = fileOutputStream;
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.close();
                                }
                                throw th;
                            }
                            File file2 = new File(cVar2.G());
                            if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                                b("mraid resource write fail");
                            }
                        }
                    } else if (cVar2 != null && cVar2.O() != 99) {
                        if (e(cVar2)) {
                            z = (w.a(cVar2.I()) && TextUtils.isEmpty(cVar2.G())) ? false : true;
                        } else if (w.a(cVar2.S())) {
                        }
                        if (z) {
                            if (t.a(cVar2)) {
                                cVar2.i(t.a(this.v, cVar2.ba()) ? 1 : 2);
                            }
                            str = (cVar2.ae() == 1 || !t.a(this.v, cVar2.ba()) || t.a(cVar2)) ? "No video campaign" : a;
                            copyOnWriteArrayList.add(cVar2);
                        }
                        this.af = str;
                    }
                }
                new StringBuilder("onload,return campaign with the following video resources:").append(copyOnWriteArrayList.size());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return copyOnWriteArrayList;
    }

    private void d(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.ar())) {
            return;
        }
        String strAr = cVar.ar();
        com.anythink.expressad.videocommon.b.i.a().b(strAr, (i.a) new i(cVar, this, this.w, 502, this.I, TextUtils.isEmpty(com.anythink.expressad.videocommon.b.i.a().c(strAr))));
    }

    private void d(List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            if (!TextUtils.isEmpty(cVar.bd())) {
                com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.bd(), new c(this, cVar, this.w));
            }
            if (!TextUtils.isEmpty(cVar.be())) {
                com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.be(), new c(this, cVar, this.w));
            }
        }
    }

    private void e(com.anythink.expressad.foundation.d.d dVar) {
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass5(dVar));
    }

    private void e(List<com.anythink.expressad.foundation.d.c> list) {
        List<c.C0131c.a> listF;
        List<String> list2;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (com.anythink.expressad.foundation.d.c cVar : list) {
                        if (cVar.M() != null && cVar.M().f() != null && (listF = cVar.M().f()) != null) {
                            for (c.C0131c.a aVar : listF) {
                                if (aVar != null && (list2 = aVar.b) != null) {
                                    for (String str : list2) {
                                        if (w.b(str)) {
                                            com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(str, new e(this, cVar, this.w));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                if (com.anythink.expressad.a.a) {
                    th.printStackTrace();
                }
            }
        }
    }

    private static boolean e(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null) {
            return false;
        }
        try {
            return cVar.J() == 2;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private void f(List<com.anythink.expressad.foundation.d.c> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    new StringBuilder("onload 开始下载视频素材 size:").append(list.size());
                    this.R.clear();
                    this.R.addAll(list);
                    l.a().a(list);
                    if (com.anythink.expressad.videocommon.b.e.a() != null) {
                        com.anythink.expressad.videocommon.b.e.a().a(this.w, list, 94, new b(this, list.get(0)));
                        com.anythink.expressad.videocommon.b.e.a().d(this.w);
                    }
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
    }

    private void g() {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.R;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        this.R.clear();
    }

    private void g(List<com.anythink.expressad.foundation.d.c> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    this.y += list.size();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        com.anythink.expressad.videocommon.e.d dVar = this.I;
        if (dVar == null || this.y > dVar.D()) {
            this.y = 0;
        }
        new StringBuilder("onload 算出 下次的offset是:").append(this.y);
        if (w.b(this.w)) {
            com.anythink.expressad.reward.b.a.a(this.w, this.y);
        }
    }

    private int h() {
        return this.S;
    }

    private void h(List<com.anythink.expressad.foundation.d.c> list) {
        this.ah = list;
    }

    private static void i() {
    }

    private static void j() {
    }

    private void k() {
        Handler handler = this.ad;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
    }

    private static void l() {
    }

    private static void m() {
    }

    private static void n() {
    }

    private static void o() {
    }

    private static void p() {
    }

    private int q() {
        try {
            int iA = w.b(this.w) ? com.anythink.expressad.reward.b.a.a(this.w) : 0;
            com.anythink.expressad.videocommon.e.d dVar = this.I;
            if (dVar == null) {
                return 0;
            }
            if (iA > dVar.D()) {
                return 0;
            }
            return iA;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private void r() {
        try {
            if (w.b(this.w)) {
                com.anythink.expressad.reward.b.a.a(this.w, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static String s() {
        try {
            return w.b(com.anythink.expressad.reward.b.a.b) ? com.anythink.expressad.reward.b.a.b : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static String t() {
        return "";
    }

    private static void u() {
        try {
            Map<String, Long> map = com.anythink.expressad.foundation.g.a.f.h;
            if (map == null || map.size() <= 0) {
                return;
            }
            com.anythink.expressad.foundation.g.a.f.h.clear();
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    private static void v() {
    }

    private static /* synthetic */ void w() {
    }

    private static /* synthetic */ void x() {
    }

    public final void a(int i2) {
        this.S = i2;
    }

    public final void a(int i2, int i3, int i4) {
        this.W = i2;
        this.X = i3;
        this.Y = i4;
    }

    public final void a(Activity activity, com.anythink.expressad.video.bt.module.b.h hVar, String str, String str2, int i2, String str3, com.anythink.core.common.f.m mVar) {
        Context context;
        try {
            this.F = hVar;
            if (this.v != null && !w.a(this.w)) {
                Context context2 = this.v;
                if (activity == null || activity.isFinishing()) {
                    Log.i("anythink_BaseAdActivity", "Activity is null");
                    context = context2;
                } else {
                    context = activity;
                }
                Intent intent = new Intent(context, (Class<?>) ATRewardVideoActivity.class);
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                intent.putExtra(ATRewardVideoActivity.a, this.w);
                intent.putExtra(com.anythink.expressad.a.y, this.x);
                intent.putExtra(ATRewardVideoActivity.c, str);
                intent.putExtra(ATRewardVideoActivity.d, i2);
                intent.putExtra(ATRewardVideoActivity.e, this.T);
                intent.putExtra(ATRewardVideoActivity.f, this.U);
                intent.putExtra(ATRewardVideoActivity.l, str3);
                intent.putExtra(ATRewardVideoActivity.m, mVar);
                List<com.anythink.expressad.foundation.d.c> listA = com.anythink.expressad.videocommon.b.e.a().a(this.w);
                boolean z = false;
                new StringBuilder("cur showing Offer requestId").append(listA.get(0).Z());
                if (listA == null || listA.size() <= 0) {
                    com.anythink.expressad.video.bt.module.b.h hVar2 = this.F;
                    if (hVar2 != null) {
                        hVar2.a("load failed");
                        return;
                    }
                } else {
                    new StringBuilder("can show data: ").append(listA.size());
                    com.anythink.expressad.foundation.d.c cVar = listA.get(0);
                    if (cVar != null) {
                        this.n = cVar.Z();
                    }
                    if (cVar != null && !TextUtils.isEmpty(cVar.ar())) {
                        z = true;
                    }
                }
                intent.putExtra(ATRewardVideoActivity.g, z);
                if (this.T) {
                    intent.putExtra(ATRewardVideoActivity.i, this.W);
                    intent.putExtra(ATRewardVideoActivity.j, this.X);
                    intent.putExtra(ATRewardVideoActivity.k, this.Y);
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra(ATRewardVideoActivity.b, str2);
                }
                e.a.a.a(this.x, this.w, this.I);
                context.startActivity(intent);
                return;
            }
            com.anythink.expressad.video.bt.module.b.h hVar3 = this.F;
            if (hVar3 != null) {
                hVar3.a("context or unitid is null");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.anythink.expressad.video.bt.module.b.h hVar4 = this.F;
            if (hVar4 != null) {
                hVar4.a("show failed, exception is " + e2.getMessage());
            }
        }
    }

    public final void a(com.anythink.expressad.foundation.d.d dVar) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        this.z = 1;
        this.B = 8;
        this.C = true;
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        List<com.anythink.expressad.foundation.d.c> list = this.ag;
        if (list != null) {
            list.clear();
        }
        this.p = false;
        this.q = false;
        synchronized (this.c) {
            if (this.r) {
                this.r = false;
            }
        }
        this.t = false;
        this.s = false;
        if (this.v == null) {
            b("Context is null");
            return;
        }
        if (w.a(this.w)) {
            b("UnitId is null");
            return;
        }
        if (this.I == null) {
            b("RewardUnitSetting is null");
            return;
        }
        try {
            Map<String, Long> map = com.anythink.expressad.foundation.g.a.f.h;
            if (map != null && map.size() > 0) {
                com.anythink.expressad.foundation.g.a.f.h.clear();
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
        try {
            this.Z = dVar;
            new StringBuilder("V3 data just requested back,requestId ").append(this.Z.f());
            com.anythink.expressad.foundation.d.d dVar2 = this.Z;
            if (dVar2 != null && (arrayList = dVar2.J) != null) {
                arrayList.size();
            }
            c(this.Z);
            this.m = this.Z.f();
        } catch (Exception e3) {
            if (com.anythink.expressad.a.a) {
                e3.printStackTrace();
            }
            CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2 = this.aa;
            if (copyOnWriteArrayList2 != null) {
                copyOnWriteArrayList2.clear();
            }
            List<com.anythink.expressad.foundation.d.c> list2 = this.ag;
            if (list2 != null) {
                list2.clear();
            }
            this.p = false;
            this.q = false;
            synchronized (this.c) {
                if (this.r) {
                    this.r = false;
                }
                this.t = false;
                this.s = false;
                b("exception after load success");
                r();
            }
        }
    }

    @Override // com.anythink.expressad.reward.a.a
    public final void a(com.anythink.expressad.reward.a.b bVar) {
        this.G = bVar;
    }

    public final void a(com.anythink.expressad.videocommon.e.d dVar) {
        try {
            this.I = dVar;
            if (dVar == null || dVar.V() * 1000 == com.anythink.expressad.foundation.g.a.cq) {
                return;
            }
            com.anythink.expressad.foundation.g.a.cq = this.I.V() * 1000;
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(boolean z) {
        this.T = z;
    }

    @Override // com.anythink.expressad.reward.a.a
    public final boolean a() {
        return false;
    }

    public final boolean a(List<com.anythink.expressad.foundation.d.c> list, boolean z, int i2) {
        return b(list, z, i2);
    }

    @Override // com.anythink.expressad.reward.a.a
    public final void b() {
    }

    public final void b(boolean z) {
        this.U = z;
    }

    public final String c(boolean z) {
        List<com.anythink.expressad.foundation.d.c> listA;
        com.anythink.expressad.foundation.d.c cVar;
        if (!z) {
            return this.m;
        }
        if (TextUtils.isEmpty(this.n) && (listA = com.anythink.expressad.videocommon.b.e.a().a(this.w)) != null && listA.size() > 0 && (cVar = listA.get(0)) != null) {
            this.n = cVar.Z();
        }
        return this.n;
    }

    @Override // com.anythink.expressad.reward.a.a
    public final boolean c() {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return false;
        }
        return b(this.aa, !TextUtils.isEmpty(r0.ar()), this.aa.get(0).ap());
    }

    @Override // com.anythink.expressad.reward.a.a
    public final void d() {
    }

    public final void d(boolean z) {
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList;
        if (z || (copyOnWriteArrayList = this.aa) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        com.anythink.expressad.videocommon.a.a.a();
    }

    public final String e() {
        return this.w;
    }

    public final void e(boolean z) {
        if (z) {
            List<com.anythink.expressad.foundation.d.c> list = this.ah;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (com.anythink.expressad.foundation.d.c cVar : this.ah) {
                if (cVar != null) {
                    cVar.l(0);
                    if (cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                        l.a().c(this.w + "_" + cVar.Z() + "_" + cVar.M().e(), false);
                    }
                }
            }
            return;
        }
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar2 : this.aa) {
            if (cVar2 != null) {
                cVar2.l(0);
                if (cVar2.M() != null && !TextUtils.isEmpty(cVar2.M().e())) {
                    l.a().c(this.w + "_" + cVar2.Z() + "_" + cVar2.M().e(), false);
                }
            }
        }
    }

    public final CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> f() {
        return this.aa;
    }

    public final boolean f(boolean z) {
        if (z) {
            List<com.anythink.expressad.foundation.d.c> list = this.ah;
            if (list == null || list.size() <= 0) {
                return false;
            }
            for (com.anythink.expressad.foundation.d.c cVar : this.ah) {
                if (cVar != null) {
                    cVar.l(1);
                    if (cVar.M() != null && !TextUtils.isEmpty(cVar.M().e())) {
                        l.a().c(this.w + "_" + cVar.Z() + "_" + cVar.M().e(), true);
                    }
                }
            }
            return true;
        }
        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.aa;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        for (com.anythink.expressad.foundation.d.c cVar2 : this.aa) {
            if (cVar2 != null) {
                cVar2.l(1);
                if (cVar2.M() != null && !TextUtils.isEmpty(cVar2.M().e())) {
                    l.a().c(this.w + "_" + cVar2.Z() + "_" + cVar2.M().e(), true);
                }
            }
        }
        return true;
    }
}
