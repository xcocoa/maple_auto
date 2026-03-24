package mobi.oneway.export.b.b;

import java.util.List;
import mobi.oneway.export.AdListener.AdMonitor;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b<AdMonitor> {
    public a(AdType adType, List<String> list, long j) {
        super(adType, list, j);
    }

    @Override // mobi.oneway.export.b.b.b
    public void a() {
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onAdReady();
        }
    }

    @Override // mobi.oneway.export.b.b.b
    public void a(String str) {
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onSdkError(OnewaySdkError.LOAD_ERROR, str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, List<IFeedAd> list) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType) {
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onAdClose(str, onewayAdCloseType);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onAdFinish(str, onewayAdCloseType, str2);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewaySdkError onewaySdkError, String str2) {
        T t;
        g(str);
        if (!e() || (t = this.a) == 0) {
            return;
        }
        ((AdMonitor) t).onSdkError(onewaySdkError, str2);
    }

    @Override // mobi.oneway.export.b.b.d
    public void b(String str) {
        T t;
        f(str);
        if (!d() || (t = this.a) == 0) {
            return;
        }
        ((AdMonitor) t).onAdReady();
    }

    @Override // mobi.oneway.export.b.b.d
    public void c(String str) {
        a(false);
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onAdShow(str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void d(String str) {
        T t = this.a;
        if (t != 0) {
            ((AdMonitor) t).onAdClick(str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void e(String str) {
    }
}
