package com.octopus.ad.internal;

import android.util.Log;
import com.octopus.ad.AdRequest;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.internal.view.AdWebView;
import com.octopus.ad.internal.view.BannerAdViewImpl;
import java.lang.ref.SoftReference;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes2.dex */
public class f extends o {
    private final SoftReference<AdViewImpl> a;
    private com.octopus.ad.internal.network.a b;

    public f(AdViewImpl adViewImpl) {
        this.a = new SoftReference<>(adViewImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AdViewImpl adViewImpl, final ServerResponse serverResponse) {
        try {
            adViewImpl.getAdParameters().a(false);
            final AdWebView adWebView = new AdWebView(adViewImpl);
            adWebView.loadAd(serverResponse);
            adViewImpl.createAdLogo(serverResponse.getTextLogInfo(), serverResponse.getLogoInfo());
            if (adViewImpl.getMediaType().equals(l.BANNER)) {
                adViewImpl.addBannerCloseBtn();
                BannerAdViewImpl bannerAdViewImpl = (BannerAdViewImpl) adViewImpl;
                if (bannerAdViewImpl.getExpandsToFitScreenWidth()) {
                    bannerAdViewImpl.expandToFitScreenWidth(serverResponse.getWidth(), serverResponse.getHeight(), adWebView);
                }
            }
            adViewImpl.serverResponse = serverResponse;
            a(new com.octopus.ad.internal.network.b() { // from class: com.octopus.ad.internal.f.2
                @Override // com.octopus.ad.internal.network.b
                public l a() {
                    return adViewImpl.getMediaType();
                }

                @Override // com.octopus.ad.internal.network.b
                public com.octopus.ad.internal.view.b b() {
                    return (adViewImpl.getMediaType() == l.INTERSTITIAL || adViewImpl.getMediaType() == l.REWARDVIDEO) ? adWebView : adWebView.getRealDisplayable();
                }

                @Override // com.octopus.ad.internal.network.b
                public NativeAdResponse c() {
                    return null;
                }

                @Override // com.octopus.ad.internal.network.b
                public String d() {
                    return serverResponse.getAdExtInfo();
                }

                @Override // com.octopus.ad.internal.network.b
                public int e() {
                    return serverResponse.getPrice();
                }

                @Override // com.octopus.ad.internal.network.b
                public String f() {
                    return serverResponse.getTagId();
                }

                @Override // com.octopus.ad.internal.network.b
                public String g() {
                    return serverResponse.getAdId();
                }

                @Override // com.octopus.ad.internal.network.b
                public void h() {
                    adWebView.destroy();
                }
            });
        } catch (Exception e) {
            Log.d("octopus", "========Exception=========:" + e);
            HaoboLog.e(HaoboLog.baseLogTag, "Exception initializing the view: " + e.getMessage());
            a(AdRequest.ERROR_CODE_INTERNAL_ERROR);
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        if (d() == null) {
            HaoboLog.e(HaoboLog.baseLogTag, "Before execute request manager, you should set ad request!");
            return;
        }
        this.b = new com.octopus.ad.internal.network.a(d());
        e();
        try {
            this.b.a(this);
            this.b.executeOnExecutor(com.octopus.ad.utils.b.h.b().c(), new Void[0]);
            AdViewImpl adViewImpl = this.a.get();
            if (adViewImpl != null) {
                adViewImpl.getAdDispatcher().e();
            }
        } catch (IllegalStateException e) {
            Log.d("octopus", "ignored:" + e.getMessage());
        } catch (RejectedExecutionException e2) {
            HaoboLog.e(HaoboLog.baseLogTag, "Concurrent Thread Exception while firing new ad request: " + e2.getMessage());
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i) {
        f();
        AdViewImpl adViewImpl = this.a.get();
        if (adViewImpl != null) {
            adViewImpl.getAdDispatcher().a(i);
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(final ServerResponse serverResponse) {
        final AdViewImpl adViewImpl = this.a.get();
        if (adViewImpl != null) {
            adViewImpl.getMyHandler().post(new Runnable() { // from class: com.octopus.ad.internal.f.1
                @Override // java.lang.Runnable
                public void run() {
                    ServerResponse serverResponse2 = serverResponse;
                    if (!(serverResponse2 != null && serverResponse2.containsAds())) {
                        HaoboLog.w(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_no_ads));
                        adViewImpl.getAdDispatcher().a(AdRequest.ERROR_CODE_NO_FILL);
                        return;
                    }
                    Log.d("octopus", "getMediaType:" + adViewImpl.getMediaType());
                    if (adViewImpl.getMediaType().equals(l.BANNER)) {
                        ((BannerAdViewImpl) adViewImpl).resetContainerIfNeeded();
                    }
                    Log.d("octopus", "handleStandardAds");
                    f.this.a(adViewImpl, serverResponse);
                }
            });
        }
    }

    public void a(com.octopus.ad.internal.network.b bVar) {
        f();
        AdViewImpl adViewImpl = this.a.get();
        if (adViewImpl != null) {
            adViewImpl.getAdDispatcher().a(bVar);
        } else {
            bVar.h();
        }
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        AdViewImpl adViewImpl = this.a.get();
        if (adViewImpl != null) {
            return adViewImpl.getAdParameters();
        }
        return null;
    }

    @Override // com.octopus.ad.internal.o
    public void c() {
        com.octopus.ad.internal.network.a aVar = this.b;
        if (aVar != null) {
            aVar.cancel(true);
            this.b = null;
        }
    }

    public a.C0197a d() {
        if (this.a.get() != null) {
            return this.a.get().getAdRequest();
        }
        return null;
    }
}
