package mobi.oneway.export.f.a;

import java.util.HashSet;
import java.util.Set;
import mobi.oneway.export.AdListener.feed.OWFeedAdEventListener;
import mobi.oneway.export.b.a;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public class b implements OWFeedAdEventListener {
    private static Set<String> a = new HashSet();
    private static Set<String> b = new HashSet();
    private mobi.oneway.export.f.e c;
    private OWFeedAdEventListener d;
    private String e;
    private String f;

    public b(mobi.oneway.export.f.a aVar, OWFeedAdEventListener oWFeedAdEventListener) {
        this.c = new mobi.oneway.export.f.e(AdType.feed, aVar);
        this.d = oWFeedAdEventListener;
        this.e = aVar.g();
        this.f = aVar.f();
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdEventListener
    public void onClicked(IFeedAd iFeedAd) {
        String string = iFeedAd.toString();
        if (!b.contains(string)) {
            this.c.a(EventType.click, null);
            b.add(string);
        }
        OWFeedAdEventListener oWFeedAdEventListener = this.d;
        if (oWFeedAdEventListener != null) {
            oWFeedAdEventListener.onClicked(iFeedAd);
        }
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdEventListener
    public void onExposured(IFeedAd iFeedAd) {
        String string = iFeedAd.toString();
        if (!a.contains(string)) {
            mobi.oneway.export.b.a.a().a(a.EnumC0243a.TYPE_SHOW, this.e, this.f);
            this.c.a(EventType.show, null);
            a.add(string);
        }
        OWFeedAdEventListener oWFeedAdEventListener = this.d;
        if (oWFeedAdEventListener != null) {
            oWFeedAdEventListener.onExposured(iFeedAd);
        }
    }
}
