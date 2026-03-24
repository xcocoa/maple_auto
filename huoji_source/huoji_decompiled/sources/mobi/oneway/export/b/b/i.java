package mobi.oneway.export.b.b;

import java.util.List;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public class i extends b<OWSplashAdListener> {
    public i(AdType adType, List<String> list, long j) {
        super(adType, list, j);
    }

    @Override // mobi.oneway.export.b.b.b
    public void a() {
    }

    @Override // mobi.oneway.export.b.b.b
    public void a(String str) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, List<IFeedAd> list) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
        T t = this.a;
        if (t != 0) {
            ((OWSplashAdListener) t).onAdFinish();
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewaySdkError onewaySdkError, String str2) {
        T t = this.a;
        if (t != 0) {
            ((OWSplashAdListener) t).onAdError(onewaySdkError, str2);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void b(String str) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void c(String str) {
        T t = this.a;
        if (t != 0) {
            ((OWSplashAdListener) t).onAdShow();
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void d(String str) {
        T t = this.a;
        if (t != 0) {
            ((OWSplashAdListener) t).onAdClick();
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void e(String str) {
    }
}
