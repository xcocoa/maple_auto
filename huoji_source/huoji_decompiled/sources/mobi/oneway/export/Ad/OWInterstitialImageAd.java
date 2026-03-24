package mobi.oneway.export.Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInterstitialImageAdListener;
import mobi.oneway.export.b.a.a;
import mobi.oneway.export.e.b;
import mobi.oneway.export.enums.AdType;

/* JADX INFO: loaded from: classes2.dex */
public class OWInterstitialImageAd {
    private a a;
    private final AdType b = AdType.interstitialimage;

    public OWInterstitialImageAd(final Activity activity, final String str, final OWInterstitialImageAdListener oWInterstitialImageAdListener) {
        OnewaySdk.checkSdkConfigured();
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInterstitialImageAd oWInterstitialImageAd = OWInterstitialImageAd.this;
                oWInterstitialImageAd.a = new a(oWInterstitialImageAd.b, str);
                OWInterstitialImageAd.this.a.a(activity, oWInterstitialImageAdListener);
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
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialImageAd.this.a != null) {
                    OWInterstitialImageAd.this.a.a();
                }
            }
        });
    }

    public void setListener(final OWInterstitialImageAdListener oWInterstitialImageAdListener) {
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialImageAd.this.a != null) {
                    OWInterstitialImageAd.this.a.a(oWInterstitialImageAdListener);
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
