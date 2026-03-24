package z2;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.nativead.api.ATNative;
import com.anythink.nativead.api.ATNativeAdView;
import com.anythink.nativead.api.ATNativeEventListener;
import com.anythink.nativead.api.ATNativeNetworkListener;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.api.NativeAd;
import com.anythink.splashad.api.ATSplashAd;
import com.anythink.splashad.api.ATSplashAdExtraInfo;
import com.anythink.splashad.api.ATSplashAdListener;
import com.elfin.ad.R;
import com.elfin.ad.model.yunjing.YunjingNativeAdView;
import com.octopus.ad.Octopus;

/* JADX INFO: loaded from: classes2.dex */
public class bi {
    public static final String OooO = "a65517da9564af";
    private static final String OooO0oo = "YunJingAdManager";
    public static final String OooOO0 = "79c5beb4fa44a273013b5196ffd1f13a";
    public static final String OooOO0O = "b65517e46d465a";
    private static bi OooOO0o;
    public String OooO00o = "";
    private ATSplashAd OooO0O0;
    private ATNative OooO0OO;
    private NativeAd OooO0Oo;
    private ATNativeAdView OooO0o;
    private YunjingNativeAdView OooO0o0;
    private View OooO0oO;

    public class OooO00o implements ATSplashAdListener {
        public final /* synthetic */ xh OooO00o;
        public final /* synthetic */ Context OooO0O0;
        public final /* synthetic */ ViewGroup OooO0OO;

