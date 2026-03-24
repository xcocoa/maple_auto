package com.anythink.rewardvideo.a;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.a.b;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.v;
import com.anythink.core.common.n.e;
import com.anythink.core.common.n.g;
import com.anythink.core.common.o.p;
import com.anythink.core.common.u;
import com.anythink.rewardvideo.api.ATRewardVideoExListener;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d implements CustomRewardedVideoEventListener {
    public long b;
    public boolean c;
    public h d;
    public boolean e;
    public long f;
    public long g;
    private ATRewardVideoListener j;
    private CustomRewardVideoAdapter k;
    private com.anythink.core.common.g.c l;
    private long m;
    private long n;
    public int h = 0;
    public long a = 0;
    public boolean i = true;

    public d(CustomRewardVideoAdapter customRewardVideoAdapter, com.anythink.core.common.g.c cVar, ATRewardVideoListener aTRewardVideoListener) {
        this.j = aTRewardVideoListener;
        this.k = customRewardVideoAdapter;
        this.l = cVar;
    }

    private h a() {
        CustomRewardVideoAdapter customRewardVideoAdapter;
        if (this.d == null && (customRewardVideoAdapter = this.k) != null) {
            h hVarV = customRewardVideoAdapter.getTrackingInfo().V();
            this.d = hVarV;
            hVarV.q = 6;
            this.d.h(com.anythink.core.common.o.h.b(hVarV.ai(), this.d.F(), System.currentTimeMillis()));
        }
        return this.d;
    }

    private void a(AdError adError, h hVar) {
        p.a(hVar, h.n.c, h.n.m, adError.printStackTrace());
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        e.a(hVar, adError, customRewardVideoAdapter != null ? customRewardVideoAdapter.getNetworkInfoMap() : null);
    }

    private void a(com.anythink.core.common.f.h hVar) {
        String ilrd = this.k.getILRD();
        if (!TextUtils.isEmpty(ilrd)) {
            hVar.a(ilrd);
        }
        if (this.i) {
            com.anythink.core.common.n.c.a(n.a().f()).a(8, hVar);
        }
        com.anythink.core.common.n.c.a(n.a().f()).a(4, hVar, this.k.getUnitGroupInfo());
        p.a(hVar, h.n.c, h.n.l, "");
    }

    private static void a(String str) {
        com.anythink.core.common.f.e eVarC;
        if (TextUtils.isEmpty(str) || (eVarC = u.a().c(str)) == null) {
            return;
        }
        u.a().d(str);
        f.a(n.a().f(), str, "1").c(u.a().b(str, eVarC.a()));
    }

    private static void a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f fVarA = f.a(n.a().E(), str, "1");
        if (fVarA.a((ATAdStatusInfo) null)) {
            v vVar = new v();
            vVar.a(n.a().E());
            vVar.d = i;
            fVarA.b(n.a().E(), "1", str, vVar, null);
        }
    }

    private static void b(com.anythink.core.common.f.h hVar) {
        p.a(hVar, h.n.f, h.n.l, "");
        com.anythink.core.common.n.c.a(n.a().f()).a(9, hVar);
    }

    private static void c(com.anythink.core.common.f.h hVar) {
        com.anythink.core.common.n.c.a(n.a().f()).a(6, hVar);
        p.a(hVar, h.n.d, h.n.l, "");
    }

    private void d(com.anythink.core.common.f.h hVar) {
        com.anythink.core.common.n.c.a(n.a().f()).a(13, hVar, this.k.getUnitGroupInfo());
        a(hVar);
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onAgainReward() {
        com.anythink.core.common.g.c cVar;
        com.anythink.core.common.f.h hVarA = a();
        if (!this.e && (cVar = this.l) != null) {
            cVar.a(this.f, this.g, this.k, hVarA);
        }
        this.e = true;
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            return;
        }
        ((ATRewardVideoExListener) aTRewardVideoListener).onAgainReward(j.a(hVarA, this.k));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onDeeplinkCallback(boolean z) {
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null && (aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            ((ATRewardVideoExListener) aTRewardVideoListener).onDeeplinkCallback(j.a(this.k), z);
        }
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            p.a(customRewardVideoAdapter.getTrackingInfo(), h.n.i, z ? h.n.l : h.n.m, "");
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null && (aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            ((ATRewardVideoExListener) aTRewardVideoListener).onDownloadConfirm(context, j.a(this.k), aTNetworkConfirmInfo);
        }
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            p.a(customRewardVideoAdapter.getTrackingInfo(), h.n.j, h.n.l, "");
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onReward() {
        com.anythink.core.common.g.c cVar;
        if (!this.c && (cVar = this.l) != null) {
            long j = this.m;
            long j2 = this.n;
            CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
            cVar.a(j, j2, customRewardVideoAdapter, customRewardVideoAdapter.getTrackingInfo());
        }
        this.c = true;
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null) {
            aTRewardVideoListener.onReward(j.a(this.k));
        }
        CustomRewardVideoAdapter customRewardVideoAdapter2 = this.k;
        if (customRewardVideoAdapter2 != null) {
            p.a(customRewardVideoAdapter2.getTrackingInfo(), h.n.h, h.n.l, "");
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayClicked() {
        com.anythink.core.common.f.h hVarA = a();
        if (this.k != null && hVarA != null) {
            c(hVarA);
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            return;
        }
        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayClicked(j.a(hVarA, this.k));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayEnd() {
        if (this.g == 0) {
            this.g = SystemClock.elapsedRealtime();
        }
        com.anythink.core.common.f.h hVarA = a();
        if (this.k != null && hVarA != null) {
            b(hVarA);
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            return;
        }
        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayEnd(j.a(hVarA, this.k));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayFailed(String str, String str2) {
        this.h = 99;
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2);
        com.anythink.core.common.f.h hVarA = a();
        if (this.k != null && hVarA != null) {
            a(errorCode, hVarA);
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            return;
        }
        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayFailed(errorCode, j.a(hVarA, this.k));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdAgainPlayStart() {
        this.h = 0;
        if (this.f == 0) {
            this.f = SystemClock.elapsedRealtime();
        }
        this.g = 0L;
        com.anythink.core.common.f.h hVarA = a();
        if (this.k != null && hVarA != null) {
            com.anythink.core.common.n.c.a(n.a().f()).a(13, hVarA, this.k.getUnitGroupInfo());
            a(hVarA);
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
            return;
        }
        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayStart(j.a(hVarA, this.k));
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdClosed() {
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            int dismissType = this.h;
            if (dismissType == 0) {
                dismissType = this.k.getDismissType();
            }
            if (dismissType == 0) {
                dismissType = 1;
            }
            trackingInfo.D(dismissType);
            p.a(trackingInfo, h.n.e, h.n.l, "");
            long j = this.a;
            if (j != 0) {
                e.a(trackingInfo, this.c, j, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.b);
            }
            Map<String, Object> adExtraInfoMap = this.k.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object obj = adExtraInfoMap.get(b.C0083b.a);
                if (obj instanceof Integer) {
                    trackingInfo.I(((Integer) obj).intValue());
                }
            }
            e.a(trackingInfo, this.c);
            if (this.c) {
                try {
                    this.k.clearImpressionListener();
                    this.k.internalDestory();
                } catch (Throwable unused) {
                }
            } else {
                n.a().a(new Runnable() { // from class: com.anythink.rewardvideo.a.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            d.this.k.clearImpressionListener();
                            d.this.k.internalDestory();
                        } catch (Throwable unused2) {
                        }
                    }
                }, com.anythink.expressad.exoplayer.f.a);
            }
            if (trackingInfo != null) {
                a(trackingInfo.ah());
            }
            ATRewardVideoListener aTRewardVideoListener = this.j;
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdClosed(j.a(trackingInfo, this.k));
            }
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayClicked() {
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            c(customRewardVideoAdapter.getTrackingInfo());
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null) {
            aTRewardVideoListener.onRewardedVideoAdPlayClicked(j.a(this.k));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayEnd() {
        if (this.n == 0) {
            this.n = SystemClock.elapsedRealtime();
        }
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            if (customRewardVideoAdapter.getDismissType() == 0) {
                this.h = 3;
            }
            b(this.k.getTrackingInfo());
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null) {
            aTRewardVideoListener.onRewardedVideoAdPlayEnd(j.a(this.k));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayFailed(String str, String str2) {
        this.h = 99;
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adShowError, str, str2);
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            if (trackingInfo.P() == 66) {
                this.i = false;
            }
            String strAh = trackingInfo.ah();
            a(errorCode, trackingInfo);
            if (trackingInfo != null) {
                a(trackingInfo.ah());
            }
            a(strAh, 7);
        }
        ATRewardVideoListener aTRewardVideoListener = this.j;
        if (aTRewardVideoListener != null) {
            aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, j.a(this.k));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener
    public final void onRewardedVideoAdPlayStart() {
        String strAh;
        this.a = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.b = jElapsedRealtime;
        if (this.m == 0) {
            this.m = jElapsedRealtime;
        }
        j jVarA = j.a(this.k);
        CustomRewardVideoAdapter customRewardVideoAdapter = this.k;
        if (customRewardVideoAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customRewardVideoAdapter.getTrackingInfo();
            trackingInfo.a(this.k.getNetworkInfoMap());
            a(trackingInfo);
            if (trackingInfo != null) {
                strAh = trackingInfo.ah();
                u.a().a(strAh, jVarA);
            } else {
                strAh = "";
            }
            a(strAh, 6);
        }
        if (!this.i || this.j == null) {
            return;
        }
        if (jVarA.getNetworkFirmId() == -1) {
            g.a(h.j.b, this.k, null);
        }
        this.j.onRewardedVideoAdPlayStart(jVarA);
    }
}
