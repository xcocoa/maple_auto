package mobi.oneway.export.f.a;

import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.b.a;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public class d extends a implements OWInteractiveAdListener {
    public d(mobi.oneway.export.f.a aVar) {
        super(aVar);
    }

    @Override // mobi.oneway.export.f.a.a
    public AdType c() {
        return AdType.interactive;
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdClose(String str, OnewayAdCloseType onewayAdCloseType) {
        a(EventType.close);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(str, onewayAdCloseType);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdReady() {
        a(EventType.ready);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.b(this.b);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdShow(String str) {
        mobi.oneway.export.b.a.a().a(a.EnumC0243a.TYPE_SHOW, b(), a());
        a(EventType.show);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.c(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onReward(String str) {
        a(EventType.reward);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.e(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onSdkError(OnewaySdkError onewaySdkError, String str) {
        a(onewaySdkError, str);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.b, onewaySdkError, str);
        }
    }
}
