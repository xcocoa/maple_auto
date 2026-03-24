package mobi.oneway.export.Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.b.a.a;
import mobi.oneway.export.e.b;
import mobi.oneway.export.enums.AdType;

/* JADX INFO: loaded from: classes2.dex */
public class OWInteractiveAd {
    private a a;
    private final AdType b = AdType.interactive;

    public OWInteractiveAd(final Activity activity, final String str, final OWInteractiveAdListener oWInteractiveAdListener) {
        OnewaySdk.checkSdkConfigured();
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInteractiveAd oWInteractiveAd = OWInteractiveAd.this;
                oWInteractiveAd.a = new a(oWInteractiveAd.b, str);
                OWInteractiveAd.this.a.a(activity, oWInteractiveAdListener);
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
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInteractiveAd.this.a != null) {
                    OWInteractiveAd.this.a.a();
                }
            }
        });
    }

    public void setListener(final OWInteractiveAdListener oWInteractiveAdListener) {
        b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInteractiveAd.this.a != null) {
                    OWInteractiveAd.this.a.a(oWInteractiveAdListener);
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
