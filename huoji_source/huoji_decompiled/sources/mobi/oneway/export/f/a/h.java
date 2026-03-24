package mobi.oneway.export.f.a;

import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.b.a;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public class h extends a implements OWSplashAdListener {
    public h(mobi.oneway.export.f.a aVar) {
        super(aVar);
    }

    @Override // mobi.oneway.export.f.a.a
    public AdType c() {
        return AdType.splash;
    }

    @Override // mobi.oneway.export.AdListener.OWSplashAdListener
    public void onAdClick() {
        a(EventType.click);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.d(null);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWSplashAdListener
    public void onAdError(OnewaySdkError onewaySdkError, String str) {
        a(onewaySdkError, str);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.b, onewaySdkError, str);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWSplashAdListener
    public void onAdFinish() {
        a(EventType.end);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a((String) null, (OnewayAdCloseType) null, (String) null);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWSplashAdListener
    public void onAdShow() {
        mobi.oneway.export.b.a.a().a(a.EnumC0243a.TYPE_SHOW, b(), a());
        a(EventType.show);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.c(null);
        }
    }
}
