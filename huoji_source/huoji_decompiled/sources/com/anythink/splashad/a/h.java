package com.anythink.splashad.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.common.a.b;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.a.f;
import com.anythink.core.common.o.p;
import com.anythink.core.common.o.x;
import com.anythink.core.common.u;
import com.anythink.splashad.api.ATSplashAdExtraInfo;
import com.anythink.splashad.api.ATSplashSkipAdListener;
import com.anythink.splashad.api.ATSplashSkipInfo;
import com.anythink.splashad.api.IATSplashEyeAd;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public final class h implements CustomSplashEventListener {
    public CustomSplashAdapter a;
    public a b;
    public long c;
    private Timer d;
    private boolean e = false;
    private int f = 0;

    /* JADX INFO: renamed from: com.anythink.splashad.a.h$1, reason: invalid class name */
    public class AnonymousClass1 extends TimerTask {
        public final /* synthetic */ ViewGroup a;
        public final /* synthetic */ f.b b;
        public final /* synthetic */ ATSplashSkipAdListener c;
        public final /* synthetic */ long d;
        public final /* synthetic */ long e;

        public AnonymousClass1(ViewGroup viewGroup, f.b bVar, ATSplashSkipAdListener aTSplashSkipAdListener, long j, long j2) {
            this.a = viewGroup;
            this.b = bVar;
            this.c = aTSplashSkipAdListener;
            this.d = j;
            this.e = j2;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ViewGroup viewGroup = this.a;
            if (viewGroup == null || x.a(viewGroup, this.b)) {
                n.a().b(new Runnable() { // from class: com.anythink.splashad.a.h.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        h hVar = h.this;
                        long j = hVar.c;
                        if (j <= 0) {
                            hVar.a(3);
                            h.this.onSplashAdDismiss();
                        } else {
                            ATSplashSkipAdListener aTSplashSkipAdListener = anonymousClass1.c;
                            if (aTSplashSkipAdListener != null) {
                                aTSplashSkipAdListener.onAdTick(anonymousClass1.d, j);
                            }
                        }
                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                        h.this.c -= anonymousClass12.e;
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.splashad.a.h$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ ATSplashSkipAdListener a;
        public final /* synthetic */ long b;
        public final /* synthetic */ long c;

        public AnonymousClass2(ATSplashSkipAdListener aTSplashSkipAdListener, long j, long j2) {
            this.a = aTSplashSkipAdListener;
            this.b = j;
            this.c = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ATSplashSkipAdListener aTSplashSkipAdListener = this.a;
            if (aTSplashSkipAdListener != null) {
                aTSplashSkipAdListener.onAdTick(this.b, h.this.c);
                h.this.c -= this.c;
            }
        }
    }

    public h(CustomSplashAdapter customSplashAdapter, a aVar) {
        this.a = customSplashAdapter;
        this.b = aVar;
    }

    private void a() {
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
            this.d = null;
        }
    }

    private void a(ATSplashSkipInfo aTSplashSkipInfo) {
        if (this.d == null) {
            long callbackInterval = aTSplashSkipInfo.getCallbackInterval();
            long countDownDuration = aTSplashSkipInfo.getCountDownDuration();
            ViewGroup container = aTSplashSkipInfo.getContainer();
            f.b bVar = new f.b();
            ATSplashSkipAdListener aTSplashSkipAdListener = aTSplashSkipInfo.getATSplashSkipAdListener();
            this.c = countDownDuration;
            Timer timer = new Timer();
            this.d = timer;
            timer.schedule(new AnonymousClass1(container, bVar, aTSplashSkipAdListener, countDownDuration, callbackInterval), callbackInterval, callbackInterval);
            n.a().b(new AnonymousClass2(aTSplashSkipAdListener, countDownDuration, callbackInterval));
        }
    }

    private static void a(String str) {
        com.anythink.core.common.f.e eVarC;
        if (TextUtils.isEmpty(str) || (eVarC = u.a().c(str)) == null) {
            return;
        }
        u.a().d(str);
        com.anythink.core.common.f.a(n.a().f(), str, "4").c(u.a().b(str, eVarC.a()));
    }

    public final void a(int i) {
        this.f = i;
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onDeeplinkCallback(boolean z) {
        a aVar = this.b;
        if (aVar != null) {
            aVar.onDeeplinkCallback(j.a(this.a), z);
        }
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            p.a(customSplashAdapter.getTrackingInfo(), h.n.i, z ? h.n.l : h.n.m, "");
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        a aVar = this.b;
        if (aVar != null) {
            aVar.onDownloadConfirm(context, j.a(this.a), aTNetworkConfirmInfo);
        }
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            p.a(customSplashAdapter.getTrackingInfo(), h.n.j, h.n.l, "");
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdClicked() {
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customSplashAdapter.getTrackingInfo();
            com.anythink.core.common.n.c.a(n.a().f()).a(6, trackingInfo);
            p.a(trackingInfo, h.n.d, h.n.l, "");
        }
        a aVar = this.b;
        if (aVar != null) {
            aVar.onAdClick(j.a(this.a));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onSplashAdDismiss() {
        boolean zBooleanValue;
        com.anythink.core.common.f.e eVarC;
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
        }
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customSplashAdapter.getTrackingInfo();
            int dismissType = this.f;
            if (dismissType == 0 && (dismissType = this.a.getDismissType()) == 0) {
                dismissType = 1;
            }
            trackingInfo.D(dismissType);
            Map<String, Object> adExtraInfoMap = this.a.getAdExtraInfoMap();
            if (adExtraInfoMap != null) {
                Object objRemove = adExtraInfoMap.remove(b.C0083b.a);
                Object objRemove2 = adExtraInfoMap.remove(b.C0083b.b);
                if (objRemove instanceof Integer) {
                    trackingInfo.I(((Integer) objRemove).intValue());
                }
                zBooleanValue = objRemove2 instanceof Boolean ? ((Boolean) objRemove2).booleanValue() : true;
            }
            com.anythink.core.common.n.e.a(trackingInfo, false);
            ATSplashSkipInfo splashSkipInfo = this.a.getSplashSkipInfo();
            if (splashSkipInfo != null && splashSkipInfo.canUseCustomSkipView()) {
                this.a.startSplashCustomSkipViewClickEye();
                Timer timer2 = this.d;
                if (timer2 != null) {
                    timer2.cancel();
                    this.d = null;
                }
                splashSkipInfo.destroy();
                this.a.setSplashSkipInfo(null);
            }
            p.a(trackingInfo, h.n.e, h.n.l, "");
            String strAh = trackingInfo.ah();
            if (!TextUtils.isEmpty(strAh) && (eVarC = u.a().c(strAh)) != null) {
                u.a().d(strAh);
                com.anythink.core.common.f.a(n.a().f(), strAh, "4").c(u.a().b(strAh, eVarC.a()));
            }
            CustomSplashAdapter customSplashAdapter2 = this.a;
            IATSplashEyeAd splashEyeAd = customSplashAdapter2 instanceof CustomSplashAdapter ? customSplashAdapter2.getSplashEyeAd() : null;
            if (this.b != null && !this.e) {
                this.e = true;
                if (trackingInfo.P() != 66 || zBooleanValue) {
                    a aVar = this.b;
                    j jVarA = j.a(trackingInfo, this.a);
                    ATSplashAdExtraInfo aTSplashAdExtraInfo = new ATSplashAdExtraInfo(dismissType, splashEyeAd);
                    aVar.onCallbackAdDismiss(jVarA, aTSplashAdExtraInfo);
                }
            }
            if (splashEyeAd == null) {
                CustomSplashAdapter customSplashAdapter3 = this.a;
                if (customSplashAdapter3 != null) {
                    customSplashAdapter3.cleanImpressionListener();
                }
                CustomSplashAdapter customSplashAdapter4 = this.a;
                if (customSplashAdapter4 != null) {
                    customSplashAdapter4.internalDestory();
                }
            }
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdShow() {
        j jVarA = j.a(this.a);
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customSplashAdapter.getTrackingInfo();
            trackingInfo.a(this.a.getNetworkInfoMap());
            com.anythink.core.common.n.c.a(n.a().f()).a(4, trackingInfo, this.a.getUnitGroupInfo());
            p.a(trackingInfo, h.n.c, h.n.l, "");
            ATSplashSkipInfo splashSkipInfo = this.a.getSplashSkipInfo();
            if (splashSkipInfo != null && splashSkipInfo.canUseCustomSkipView() && this.a.isSupportCustomSkipView() && this.d == null) {
                long callbackInterval = splashSkipInfo.getCallbackInterval();
                long countDownDuration = splashSkipInfo.getCountDownDuration();
                ViewGroup container = splashSkipInfo.getContainer();
                f.b bVar = new f.b();
                ATSplashSkipAdListener aTSplashSkipAdListener = splashSkipInfo.getATSplashSkipAdListener();
                this.c = countDownDuration;
                Timer timer = new Timer();
                this.d = timer;
                timer.schedule(new AnonymousClass1(container, bVar, aTSplashSkipAdListener, countDownDuration, callbackInterval), callbackInterval, callbackInterval);
                n.a().b(new AnonymousClass2(aTSplashSkipAdListener, countDownDuration, callbackInterval));
            }
            if (trackingInfo != null) {
                u.a().a(trackingInfo.ah(), jVarA);
            }
        }
        if (this.b != null) {
            if (jVarA.getNetworkFirmId() == -1) {
                com.anythink.core.common.n.g.a(h.j.e, this.a, null);
            }
            this.b.onAdShow(jVarA);
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
    public final void onSplashAdShowFail(AdError adError) {
        CustomSplashAdapter customSplashAdapter = this.a;
        if (customSplashAdapter != null) {
            com.anythink.core.common.f.h trackingInfo = customSplashAdapter.getTrackingInfo();
            com.anythink.core.common.n.e.a(trackingInfo, adError, this.a.getNetworkInfoMap());
            p.a(trackingInfo, h.n.k, h.n.m, adError != null ? adError.getFullErrorInfo() : "");
        }
    }
}
