package mobi.oneway.export.b.b;

import java.util.List;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public class e extends b<OWInteractiveAdListener> {
    public e(AdType adType, List<String> list, long j) {
        super(adType, list, j);
    }

    @Override // mobi.oneway.export.b.b.b
    public void a() {
        T t = this.a;
        if (t != 0) {
            ((OWInteractiveAdListener) t).onAdReady();
        }
    }

    @Override // mobi.oneway.export.b.b.b
    public void a(String str) {
        T t = this.a;
        if (t != 0) {
            ((OWInteractiveAdListener) t).onSdkError(OnewaySdkError.LOAD_ERROR, str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, List<IFeedAd> list) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType) {
        T t = this.a;
        if (t != 0) {
            ((OWInteractiveAdListener) t).onAdClose(str, onewayAdCloseType);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewaySdkError onewaySdkError, String str2) {
        T t;
        g(str);
        if (!e() || (t = this.a) == 0) {
            return;
        }
        ((OWInteractiveAdListener) t).onSdkError(onewaySdkError, str2);
    }

    @Override // mobi.oneway.export.b.b.d
    public void b(String str) {
        T t;
        f(str);
        if (!d() || (t = this.a) == 0) {
            return;
        }
        ((OWInteractiveAdListener) t).onAdReady();
    }

    @Override // mobi.oneway.export.b.b.d
    public void c(String str) {
        a(false);
        T t = this.a;
        if (t != 0) {
            ((OWInteractiveAdListener) t).onAdShow(str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void d(String str) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void e(String str) {
        T t = this.a;
        if (t != 0) {
            ((OWInteractiveAdListener) t).onReward(str);
        }
    }
}