        public OooO00o(xh xhVar, Context context, ViewGroup viewGroup) {
            this.OooO00o = xhVar;
            this.OooO0O0 = context;
            this.OooO0OO = viewGroup;
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdClick(ATAdInfo aTAdInfo) {
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdDismiss(ATAdInfo aTAdInfo, ATSplashAdExtraInfo aTSplashAdExtraInfo) {
            xh xhVar = this.OooO00o;
            if (xhVar != null) {
                xhVar.OooO0OO(null, null);
            }
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdLoadTimeout() {
            xh xhVar = this.OooO00o;
            if (xhVar != null) {
                xhVar.onAdLoadTimeout();
            }
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdLoaded(boolean z) {
            if (this.OooO00o != null) {
                Log.d("222", "init onAdLoaded OK:");
                if (bi.this.OooO0O0.isAdReady()) {
                    bi.this.OooO0O0.show((Activity) this.OooO0O0, this.OooO0OO);
                }
            }
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onAdShow(ATAdInfo aTAdInfo) {
        }

        @Override // com.anythink.splashad.api.ATSplashAdListener
        public void onNoAdError(AdError adError) {
            Log.d(bi.OooO0oo, "onNoAdError code :" + adError.getCode());
            Log.d(bi.OooO0oo, "onNoAdError msg :" + adError.getDesc());
            xh xhVar = this.OooO00o;
            if (xhVar != null) {
                xhVar.OooO0Oo(new zh(adError.getCode(), adError.getDesc()));
            }
        }
    }

    public class OooO0O0 implements ATNativeNetworkListener {
        public final /* synthetic */ di OooO00o;
        public final /* synthetic */ Context OooO0O0;
        public final /* synthetic */ ViewGroup OooO0OO;

        public OooO0O0(di diVar, Context context, ViewGroup viewGroup) {
            this.OooO00o = diVar;
            this.OooO0O0 = context;
            this.OooO0OO = viewGroup;
        }

        @Override // com.anythink.nativead.api.ATNativeNetworkListener
        public void onNativeAdLoadFail(AdError adError) {
            di diVar = this.OooO00o;
            if (diVar != null) {
                diVar.OooO0O0(new zh(adError.getCode(), adError.getDesc()));
            }
        }

        @Override // com.anythink.nativead.api.ATNativeNetworkListener
        public void onNativeAdLoaded() {
            di diVar = this.OooO00o;
            if (diVar != null) {
                diVar.onNativeAdLoaded();
            }
            bi.this.OooOOo(this.OooO0O0, this.OooO0OO, this.OooO00o);
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ Context OoooOoO;
        public final /* synthetic */ di OoooOoo;

        public class OooO00o implements View.OnClickListener {
            public OooO00o() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OooO0OO.this.OoooOoo.OooO00o();
            }
        }

        public class OooO0O0 implements ATNativeEventListener {
            public OooO0O0() {
            }

            @Override // com.anythink.nativead.api.ATNativeEventListener
            public void onAdClicked(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo) {
                Log.i(bi.OooO0oo, "native ad onAdClicked:\n" + aTAdInfo.toString());
            }

            @Override // com.anythink.nativead.api.ATNativeEventListener
            public void onAdImpressed(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo) {
                Log.i(bi.OooO0oo, "native ad onAdImpressed:\n" + aTAdInfo.toString());
            }

            @Override // com.anythink.nativead.api.ATNativeEventListener
            public void onAdVideoEnd(ATNativeAdView aTNativeAdView) {
                Log.i(bi.OooO0oo, "native ad onAdVideoEnd");
            }

            @Override // com.anythink.nativead.api.ATNativeEventListener
            public void onAdVideoProgress(ATNativeAdView aTNativeAdView, int i) {
                Log.i(bi.OooO0oo, "native ad onAdVideoProgress:" + i);
            }

            @Override // com.anythink.nativead.api.ATNativeEventListener
            public void onAdVideoStart(ATNativeAdView aTNativeAdView) {
                Log.i(bi.OooO0oo, "native ad onAdVideoStart");
            }
        }

        public OooO0OO(Context context, di diVar) {
            this.OoooOoO = context;
            this.OoooOoo = diVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bi.this.OooO0o == null) {
                bi biVar = bi.this;
                biVar.OooO0o = (ATNativeAdView) biVar.OooO0o0.findViewById(R.id.native_ad_view);
            }
            if (bi.this.OooO0oO == null) {
                bi biVar2 = bi.this;
                biVar2.OooO0oO = biVar2.OooO0o0.findViewById(R.id.native_selfrender_view);
            }
            if (bi.this.OooO0oO == null) {
                Log.d(bi.OooO0oo, "mSelfRenderView is null 1");
                return;
            }
            NativeAd nativeAd = bi.this.OooO0OO.getNativeAd();
            if (nativeAd != null) {
                if (bi.this.OooO0Oo != null) {
                    bi.this.OooO0Oo.destory();
                }
                bi.this.OooO0Oo = nativeAd;
                ATNativePrepareInfo aTNativePrepareInfo = null;
                if (bi.this.OooO0Oo.isNativeExpress()) {
                    bi.this.OooO0Oo.renderAdContainer(bi.this.OooO0o, null);
                } else {
                    aTNativePrepareInfo = new ATNativePrepareInfo();
                    yh.OooO00o(this.OoooOoO, bi.this.OooO0Oo.getAdMaterial(), bi.this.OooO0oO, aTNativePrepareInfo);
                    bi.this.OooO0Oo.renderAdContainer(bi.this.OooO0o, bi.this.OooO0oO);
                }
                bi.this.OooO0Oo.prepare(bi.this.OooO0o, aTNativePrepareInfo);
            }
            ((ImageView) bi.this.OooO0o0.findViewById(R.id.native_ad_close)).setOnClickListener(new OooO00o());
            bi.this.OooO0Oo.setNativeEventListener(new OooO0O0());
        }
    }

    private bi() {
    }

    public static bi OooOO0o() {
        if (OooOO0o == null) {
            synchronized (bi.class) {
                if (OooOO0o == null) {
                    OooOO0o = new bi();
                }
            }
        }
        return OooOO0o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOo(Context context, ViewGroup viewGroup, di diVar) {
        ATNative aTNative = this.OooO0OO;
        if (aTNative != null && aTNative.checkAdStatus().isReady()) {
            if (this.OooO0o0 == null) {
                YunjingNativeAdView yunjingNativeAdView = new YunjingNativeAdView(context);
                this.OooO0o0 = yunjingNativeAdView;
                viewGroup.addView(yunjingNativeAdView);
            }
            this.OooO0o0.post(new OooO0OO(context, diVar));
        }
    }

    public void OooOO0O(Context context, ViewGroup viewGroup, xh xhVar) {
        ATSplashAd aTSplashAd = new ATSplashAd(context, OooOO0O, new OooO00o(xhVar, context, viewGroup), 10000, this.OooO00o);
        this.OooO0O0 = aTSplashAd;
        aTSplashAd.loadAd();
    }

    public void OooOOO(Context context, ViewGroup viewGroup, di diVar) {
        if (this.OooO0OO == null) {
            this.OooO0OO = new ATNative(context, "b65517e48a23c7", new OooO0O0(diVar, context, viewGroup));
        }
        this.OooO0OO.makeAdRequest();
    }

    public void OooOOO0(Context context) {
        Log.d(OooO0oo, "orid SDK OK:" + Octopus.getOaid(context));
        ATSDK.integrationChecking(context);
        ATSDK.init(context, OooO, OooOO0);
    }

    public void OooOOOO() {
        NativeAd nativeAd = this.OooO0Oo;
        if (nativeAd != null) {
            nativeAd.destory();
            this.OooO0OO.setAdListener(null);
            this.OooO0OO.setAdSourceStatusListener(null);
            this.OooO0o0 = null;
            this.OooO0oO = null;
        }
        ATNativeAdView aTNativeAdView = this.OooO0o;
        if (aTNativeAdView != null) {
            aTNativeAdView.destory();
            this.OooO0o = null;
        }
    }

    public void OooOOOo() {
        NativeAd nativeAd = this.OooO0Oo;
        if (nativeAd != null) {
            nativeAd.onPause();
        }
    }

    public void OooOOo0() {
        NativeAd nativeAd = this.OooO0Oo;
        if (nativeAd != null) {
            nativeAd.onResume();
        }
    }

    public void OooOOoo() {
        ATSplashAd aTSplashAd = this.OooO0O0;
        if (aTSplashAd != null) {
            aTSplashAd.setAdListener(null);
            this.OooO0O0.setAdDownloadListener(null);
            this.OooO0O0.setAdSourceStatusListener(null);
            this.OooO0O0 = null;
        }
    }
}
