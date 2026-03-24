package com.anythink.nativead.api;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATCustomVideo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.l;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.f.b;
import com.anythink.core.common.f.h;
import com.anythink.core.common.n.c;
import com.anythink.core.common.n.e;
import com.anythink.core.common.n.g;
import com.anythink.core.common.o.p;
import com.anythink.core.common.o.v;
import com.anythink.core.common.u;
import com.anythink.nativead.unitgroup.a;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class NativeAd {
    private boolean hasSetShowTkDetail;
    private b mAdCacheInfo;
    public a mBaseNativeAd;
    public DownloadConfirmListener mConfirmListener;
    private Context mContext;
    private ATNativeDislikeListener mDislikeListener;
    public ATEventInterface mEventInterface;
    private boolean mIsDestroyed;
    private ATNativeEventListener mNativeEventListener;
    public ATNativeAdView mNativeView;
    private String mPlacementId;
    private boolean mRecordedImpression;
    private boolean mRecordedShow;
    public ATNativeMaterial nativeMaterial;
    private final String TAG = getClass().getSimpleName();
    private boolean hasCallPrepareApi = false;
    private boolean hasCallPrepareRenderApi = false;
    private boolean hasReportRenderTypeAgent = false;
    public View.OnClickListener mDefaultCloseViewListener = new View.OnClickListener() { // from class: com.anythink.nativead.api.NativeAd.5
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = NativeAd.this.mBaseNativeAd;
            if (aVar != null) {
                aVar.notifyAdDislikeClick();
            }
        }
    };
    public boolean isManualImpressionTrack = false;

    public interface DownloadConfirmListener {
        void onDownloadConfirm(Context context, ATAdInfo aTAdInfo, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo);
    }

    public interface ImpressionEventListener {
        void onImpression();
    }

    public NativeAd(Context context, String str, b bVar) {
        this.mContext = context.getApplicationContext();
        this.mPlacementId = str;
        this.mAdCacheInfo = bVar;
        a aVar = (a) bVar.e();
        this.mBaseNativeAd = aVar;
        aVar.setNativeEventListener(new l() { // from class: com.anythink.nativead.api.NativeAd.1
            @Override // com.anythink.core.common.b.l
            public final void onAdClicked(View view) {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleClick(nativeAd.mNativeView, view);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdDislikeButtonClick() {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleAdDislikeButtonClick(nativeAd.mNativeView);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdImpressed() {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleImpression(nativeAd.mNativeView);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoEnd() {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleVideoEnd(nativeAd.mNativeView);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoProgress(int i) {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleVideoProgress(nativeAd.mNativeView, i);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoStart() {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleVideoStart(nativeAd.mNativeView);
            }

            @Override // com.anythink.core.common.b.l
            public final void onDeeplinkCallback(boolean z) {
                NativeAd nativeAd = NativeAd.this;
                nativeAd.handleDeeplinkCallback(nativeAd.mNativeView, z);
            }

            @Override // com.anythink.core.common.b.l
            public final void onDownloadConfirmCallback(Context context2, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                NativeAd.this.handleDownloadConfirm(context2, view, aTNetworkConfirmInfo);
            }
        });
        a aVar2 = this.mBaseNativeAd;
        if (aVar2 instanceof CustomNativeAd) {
            this.nativeMaterial = new com.anythink.nativead.a.b((CustomNativeAd) aVar2);
        }
    }

    private void bindListener() {
        ATNativePrepareInfo nativePrepareInfo;
        View closeView;
        a aVar = this.mBaseNativeAd;
        if (aVar instanceof CustomNativeAd) {
            CustomNativeAd customNativeAd = (CustomNativeAd) aVar;
            if (customNativeAd.checkHasCloseViewListener() || (nativePrepareInfo = customNativeAd.getNativePrepareInfo()) == null || (closeView = nativePrepareInfo.getCloseView()) == null) {
                return;
            }
            closeView.setOnClickListener(this.mDefaultCloseViewListener);
        }
    }

    private void checkBindView(ATNativePrepareInfo aTNativePrepareInfo) {
        if (aTNativePrepareInfo == null) {
            return;
        }
        if (aTNativePrepareInfo.getTitleView() == null) {
            printNotSetViewLog("titleView");
        }
        if (aTNativePrepareInfo.getCtaView() == null) {
            printNotSetViewLog("ctaView");
        }
        if (aTNativePrepareInfo.getDescView() == null) {
            printNotSetViewLog("descView");
        }
        if (aTNativePrepareInfo.getIconView() == null) {
            printNotSetViewLog("iconView");
        }
        if (aTNativePrepareInfo.getMainImageView() == null) {
            printNotSetViewLog("mainImageView");
        }
    }

    private void checkToReportRenderErrorAgent(boolean z) {
        h detail;
        try {
            if ((this.mRecordedShow && this.mRecordedImpression) || this.hasReportRenderTypeAgent) {
                return;
            }
            this.hasReportRenderTypeAgent = true;
            a aVar = this.mBaseNativeAd;
            if (aVar == null || (detail = aVar.getDetail()) == null || detail.P() != 66) {
                return;
            }
            String str = "1";
            String str2 = this.hasCallPrepareRenderApi ? "1" : "2";
            String str3 = this.hasCallPrepareApi ? "1" : "2";
            if (this.mRecordedShow || this.mRecordedImpression) {
                str = !this.mRecordedImpression ? "2" : "";
            }
            String str4 = "0";
            if (z) {
                str = "3";
                str3 = "0";
            } else {
                str4 = str2;
            }
            Map<String, Object> networkInfoMap = this.mBaseNativeAd.getNetworkInfoMap();
            Object obj = networkInfoMap.get("dsp_id");
            Object obj2 = networkInfoMap.get("offer_id");
            e.a(detail, str, str4, str3, obj != null ? obj.toString() : "", obj2 != null ? obj2.toString() : "");
        } catch (Throwable th) {
            new StringBuilder("checkToReportRenderErrorAgent, error: ").append(th.getMessage());
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillRenderAreaToTrackingInfo(h hVar, ATNativeAdView aTNativeAdView) {
        if (hVar == null || aTNativeAdView == null || hVar.P() != 66) {
            return;
        }
        hVar.a(aTNativeAdView.getWidth(), aTNativeAdView.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void fillShowTrackingInfo(h hVar) {
        if (!this.hasSetShowTkDetail) {
            this.hasSetShowTkDetail = true;
            if (hVar != null) {
                v.a(this.mContext, hVar);
            }
        }
    }

    private void printNotSetViewLog(String str) {
        Log.w(this.TAG, "The " + str + " is not set, it may cause the ad to not be clicked normally.");
    }

    private void renderViewToWindow(View view) {
        p.b(this.mPlacementId, h.n.r, h.n.y, h.n.n, "");
        ViewGroup customAdContainer = this.mBaseNativeAd.getCustomAdContainer();
        int iHashCode = hashCode();
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        if (customAdContainer != null) {
            if (customAdContainer.getParent() != null) {
                ((ViewGroup) customAdContainer.getParent()).removeView(customAdContainer);
            }
            customAdContainer.addView(view);
        }
        if (customAdContainer != null) {
            view = customAdContainer;
        }
        this.mNativeView.renderView(iHashCode, view, new ImpressionEventListener() { // from class: com.anythink.nativead.api.NativeAd.4
            @Override // com.anythink.nativead.api.NativeAd.ImpressionEventListener
            public final void onImpression() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                a aVar = NativeAd.this.mBaseNativeAd;
                com.anythink.core.common.f.h detail = aVar != null ? aVar.getDetail() : null;
                if (detail != null && TextUtils.isEmpty(detail.t())) {
                    detail.h(com.anythink.core.common.o.h.a(detail.ai(), detail.F(), jCurrentTimeMillis));
                }
                a aVar2 = NativeAd.this.mBaseNativeAd;
                if (aVar2 instanceof CustomNativeAd) {
                    ((CustomNativeAd) aVar2).setShowId(detail.t());
                }
                NativeAd nativeAd = NativeAd.this;
                nativeAd.recordShow(nativeAd.mNativeView);
            }
        });
    }

    public synchronized void clear(ATNativeAdView aTNativeAdView) {
        if (this.mIsDestroyed) {
            return;
        }
        try {
            a aVar = this.mBaseNativeAd;
            if (aVar != null) {
                aVar.clear(this.mNativeView);
            }
        } catch (Throwable unused) {
        }
        ATNativeAdView aTNativeAdView2 = this.mNativeView;
        if (aTNativeAdView2 != null) {
            aTNativeAdView2.clearImpressionListener(hashCode());
            this.mNativeView = null;
        }
    }

    public synchronized void destory() {
        if (this.mIsDestroyed) {
            return;
        }
        checkToReportRenderErrorAgent(false);
        clear(this.mNativeView);
        this.mIsDestroyed = true;
        this.mNativeEventListener = null;
        this.mDislikeListener = null;
        this.mDefaultCloseViewListener = null;
        this.mNativeView = null;
        a aVar = this.mBaseNativeAd;
        if (aVar != null) {
            aVar.setNativePrepareInfo(null);
            this.mBaseNativeAd.destroy();
        }
    }

    public void finalize() throws Throwable {
        checkToReportRenderErrorAgent(false);
        super.finalize();
    }

    public ATAdInfo getAdInfo() {
        return j.a(this.mBaseNativeAd, this.mAdCacheInfo.d());
    }

    public int getAdInteractionType() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0;
        }
        return ((CustomNativeAd) aVar).getNativeAdInteractionType();
    }

    public ATNativeMaterial getAdMaterial() {
        return this.nativeMaterial;
    }

    @Deprecated
    public ATCustomVideo getCustomVideo() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return null;
        }
        return ((CustomNativeAd) aVar).getNativeCustomVideo();
    }

    public int getDownloadProgress() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0;
        }
        return aVar.getDownloadProgress();
    }

    public int getDownloadStatus() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0;
        }
        return aVar.getDownloadStatus();
    }

    public int getNativeType() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0;
        }
        return ((CustomNativeAd) aVar).getNativeType();
    }

    public double getVideoDuration() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0.0d;
        }
        return ((CustomNativeAd) aVar).getVideoDuration();
    }

    public double getVideoProgress() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return 0.0d;
        }
        return ((CustomNativeAd) aVar).getVideoProgress();
    }

    public synchronized void handleAdDislikeButtonClick(final ATNativeAdView aTNativeAdView) {
        if (this.mIsDestroyed) {
            return;
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.11
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mDislikeListener != null) {
                    ATNativeDislikeListener aTNativeDislikeListener = NativeAd.this.mDislikeListener;
                    ATNativeAdView aTNativeAdView2 = aTNativeAdView;
                    NativeAd nativeAd = NativeAd.this;
                    aTNativeDislikeListener.onAdCloseButtonClick(aTNativeAdView2, j.a(nativeAd.mBaseNativeAd, nativeAd.mAdCacheInfo.d()));
                }
            }
        });
    }

    public synchronized void handleClick(final ATNativeAdView aTNativeAdView, View view) {
        if (this.mIsDestroyed) {
            return;
        }
        a aVar = this.mBaseNativeAd;
        if (aVar != null) {
            com.anythink.core.common.f.h detail = aVar.getDetail();
            p.a(detail, h.n.d, h.n.l, "");
            c.a(this.mContext.getApplicationContext()).a(6, detail);
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.9
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mNativeEventListener != null) {
                    ATNativeEventListener aTNativeEventListener = NativeAd.this.mNativeEventListener;
                    ATNativeAdView aTNativeAdView2 = aTNativeAdView;
                    NativeAd nativeAd = NativeAd.this;
                    aTNativeEventListener.onAdClicked(aTNativeAdView2, j.a(nativeAd.mBaseNativeAd, nativeAd.mAdCacheInfo.d()));
                }
            }
        });
    }

    public synchronized void handleDeeplinkCallback(final ATNativeAdView aTNativeAdView, final boolean z) {
        if (this.mIsDestroyed) {
            return;
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.8
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mNativeEventListener == null || !(NativeAd.this.mNativeEventListener instanceof ATNativeEventExListener)) {
                    return;
                }
                ATNativeEventExListener aTNativeEventExListener = (ATNativeEventExListener) NativeAd.this.mNativeEventListener;
                ATNativeAdView aTNativeAdView2 = aTNativeAdView;
                NativeAd nativeAd = NativeAd.this;
                aTNativeEventExListener.onDeeplinkCallback(aTNativeAdView2, j.a(nativeAd.mBaseNativeAd, nativeAd.mAdCacheInfo.d()), z);
            }
        });
    }

    public synchronized void handleDownloadConfirm(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        a aVar;
        if (this.mIsDestroyed) {
            return;
        }
        DownloadConfirmListener downloadConfirmListener = this.mConfirmListener;
        if (downloadConfirmListener != null && (aVar = this.mBaseNativeAd) != null) {
            if (context == null) {
                context = this.mContext;
            }
            downloadConfirmListener.onDownloadConfirm(context, j.a(aVar, this.mAdCacheInfo.d()), view, aTNetworkConfirmInfo);
        }
    }

    public synchronized void handleImpression(final ATNativeAdView aTNativeAdView) {
        if (!this.mRecordedImpression && !this.mIsDestroyed) {
            this.mRecordedImpression = true;
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.7
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeAd.this.mIsDestroyed) {
                        return;
                    }
                    try {
                        a aVar = NativeAd.this.mBaseNativeAd;
                        if (aVar != null) {
                            com.anythink.core.common.f.h detail = aVar.getDetail();
                            detail.a(NativeAd.this.mBaseNativeAd.getNetworkInfoMap());
                            p.a(detail, h.n.c, h.n.l, "");
                            NativeAd.this.fillShowTrackingInfo(detail);
                            NativeAd.this.fillRenderAreaToTrackingInfo(detail, aTNativeAdView);
                            c.a(NativeAd.this.mContext.getApplicationContext()).a(4, detail, NativeAd.this.mAdCacheInfo.d().getUnitGroupInfo());
                            NativeAd nativeAd = NativeAd.this;
                            final j jVarA = j.a(nativeAd.mBaseNativeAd, nativeAd.mAdCacheInfo.d());
                            if (jVarA.getNetworkFirmId() == -1) {
                                g.a(h.j.a, NativeAd.this.mAdCacheInfo.d(), NativeAd.this.mBaseNativeAd);
                            }
                            n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.7.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (NativeAd.this.mNativeEventListener != null) {
                                        NativeAd.this.mNativeEventListener.onAdImpressed(aTNativeAdView, jVarA);
                                    }
                                }
                            });
                        }
                    } catch (Exception unused) {
                        Log.e("NativeAd", "BaseNativeAd has been destotyed.");
                    }
                }
            });
        }
    }

    public synchronized void handleVideoEnd(final ATNativeAdView aTNativeAdView) {
        if (this.mIsDestroyed) {
            return;
        }
        a aVar = this.mBaseNativeAd;
        if (aVar != null) {
            com.anythink.core.common.f.h detail = aVar.getDetail();
            detail.t = 100;
            c.a(this.mContext.getApplicationContext()).a(9, detail);
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.2
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mNativeEventListener != null) {
                    NativeAd.this.mNativeEventListener.onAdVideoEnd(aTNativeAdView);
                }
            }
        });
    }

    public synchronized void handleVideoProgress(final ATNativeAdView aTNativeAdView, final int i) {
        if (this.mIsDestroyed) {
            return;
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.3
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mNativeEventListener != null) {
                    NativeAd.this.mNativeEventListener.onAdVideoProgress(aTNativeAdView, i);
                }
            }
        });
    }

    public synchronized void handleVideoStart(final ATNativeAdView aTNativeAdView) {
        if (this.mIsDestroyed) {
            return;
        }
        a aVar = this.mBaseNativeAd;
        if (aVar != null) {
            com.anythink.core.common.f.h detail = aVar.getDetail();
            detail.t = 0;
            c.a(this.mContext.getApplicationContext()).a(8, detail);
        }
        n.a().b(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.10
            @Override // java.lang.Runnable
            public final void run() {
                if (NativeAd.this.mNativeEventListener != null) {
                    NativeAd.this.mNativeEventListener.onAdVideoStart(aTNativeAdView);
                }
            }
        });
    }

    public boolean isNativeExpress() {
        a aVar = this.mBaseNativeAd;
        if (aVar == null || !(aVar instanceof CustomNativeAd)) {
            return false;
        }
        return ((CustomNativeAd) aVar).isNativeExpress();
    }

    public void manualImpressionTrack() {
        if (this.mIsDestroyed) {
            Log.e(this.TAG, "NativeAd had been destroyed.");
            return;
        }
        if (!this.isManualImpressionTrack) {
            if (n.a().A()) {
                Log.e(this.TAG, "Must call \"setManualImpressionTrack(true);\" first.");
                return;
            }
            return;
        }
        ATNativeAdView aTNativeAdView = this.mNativeView;
        b bVar = this.mAdCacheInfo;
        ATBaseAdAdapter aTBaseAdAdapterD = bVar != null ? bVar.d() : null;
        if (aTBaseAdAdapterD != null && aTBaseAdAdapterD.supportImpressionCallback()) {
            if (n.a().A()) {
                Log.e(this.TAG, "This NativeAd don't support tracking impressions manually.");
                return;
            }
            return;
        }
        if (aTNativeAdView == null) {
            if (n.a().A()) {
                Log.e(this.TAG, "NativeAd don't call render.");
                return;
            }
            return;
        }
        if (!aTNativeAdView.isShown()) {
            if (n.a().A()) {
                Log.e(this.TAG, "ATNativeAdView isn't visible.");
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            if (!aTNativeAdView.isAttachedToWindow()) {
                if (n.a().A()) {
                    Log.e(this.TAG, "ATNativeAdView don't attach window.");
                    return;
                }
                return;
            }
        } else if (!aTNativeAdView.isAttachInWindow()) {
            if (n.a().A()) {
                Log.e(this.TAG, "ATNativeAdView don't attach window.");
                return;
            }
            return;
        }
        if (n.a().A()) {
            Log.i(this.TAG, "try to track impression manually.");
        }
        a aVar = this.mBaseNativeAd;
        if (aVar instanceof CustomNativeAd) {
            ((CustomNativeAd) aVar).impressionTrack(aTNativeAdView);
        }
    }

    public void onPause() {
        a aVar;
        if (this.mIsDestroyed || (aVar = this.mBaseNativeAd) == null) {
            return;
        }
        aVar.onPause();
    }

    public void onResume() {
        a aVar;
        if (this.mIsDestroyed || (aVar = this.mBaseNativeAd) == null) {
            return;
        }
        aVar.onResume();
    }

    public void pauseVideo() {
        a aVar;
        if (this.mIsDestroyed || (aVar = this.mBaseNativeAd) == null) {
            return;
        }
        aVar.pauseVideo();
    }

    public synchronized void prepare(ATNativeAdView aTNativeAdView, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.mIsDestroyed) {
            return;
        }
        this.hasCallPrepareApi = true;
        if (aTNativeAdView != null) {
            if (aTNativePrepareInfo == null) {
                aTNativePrepareInfo = new ATNativePrepareInfo();
            }
            this.mBaseNativeAd.setNativePrepareInfo(aTNativePrepareInfo);
            this.mBaseNativeAd.prepare(aTNativeAdView, aTNativePrepareInfo);
            bindListener();
            if (!this.mBaseNativeAd.isNativeExpress()) {
                checkBindView(aTNativePrepareInfo);
            }
        }
    }

    public synchronized void recordShow(ATNativeAdView aTNativeAdView) {
        f fVarA;
        if (!this.mRecordedShow) {
            final com.anythink.core.common.f.h detail = this.mBaseNativeAd.getDetail();
            this.mRecordedShow = true;
            if (this.mAdCacheInfo != null && (fVarA = u.a().a(this.mPlacementId, "0")) != null) {
                fVarA.a(this.mAdCacheInfo);
            }
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.nativead.api.NativeAd.6
                @Override // java.lang.Runnable
                public final void run() {
                    if (NativeAd.this.mIsDestroyed || NativeAd.this.mAdCacheInfo == null) {
                        return;
                    }
                    NativeAd.this.fillShowTrackingInfo(detail);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        jCurrentTimeMillis = Long.parseLong(detail.t().split("_")[r2.length - 1]);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    long j = jCurrentTimeMillis;
                    a aVar = NativeAd.this.mBaseNativeAd;
                    if (aVar != null && (aVar instanceof CustomNativeAd)) {
                        ((CustomNativeAd) aVar).setShowId(detail.t());
                    }
                    com.anythink.core.common.a.a().a(NativeAd.this.mContext.getApplicationContext(), NativeAd.this.mAdCacheInfo);
                    c.a(NativeAd.this.mContext).a(13, detail, NativeAd.this.mAdCacheInfo.d().getUnitGroupInfo(), j);
                }
            });
        }
    }

    public synchronized void renderAdContainer(ATNativeAdView aTNativeAdView, View view) {
        if (this.mIsDestroyed) {
            return;
        }
        if (aTNativeAdView != null) {
            aTNativeAdView.clear();
        }
        if (aTNativeAdView == null) {
            Log.e("anythink", "renderAdContainer: ATNativeAdView cannot be null for template-rendering ads!");
            return;
        }
        if (isNativeExpress()) {
            a aVar = this.mBaseNativeAd;
            if (aVar != null) {
                view = aVar.getAdMediaView(aTNativeAdView, Integer.valueOf(aTNativeAdView.getWidth()));
                if (view == null) {
                    Log.e("anythink", "renderAdContainer: getAdMediaView() cannot be null for template-rendering ads!");
                    return;
                }
            } else {
                view = null;
            }
        } else if (view == null) {
            Log.e("anythink", "renderAdContainer: selfRenderView cannot be null for self-rendering ads!");
            checkToReportRenderErrorAgent(true);
            return;
        }
        this.hasCallPrepareRenderApi = true;
        this.mNativeView = aTNativeAdView;
        if (aTNativeAdView != null) {
            aTNativeAdView.attachNativeAd(this);
        }
        if (view != null) {
            view.setVisibility(0);
            renderViewToWindow(view);
        }
    }

    public void resumeVideo() {
        a aVar;
        if (this.mIsDestroyed || (aVar = this.mBaseNativeAd) == null) {
            return;
        }
        aVar.resumeVideo();
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mEventInterface = aTEventInterface;
        IExHandler iExHandlerB = n.a().b();
        if (iExHandlerB == null) {
            this.mBaseNativeAd.setDownloadListener(null);
            Log.e(this.TAG, "This method is not supported in this version");
        } else if (aTEventInterface != null) {
            this.mBaseNativeAd.setDownloadListener(iExHandlerB.createDownloadListener(this.mAdCacheInfo.d(), this.mBaseNativeAd, aTEventInterface));
        } else {
            this.mBaseNativeAd.setDownloadListener(null);
        }
    }

    public void setDislikeCallbackListener(ATNativeDislikeListener aTNativeDislikeListener) {
        if (this.mIsDestroyed) {
            return;
        }
        this.mDislikeListener = aTNativeDislikeListener;
    }

    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        a aVar = this.mBaseNativeAd;
        boolean z = aVar instanceof CustomNativeAd;
        if (downloadConfirmListener != null) {
            if (z) {
                ((CustomNativeAd) aVar).registerDownloadConfirmListener();
            }
        } else if (z) {
            ((CustomNativeAd) aVar).unregeisterDownloadConfirmListener();
        }
        this.mConfirmListener = downloadConfirmListener;
    }

    public void setManualImpressionTrack(boolean z) {
        this.isManualImpressionTrack = z;
    }

    public void setNativeEventListener(ATNativeEventListener aTNativeEventListener) {
        if (this.mIsDestroyed) {
            return;
        }
        this.mNativeEventListener = aTNativeEventListener;
    }

    public void setVideoMute(boolean z) {
        a aVar;
        if (this.mIsDestroyed || (aVar = this.mBaseNativeAd) == null) {
            return;
        }
        aVar.setVideoMute(z);
    }
}
