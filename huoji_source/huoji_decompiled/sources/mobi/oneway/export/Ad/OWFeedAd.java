package mobi.oneway.export.Ad;

import android.content.Context;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.b.a.b;

/* JADX INFO: loaded from: classes2.dex */
public class OWFeedAd {
    private b a;

    public OWFeedAd(Context context, String str) {
        OnewaySdk.checkSdkConfigured();
        this.a = new b(context, str);
    }

    public void load(final OWFeedAdListener oWFeedAdListener) {
        mobi.oneway.export.e.b.a().a(new Runnable() { // from class: mobi.oneway.export.Ad.OWFeedAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWFeedAd.this.a.a(oWFeedAdListener);
            }
        });
    }
}
