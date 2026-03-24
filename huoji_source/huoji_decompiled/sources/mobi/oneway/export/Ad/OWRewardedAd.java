package mobi.oneway.export.Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWRewardedAdListener;
import mobi.oneway.export.b.a.a;
import mobi.oneway.export.e.b;
import mobi.oneway.export.enums.AdType;

/* JADX INFO: loaded from: classes2.dex */
public class OWRewardedAd {
    private a a;
    private final AdType b = AdType.rewarded;

    public OWRewardedAd(final Activity activity, final String str, final OWRewardedAdListener oWRewardedAdListener) {
        OnewaySdk.checkSdkConfigured();
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWRewardedAd oWRewardedAd = OWRewardedAd.this;
                oWRewardedAd.a = new a(oWRewardedAd.b, str);
                OWRewardedAd.this.a.a(activity, oWRewardedAdListener);
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
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWRewardedAd.this.a != null) {
                    OWRewardedAd.this.a.a();
                }
            }
        });
    }

    public void setListener(final OWRewardedAdListener oWRewardedAdListener) {
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWRewardedAd.this.a != null) {
                    OWRewardedAd.this.a.a(oWRewardedAdListener);
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
