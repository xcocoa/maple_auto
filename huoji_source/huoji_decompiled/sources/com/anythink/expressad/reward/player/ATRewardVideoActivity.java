package com.anythink.expressad.reward.player;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.anythink.core.common.a.l;
import com.anythink.core.common.f.m;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.foundation.d.p;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.module.ATTempContainer;
import com.anythink.expressad.video.bt.module.AnythinkBTContainer;
import com.anythink.expressad.video.bt.module.b.h;
import com.anythink.expressad.video.signal.activity.AbstractJSActivity;
import com.anythink.expressad.videocommon.a;
import com.anythink.expressad.videocommon.b.e;
import com.anythink.expressad.videocommon.b.n;
import com.anythink.expressad.videocommon.e.d;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ATRewardVideoActivity extends AbstractJSActivity {
    public static String a = "unitId";
    public static String b = "userId";
    public static String c = "reward";
    public static String d = "mute";
    public static String e = "isIV";
    public static String f = "isBid";
    public static String g = "isBigOffer";
    public static String h = "hasRelease";
    public static String i = "ivRewardMode";
    public static String j = "ivRewardValueType";
    public static String k = "ivRewardValue";
    public static String l = "extraData";
    public static String m = "baserequestInfo";
    private static final String v = "ATRewardVideoActivity";
    private int D;
    private int E;
    private int F;
    private h I;
    private d J;
    private com.anythink.expressad.videocommon.b.c M;
    private com.anythink.expressad.foundation.d.c N;
    private List<com.anythink.expressad.videocommon.b.c> O;
    private List<com.anythink.expressad.foundation.d.c> P;
    private ATTempContainer Q;
    private AnythinkBTContainer R;
    private WindVaneWebView S;
    private com.anythink.expressad.video.bt.module.a.a T;
    private String U;
    private String V;
    private boolean W;
    public m n;
    public com.anythink.expressad.foundation.d.c o;
    public long p;
    public long q;
    public long r;
    private String w;
    private String x;
    private String y;
    private com.anythink.expressad.videocommon.c.c z;
    private int A = 2;
    private boolean B = false;
    private boolean C = false;
    private boolean G = false;
    private boolean H = false;
    private boolean K = false;
    private boolean L = false;
    private int X = 1;
    private int Y = 0;
    private int Z = 0;
    private int aa = 0;
    private int ab = 0;
    private int ac = 0;
    private int ad = 0;
    private com.anythink.expressad.video.dynview.f.a ae = new com.anythink.expressad.video.dynview.f.a() { // from class: com.anythink.expressad.reward.player.ATRewardVideoActivity.1
        @Override // com.anythink.expressad.video.dynview.f.a
        public final void a(Map<String, Object> map) {
            if (map.containsKey("mute")) {
                ATRewardVideoActivity.this.A = ((Integer) map.get("mute")).intValue();
            }
            if (map.containsKey(RequestParameters.POSITION)) {
                int iIntValue = ((Integer) map.get(RequestParameters.POSITION)).intValue();
                if (ATRewardVideoActivity.this.P == null || ATRewardVideoActivity.this.P.size() <= 0 || iIntValue <= 0) {
                    return;
                }
                ATRewardVideoActivity aTRewardVideoActivity = ATRewardVideoActivity.this;
                aTRewardVideoActivity.N = (com.anythink.expressad.foundation.d.c) aTRewardVideoActivity.P.get(iIntValue);
                ATRewardVideoActivity.b(ATRewardVideoActivity.this);
                int i2 = iIntValue - 1;
                if (ATRewardVideoActivity.this.P.get(i2) != null) {
                    ATRewardVideoActivity aTRewardVideoActivity2 = ATRewardVideoActivity.this;
                    ATRewardVideoActivity.b(aTRewardVideoActivity2, ((com.anythink.expressad.foundation.d.c) aTRewardVideoActivity2.P.get(i2)).bi());
                }
                ATRewardVideoActivity aTRewardVideoActivity3 = ATRewardVideoActivity.this;
                ATRewardVideoActivity.this.N.b(aTRewardVideoActivity3.a(aTRewardVideoActivity3.N.i(), ATRewardVideoActivity.this.X));
                ATRewardVideoActivity aTRewardVideoActivity4 = ATRewardVideoActivity.this;
                aTRewardVideoActivity4.b(aTRewardVideoActivity4.N);
            }
        }
    };
    private com.anythink.expressad.video.dynview.f.d af = new com.anythink.expressad.video.dynview.f.d() { // from class: com.anythink.expressad.reward.player.ATRewardVideoActivity.2
        @Override // com.anythink.expressad.video.dynview.f.d
        public final void a() {
            if (ATRewardVideoActivity.this.R != null) {
                new com.anythink.expressad.video.dynview.h.b().d(ATRewardVideoActivity.this.R);
            }
            ATRewardVideoActivity.f(ATRewardVideoActivity.this);
            ATRewardVideoActivity.this.b();
            if (ATRewardVideoActivity.this.Q != null) {
                ATRewardVideoActivity.this.Q.setNotchPadding(ATRewardVideoActivity.this.ad, ATRewardVideoActivity.this.Z, ATRewardVideoActivity.this.ab, ATRewardVideoActivity.this.aa, ATRewardVideoActivity.this.ac);
            }
        }

        @Override // com.anythink.expressad.video.dynview.f.d
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            if (cVar == null) {
                ATRewardVideoActivity.this.b("campaign is null");
                return;
            }
            if (ATRewardVideoActivity.this.R != null) {
                new com.anythink.expressad.video.dynview.h.b().d(ATRewardVideoActivity.this.R);
            }
            ATRewardVideoActivity.this.N = cVar;
            ATRewardVideoActivity aTRewardVideoActivity = ATRewardVideoActivity.this;
            aTRewardVideoActivity.b(aTRewardVideoActivity.N);
        }
    };
    public b s = new b() { // from class: com.anythink.expressad.reward.player.ATRewardVideoActivity.3
        public String a = "1";

        @Override // com.anythink.expressad.reward.player.b
        public final String a() {
            return this.a;
        }

        @Override // com.anythink.expressad.reward.player.c
        public final void b() {
        }

        @Override // com.anythink.expressad.reward.player.c
        public final void c() {
            this.a = "1";
            ATRewardVideoActivity.this.a("4", 0L);
        }

        @Override // com.anythink.expressad.reward.player.c
        public final void d() {
            if (TextUtils.equals(this.a, "1")) {
                this.a = "2";
            }
            ATRewardVideoActivity aTRewardVideoActivity = ATRewardVideoActivity.this;
            StringBuilder sb = new StringBuilder("5-");
            ATRewardVideoActivity aTRewardVideoActivity2 = ATRewardVideoActivity.this;
            sb.append(aTRewardVideoActivity2.q <= aTRewardVideoActivity2.r ? "2" : "1");
            aTRewardVideoActivity.a(sb.toString(), 0L);
        }

        @Override // com.anythink.expressad.reward.player.c
        public final void e() {
            if (TextUtils.equals(this.a, "1")) {
                this.a = "3";
                ATRewardVideoActivity aTRewardVideoActivity = ATRewardVideoActivity.this;
                StringBuilder sb = new StringBuilder("6-");
                ATRewardVideoActivity aTRewardVideoActivity2 = ATRewardVideoActivity.this;
                sb.append(aTRewardVideoActivity2.q <= aTRewardVideoActivity2.r ? "2" : "1");
                aTRewardVideoActivity.a(sb.toString(), 0L);
            }
        }

        @Override // com.anythink.expressad.reward.player.c
        public final void f() {
        }
    };

    public static final class a implements Runnable {
        private final List<com.anythink.expressad.videocommon.b.c> a;
        private final String b;
        private final String c;

        public a(List<com.anythink.expressad.videocommon.b.c> list, String str, String str2) {
            this.a = list;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                List<com.anythink.expressad.videocommon.b.c> list = this.a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.anythink.expressad.videocommon.b.c cVar : this.a) {
                    if (cVar != null && cVar.n() != null) {
                        com.anythink.expressad.foundation.d.c cVarN = cVar.n();
                        String str = cVarN.Z() + cVarN.aZ() + cVarN.S();
                        n nVarC = e.a().c(this.b);
                        if (nVarC != null) {
                            try {
                                nVarC.b(str);
                            } catch (Exception unused) {
                            }
                        }
                        if (cVarN != null && cVarN.M() != null) {
                            if (!TextUtils.isEmpty(cVarN.M().e())) {
                                com.anythink.expressad.videocommon.a.b(this.b + "_" + cVarN.aZ() + "_" + this.c + "_" + cVarN.M().e());
                                com.anythink.expressad.videocommon.a.b(cVarN.w(), cVarN);
                            }
                            if (!TextUtils.isEmpty(cVarN.ar())) {
                                com.anythink.expressad.videocommon.a.b(this.b + "_" + this.c + "_" + cVarN.ar());
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i2, int i3) {
        List<com.anythink.expressad.foundation.d.c> list = this.P;
        if (list == null || list.size() == 0) {
            return i2;
        }
        int iBi = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.P.size(); i5++) {
            if (this.P.get(0) != null) {
                if (i5 == 0) {
                    i4 = this.P.get(0).i();
                }
                iBi += this.P.get(i5).bi();
            }
        }
        if (i3 == 1) {
            if (i2 == 0) {
                if (iBi >= 45) {
                    return 45;
                }
            } else if (iBi > i2) {
                if (i2 > 45) {
                    return 45;
                }
                return i2;
            }
            return iBi;
        }
        int iBi2 = 0;
        for (int i6 = 0; i6 < i3 - 1; i6++) {
            if (this.P.get(i6) != null) {
                iBi2 += this.P.get(i6).bi();
            }
        }
        if (i4 > iBi2) {
            return i4 - iBi2;
        }
        return 0;
    }

    private static WindVaneWebView a(String str) {
        a.C0154a c0154aA = com.anythink.expressad.videocommon.a.a(str);
        if (c0154aA != null) {
            return c0154aA.a();
        }
        return null;
    }

    private void a(int i2) {
        try {
            com.anythink.expressad.foundation.d.c cVar = this.N;
            if (cVar == null || cVar.f() != 2) {
                return;
            }
            getWindow().getDecorView().setBackgroundDrawable(new ColorDrawable(0));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.Q.getLayoutParams();
            int iB = t.b(this, 58.0f);
            int iB2 = t.b(this, 104.0f);
            if (this.N.M().c() != 0) {
                if (this.N.M().c() == 2) {
                    layoutParams.setMargins(iB2, iB, iB2, iB);
                }
                layoutParams.setMargins(iB, iB2, iB, iB2);
            } else if (i2 == 2) {
                layoutParams.setMargins(iB2, iB, iB2, iB);
            } else {
                layoutParams.setMargins(iB, iB2, iB, iB2);
            }
            this.Q.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void a(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null) {
            b("campaign is less");
            return;
        }
        int iA = a(cVar.i(), this.X);
        this.N = cVar;
        cVar.m();
        this.X = 1;
        this.N.b(iA);
        b(this.N);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j2) {
        String string;
        String string2;
        try {
            m mVar = this.n;
            String str2 = mVar != null ? mVar.d : "";
            String str3 = mVar != null ? mVar.b : "";
            String str4 = mVar != null ? mVar.c : "";
            if (mVar != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.n.j);
                string = sb.toString();
            } else {
                string = "";
            }
            if (this.n != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.n.f);
                string2 = sb2.toString();
            } else {
                string2 = "";
            }
            com.anythink.expressad.foundation.d.c cVar = this.o;
            String strAZ = cVar != null ? cVar.aZ() : "";
            com.anythink.expressad.foundation.d.c cVar2 = this.o;
            com.anythink.core.common.n.e.a(str, str2, str3, str4, string, string2, 2, 1, strAZ, "20", !TextUtils.isEmpty(cVar2 != null ? cVar2.S() : ""), j2);
        } catch (Throwable unused) {
        }
    }

    private void a(List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null) {
            b("no available campaign");
            return;
        }
        if (list.size() == 0) {
            b("no available campaign");
            return;
        }
        if ((list.get(0) != null ? list.get(0).k() : 0) != 5) {
            c();
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            if (cVar != null) {
                this.Y += cVar.bi();
            }
        }
        com.anythink.expressad.foundation.d.c cVar2 = list.get(0);
        if (cVar2 == null) {
            b("campaign is less");
            return;
        }
        int iA = a(cVar2.i(), this.X);
        this.N = cVar2;
        cVar2.m();
        this.X = 1;
        this.N.b(iA);
        b(this.N);
    }

    public static /* synthetic */ int b(ATRewardVideoActivity aTRewardVideoActivity) {
        int i2 = aTRewardVideoActivity.X;
        aTRewardVideoActivity.X = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int b(ATRewardVideoActivity aTRewardVideoActivity, int i2) {
        int i3 = aTRewardVideoActivity.Y - i2;
        aTRewardVideoActivity.Y = i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        List<com.anythink.expressad.foundation.d.c> list;
        p pVar;
        List<com.anythink.expressad.foundation.d.c> list2;
        int iC = c("anythink_temp_container");
        if (iC < 0) {
            b("no id anythink_bt_container in anythink_more_offer_activity layout");
        }
        ATTempContainer aTTempContainer = (ATTempContainer) findViewById(iC);
        this.Q = aTTempContainer;
        if (aTTempContainer == null) {
            b("env error");
        }
        List<com.anythink.expressad.foundation.d.c> list3 = this.P;
        if (list3 == null || list3.size() <= 0 || !this.P.get(0).j()) {
            this.Q.setVisibility(0);
        } else {
            new com.anythink.expressad.video.dynview.h.b();
            com.anythink.expressad.video.dynview.h.b.e(this.Q);
        }
        a(-1);
        this.Q.setVisibility(0);
        this.Q.setActivity(this);
        this.Q.setBidCampaign(this.C);
        this.Q.setBigOffer(this.G);
        this.Q.setUnitId(this.w);
        this.Q.setCampaign(this.N);
        if (this.N.k() == 5 && (list2 = this.P) != null && list2.size() > 1) {
            View viewFindViewById = findViewById(c("anythink_reward_root_container"));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(-16777216);
            }
            this.Q.removeAllViews();
            this.Q.setCampOrderViewData(this.P, this.Y);
            this.Q.setCamPlayOrderCallback(this.ae, this.X);
        }
        this.Q.setCampaignDownLoadTask(this.M);
        this.Q.setIV(this.B);
        com.anythink.expressad.foundation.d.c cVar = this.N;
        if (cVar == null || cVar.f() != 2) {
            this.Q.setIVRewardEnable(this.D, this.E, this.F);
        } else {
            this.Q.setIVRewardEnable(0, 0, 0);
        }
        this.Q.setMute(this.A);
        this.Q.setDeveloperExtraData(this.V);
        com.anythink.expressad.foundation.d.c cVar2 = this.N;
        if (((cVar2 != null && (pVar = cVar2.aH) != null) || ((list = this.P) != null && list.size() > 0 && this.P.get(0) != null && (pVar = this.P.get(0).aH) != null)) && !TextUtils.isEmpty(pVar.b()) && pVar.a() > 0) {
            com.anythink.expressad.videocommon.c.c cVar3 = new com.anythink.expressad.videocommon.c.c(pVar.b(), pVar.a());
            if (cVar3.b() < 0) {
                cVar3.a(1);
            }
            this.z = cVar3;
        }
        this.Q.setReward(this.z);
        this.Q.setRewardUnitSetting(this.J);
        this.Q.setPlacementId(this.x);
        this.Q.setUserId(this.y);
        this.Q.setShowRewardListener(this.I);
        this.Q.setTempEventListener(this.s);
        this.Q.init(this);
        this.Q.onCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.expressad.foundation.d.c cVarN;
        try {
            List<com.anythink.expressad.videocommon.b.c> list = this.O;
            if (list != null && list.size() > 0) {
                for (com.anythink.expressad.videocommon.b.c cVar2 : this.O) {
                    if (cVar2 != null && (cVarN = cVar2.n()) != null && TextUtils.equals(cVarN.aZ(), cVar.aZ()) && TextUtils.equals(cVarN.Z(), cVar.Z())) {
                        this.M = cVar2;
                    }
                }
            }
            this.G = true;
            b();
            ATTempContainer aTTempContainer = this.Q;
            if (aTTempContainer != null) {
                aTTempContainer.setNotchPadding(this.ad, this.Z, this.ab, this.aa, this.ac);
            }
        } catch (Exception e2) {
            e2.getMessage();
            b("more offer to one offer exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        h hVar = this.I;
        if (hVar != null) {
            hVar.a(str);
        }
        finish();
    }

    private int c(String str) {
        return i.a(getApplicationContext(), str, "id");
    }

    private void c() {
        p pVar;
        int iC = c("anythink_bt_container");
        if (iC < 0) {
            b("no anythink_webview_framelayout in anythink_more_offer_activity layout");
        }
        AnythinkBTContainer anythinkBTContainer = (AnythinkBTContainer) findViewById(iC);
        this.R = anythinkBTContainer;
        if (anythinkBTContainer == null) {
            b("env error");
        }
        this.R.setVisibility(0);
        com.anythink.expressad.video.bt.module.a.a aVarD = d();
        this.T = aVarD;
        this.R.setBTContainerCallback(aVarD);
        this.R.setShowRewardVideoListener(this.I);
        this.R.setChoiceOneCallback(this.af);
        this.R.setCampaigns(this.P);
        this.R.setCampaignDownLoadTasks(this.O);
        this.R.setRewardUnitSetting(this.J);
        this.R.setUnitId(this.w);
        this.R.setPlacementId(this.x);
        this.R.setUserId(this.y);
        this.R.setActivity(this);
        this.R.setDeveloperExtraData(this.V);
        com.anythink.expressad.foundation.d.c cVar = this.N;
        if (((cVar != null && (pVar = cVar.aH) != null) || (this.P.get(0) != null && (pVar = this.P.get(0).aH) != null)) && !TextUtils.isEmpty(pVar.b()) && pVar.a() > 0) {
            com.anythink.expressad.videocommon.c.c cVar2 = new com.anythink.expressad.videocommon.c.c(pVar.b(), pVar.a());
            if (cVar2.b() < 0) {
                cVar2.a(1);
            }
            this.z = cVar2;
        }
        this.R.setReward(this.z);
        this.R.setIVRewardEnable(this.D, this.E, this.F);
        this.R.setIV(this.B);
        this.R.setMute(this.A);
        this.R.setJSFactory((com.anythink.expressad.video.signal.factory.b) this.u);
        this.R.init(this);
        this.R.onCreate();
    }

    private static void c(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            if (!TextUtils.isEmpty(cVar.be())) {
                com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).c(cVar.be());
            }
            if (TextUtils.isEmpty(cVar.bd())) {
                return;
            }
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).c(cVar.bd());
        }
    }

    private int d(String str) {
        return i.a(getApplicationContext(), str, "layout");
    }

    private com.anythink.expressad.video.bt.module.a.a d() {
        if (this.T == null) {
            this.T = new com.anythink.expressad.video.bt.module.a.a() { // from class: com.anythink.expressad.reward.player.ATRewardVideoActivity.4
                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void a() {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.a();
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void a(com.anythink.expressad.foundation.d.c cVar) {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.a(cVar);
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void a(String str) {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.a(str);
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void a(boolean z, int i2) {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.a(z, i2);
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void a(boolean z, com.anythink.expressad.videocommon.c.c cVar) {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.a(z, cVar);
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void b() {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.b();
                    }
                }

                @Override // com.anythink.expressad.video.bt.module.a.a
                public final void c() {
                    if (ATRewardVideoActivity.this.I != null) {
                        ATRewardVideoActivity.this.I.c();
                    }
                }
            };
        }
        return this.T;
    }

    private void e() {
        try {
            List<com.anythink.expressad.foundation.d.c> list = this.P;
            if (list != null && list.size() > 0) {
                Iterator<com.anythink.expressad.foundation.d.c> it = this.P.iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
            }
            com.anythink.expressad.foundation.d.c cVar = this.N;
            if (cVar != null) {
                c(cVar);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ boolean f(ATRewardVideoActivity aTRewardVideoActivity) {
        aTRewardVideoActivity.G = true;
        return true;
    }

    @Override // com.anythink.expressad.activity.ATBaseActivity
    public final void a(int i2, int i3, int i4, int i5, int i6) {
        this.Z = i3;
        this.ab = i4;
        this.aa = i5;
        this.ac = i6;
        this.ad = i2;
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.setNotchPadding(i2, i3, i4, i5, i6);
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.setNotchPadding(i2, i3, i4, i5, i6);
        }
        com.anythink.expressad.video.dynview.a.b.e = i2;
        com.anythink.expressad.video.dynview.a.b.a = i3;
        com.anythink.expressad.video.dynview.a.b.b = i4;
        com.anythink.expressad.video.dynview.a.b.c = i5;
        com.anythink.expressad.video.dynview.a.b.d = i6;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        int iA = i.a(this, "anythink_reward_activity_close", i.f);
        int iA2 = i.a(this, "anythink_reward_activity_stay", i.f);
        if (iA > 1 && iA2 > 1) {
            overridePendingTransition(iA2, iA);
        }
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onDestroy();
            this.Q = null;
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onDestroy();
            this.R = null;
        }
        com.anythink.expressad.foundation.f.b.a().c(this.w + "_1");
        com.anythink.expressad.foundation.f.b.a().c(this.w + "_2");
    }

    @Override // com.anythink.expressad.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onBackPressed();
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onBackPressed();
        }
    }

    @Override // com.anythink.expressad.video.signal.activity.AbstractJSActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.Q != null) {
            a(configuration.orientation);
            this.Q.onConfigurationChanged(configuration);
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onConfigurationChanged(configuration);
        }
    }

    @Override // com.anythink.expressad.activity.ATBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        List<com.anythink.expressad.foundation.d.c> listA;
        List<com.anythink.expressad.videocommon.b.c> list;
        String strAr = "";
        super.onCreate(bundle);
        com.anythink.expressad.a.x = true;
        com.anythink.expressad.foundation.b.a.c().b(this);
        try {
            Intent intent = getIntent();
            String stringExtra = intent.getStringExtra(a);
            this.w = stringExtra;
            if (stringExtra != null) {
                try {
                    listA = e.a().a(this.w);
                } catch (Throwable unused) {
                }
            } else {
                listA = null;
            }
            this.o = listA != null ? listA.get(0) : null;
            Serializable serializableExtra = intent.getSerializableExtra(m);
            this.n = serializableExtra instanceof m ? (m) serializableExtra : null;
            a("1", 0L);
            int iA = i.a(getApplicationContext(), "anythink_more_offer_activity", "layout");
            if (iA < 0) {
                b("no anythink_more_offer_activity layout");
                return;
            }
            setContentView(iA);
            if (TextUtils.isEmpty(this.w)) {
                b("data empty error");
                return;
            }
            this.I = com.anythink.expressad.reward.b.a.c.get(this.w);
            this.x = intent.getStringExtra(com.anythink.expressad.a.y);
            this.z = com.anythink.expressad.videocommon.c.c.b(intent.getStringExtra(c));
            this.y = intent.getStringExtra(b);
            this.A = intent.getIntExtra(d, 2);
            this.B = intent.getBooleanExtra(e, false);
            this.C = intent.getBooleanExtra(f, false);
            this.V = intent.getStringExtra(l);
            if (this.B) {
                this.D = intent.getIntExtra(i, 0);
                this.E = intent.getIntExtra(j, 0);
                this.F = intent.getIntExtra(k, 0);
            }
            com.anythink.expressad.video.signal.factory.b bVar = new com.anythink.expressad.video.signal.factory.b(this);
            this.u = bVar;
            a(bVar);
            if (this.I == null) {
                b("showRewardListener is null");
                return;
            }
            d dVarA = com.anythink.expressad.reward.a.e.a().a(this.x, this.w);
            this.J = dVarA;
            if (dVarA == null) {
                d dVarA2 = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.w);
                this.J = dVarA2;
                if (dVarA2 == null) {
                    this.J = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.w, this.B);
                }
            }
            d dVar = this.J;
            if (dVar != null) {
                this.z.a(dVar.m());
                this.z.a(this.J.n());
            }
            com.anythink.expressad.videocommon.c.c cVar = this.z;
            if (cVar != null && cVar.b() <= 0) {
                this.z.a(1);
            }
            int iA2 = i.a(this, "anythink_reward_activity_open", i.f);
            int iA3 = i.a(this, "anythink_reward_activity_stay", i.f);
            if (iA2 > 1 && iA3 > 1) {
                overridePendingTransition(iA2, iA3);
            }
            if (bundle != null) {
                try {
                    this.L = bundle.getBoolean(h);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.O = e.a().b(this.w);
            boolean booleanExtra = intent.getBooleanExtra(g, false);
            this.G = booleanExtra;
            if (!booleanExtra) {
                List<com.anythink.expressad.videocommon.b.c> list2 = this.O;
                if (list2 != null && list2.size() > 0) {
                    this.M = this.O.get(0);
                }
                com.anythink.expressad.videocommon.b.c cVar2 = this.M;
                if (cVar2 != null) {
                    this.N = cVar2.n();
                    this.M.a(true);
                    this.M.b(false);
                }
                if (this.M == null || this.N == null || this.z == null) {
                    b("data empty error");
                }
                b();
                return;
            }
            List<com.anythink.expressad.foundation.d.c> listA2 = e.a().a(this.w);
            this.P = listA2;
            this.U = "";
            if (listA2 != null && listA2.size() > 0) {
                com.anythink.expressad.foundation.d.c cVar3 = this.P.get(0);
                strAr = cVar3.ar();
                this.U = cVar3.Z();
            }
            a.C0154a c0154aA = com.anythink.expressad.videocommon.a.a(this.w + "_" + this.U + "_" + strAr);
            WindVaneWebView windVaneWebViewA = c0154aA != null ? c0154aA.a() : null;
            this.S = windVaneWebViewA;
            if (windVaneWebViewA != null) {
                c();
                return;
            }
            if (this.M == null && (list = this.O) != null && list.size() > 0) {
                this.M = this.O.get(0);
            }
            if (this.M == null) {
                e eVarA = e.a();
                int i2 = this.B ? com.anythink.expressad.foundation.g.a.aU : 94;
                String str = this.w;
                boolean z = this.C;
                n nVarC = eVarA.c(str);
                this.M = nVarC != null ? nVarC.b(i2, z) : null;
            }
            com.anythink.expressad.videocommon.b.c cVar4 = this.M;
            if (cVar4 != null) {
                this.N = cVar4.n();
                this.M.a(true);
                this.M.b(false);
            }
            if (this.M == null || this.N == null || this.z == null) {
                b("data empty error");
            }
            this.G = false;
            com.anythink.expressad.videocommon.a.a.a();
            List<com.anythink.expressad.foundation.d.c> listA3 = com.anythink.expressad.videocommon.a.a.a(this.P);
            if (listA3 == null) {
                b("no available campaign");
                return;
            }
            int size = listA3.size();
            if (size == 0) {
                b("no available campaign");
                return;
            }
            if (listA3.get(0) == null || !listA3.get(0).j()) {
                b();
                return;
            }
            if (size != 1) {
                a(listA3);
                return;
            }
            com.anythink.expressad.foundation.d.c cVar5 = listA3.get(0);
            this.N = cVar5;
            if (cVar5 != null) {
                cVar5.m();
            }
            b(this.N);
        } catch (Throwable th) {
            b("onCreate error".concat(String.valueOf(th)));
        }
    }

    @Override // com.anythink.expressad.video.signal.activity.AbstractJSActivity, com.anythink.expressad.activity.ATBaseActivity, android.app.Activity
    public void onDestroy() {
        try {
            super.onDestroy();
        } catch (Throwable unused) {
        }
        try {
            List<com.anythink.expressad.foundation.d.c> list = this.P;
            if (list != null && list.size() > 0) {
                Iterator<com.anythink.expressad.foundation.d.c> it = this.P.iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
            }
            com.anythink.expressad.foundation.d.c cVar = this.N;
            if (cVar != null) {
                c(cVar);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        com.anythink.expressad.video.module.b.a.a(this.w);
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onDestroy();
            this.Q = null;
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onDestroy();
            this.R = null;
        }
        this.ae = null;
        this.af = null;
        com.anythink.expressad.foundation.g.h.a.a().execute(new a(this.O, this.w, this.U));
        List<com.anythink.expressad.foundation.d.c> list2 = this.P;
        com.anythink.expressad.foundation.d.c cVar2 = (list2 == null || list2.size() <= 0) ? null : this.P.get(0);
        if (cVar2 == null) {
            cVar2 = this.N;
        }
        if (cVar2 != null && !TextUtils.isEmpty(cVar2.S())) {
            l.a().b();
        }
        this.s = null;
        if (this.n != null) {
            com.anythink.core.common.n.a.a().a(this.n.d + this.n.c);
        }
    }

    @Override // com.anythink.expressad.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        long j2 = this.r + 1;
        this.r = j2;
        if (j2 <= 5) {
            StringBuilder sb = new StringBuilder("3-");
            b bVar = this.s;
            sb.append(bVar != null ? bVar.a() : "0");
            a(sb.toString(), SystemClock.elapsedRealtime() - this.p);
        }
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onPause();
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onPause();
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onRestart();
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onRestart();
        }
    }

    @Override // com.anythink.expressad.video.signal.activity.AbstractJSActivity, com.anythink.expressad.activity.ATBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.p = SystemClock.elapsedRealtime();
        long j2 = this.q + 1;
        this.q = j2;
        if (j2 <= 5) {
            StringBuilder sb = new StringBuilder("2-");
            b bVar = this.s;
            sb.append(bVar != null ? bVar.a() : "0");
            a(sb.toString(), 0L);
        }
        if (com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        com.anythink.expressad.foundation.b.a.c().b(this);
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onResume();
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onResume();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(h, this.L);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        new com.anythink.expressad.foundation.f.a() { // from class: com.anythink.expressad.reward.player.ATRewardVideoActivity.5
            @Override // com.anythink.expressad.foundation.f.a
            public final void a() {
                ATRewardVideoActivity.this.onPause();
            }

            @Override // com.anythink.expressad.foundation.f.a
            public final void b() {
                ATRewardVideoActivity.this.onResume();
            }

            @Override // com.anythink.expressad.foundation.f.a
            public final void c() {
                ATRewardVideoActivity.this.onResume();
            }
        };
        if (com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onStart();
            this.N.l(this.w);
            com.anythink.expressad.foundation.f.b.a().a(this.w + "_1", this.N);
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onStart();
            List<com.anythink.expressad.foundation.d.c> list = this.P;
            if (list != null && list.size() > 0) {
                com.anythink.expressad.foundation.d.c cVar = this.P.get(0);
                cVar.l(this.w);
                com.anythink.expressad.foundation.f.b.a().a(this.w + "_1", cVar);
            }
        }
        if (this.W) {
            return;
        }
        com.anythink.expressad.foundation.f.b.a().b(this.w + "_1", 1);
        com.anythink.expressad.foundation.f.b.a().c(this.w + "_2");
        this.W = true;
    }

    @Override // android.app.Activity
    public void onStop() {
        com.anythink.expressad.a.x = false;
        try {
            super.onStop();
        } catch (Throwable unused) {
        }
        ATTempContainer aTTempContainer = this.Q;
        if (aTTempContainer != null) {
            aTTempContainer.onStop();
        }
        AnythinkBTContainer anythinkBTContainer = this.R;
        if (anythinkBTContainer != null) {
            anythinkBTContainer.onStop();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        super.setTheme(i.a(this, "anythink_transparent_theme", i.e));
    }
}
