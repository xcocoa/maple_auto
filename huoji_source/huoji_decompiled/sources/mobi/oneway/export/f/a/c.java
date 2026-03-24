package mobi.oneway.export.f.a;

import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a implements OWFeedAdListener {
    public c(mobi.oneway.export.f.a aVar) {
        super(aVar);
    }

    @Override // mobi.oneway.export.f.a.a
    public AdType c() {
        return AdType.feed;
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdListener
    public void onAdLoad(List<IFeedAd> list) {
        a(EventType.ready);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.b, list);
        }
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdListener
    public void onError(OnewaySdkError onewaySdkError, String str) {
        a(onewaySdkError, str);
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.b, onewaySdkError, str);
        }
    }
}
