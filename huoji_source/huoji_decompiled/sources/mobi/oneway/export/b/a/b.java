package mobi.oneway.export.b.a;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.f.d;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private final AdType a = AdType.feed;
    private String b;
    private Context c;

    public b(Context context, String str) {
        this.b = str;
        this.c = context;
    }

    public void a(OWFeedAdListener oWFeedAdListener) {
        List<mobi.oneway.export.f.a> listA = d.a(this.b, this.a);
        if (listA == null) {
            if (oWFeedAdListener != null) {
                oWFeedAdListener.onError(OnewaySdkError.INITIALIZE_FAILED, this.a.name() + mobi.oneway.export.a.a.m);
                return;
            }
            return;
        }
        mobi.oneway.export.b.b.c cVar = new mobi.oneway.export.b.b.c(this.a, listA, d.a(listA), mobi.oneway.export.b.a.a().c());
        cVar.a(oWFeedAdListener);
        cVar.c();
        Iterator<mobi.oneway.export.f.a> it = listA.iterator();
        while (it.hasNext()) {
            it.next().a(this.c, cVar);
        }
    }
}
