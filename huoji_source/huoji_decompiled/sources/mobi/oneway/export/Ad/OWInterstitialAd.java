package mobi.oneway.export.Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInterstitialAdListener;
import mobi.oneway.export.b.a.a;
import mobi.oneway.export.e.b;
import mobi.oneway.export.enums.AdType;

/* JADX INFO: loaded from: classes2.dex */
public class OWInterstitialAd {
    private a a;
    private final AdType b = AdType.interstitial;

    public OWInterstitialAd(final Activity activity, final String str, final OWInterstitialAdListener oWInterstitialAdListener) {
        OnewaySdk.checkSdkConfigured();
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInterstitialAd oWInterstitialAd = OWInterstitialAd.this;
                oWInterstitialAd.a = new a(oWInterstitialAd.b, str);
                OWInterstitialAd.this.a.a(activity, oWInterstitialAdListener);
            }
        });
    }

    public void destory() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.c();
            this.a = null;
        }
    }

    public boolean isReady() {
        a aVar = this.a;
        if (aVar == null) {
            return false;
        }
        return aVar.b();
    }

    public void loadAd() {
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialAd.this.a != null) {
                    OWInterstitialAd.this.a.a();
                }
            }
        });
    }

    public void setListener(final OWInterstitialAdListener oWInterstitialAdListener) {
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialAd.this.a != null) {
                    OWInterstitialAd.this.a.a(oWInterstitialAdListener);
                }
            }
        });
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void show(Activity activity, String str) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(activity, str);
        }
    }
}
