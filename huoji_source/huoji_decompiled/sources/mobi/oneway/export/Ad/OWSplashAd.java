package mobi.oneway.export.Ad;

import android.app.Activity;
import android.view.ViewGroup;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.b.a.c;
import mobi.oneway.export.e.b;
import mobi.oneway.export.e.d;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public class OWSplashAd {
    private c a;

    public OWSplashAd(String str) {
        this.a = new c(str);
    }

    public void show(Activity activity, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener) {
        show(activity, viewGroup, oWSplashAdListener, 0L);
    }

    public void show(final Activity activity, final ViewGroup viewGroup, final OWSplashAdListener oWSplashAdListener, final long j) {
        OnewaySdk.checkSdkConfigured();
        final Runnable runnable = new Runnable() { // from class: mobi.oneway.export.Ad.OWSplashAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWSplashAd.this.a.a(activity, viewGroup, oWSplashAdListener, j);
            }
        };
        b.a().a(runnable);
        new d(new d.a() { // from class: mobi.oneway.export.Ad.OWSplashAd.2
            @Override // mobi.oneway.export.e.d.a
            public void timeout() {
                oWSplashAdListener.onAdError(OnewaySdkError.SHOW_ERROR, "Show splash ad timeout");
                b.a().b(runnable);
            }
        }, j).start();
    }
}
