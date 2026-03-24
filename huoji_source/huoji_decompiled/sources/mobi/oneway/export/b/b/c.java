package mobi.oneway.export.b.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b<OWFeedAdListener> {
    private Map<String, List<IFeedAd>> c;
    private List<String> d;
    private List<mobi.oneway.export.f.a> e;

    public c(AdType adType, List<mobi.oneway.export.f.a> list, List<String> list2, long j) {
        super(adType, list2, j);
        this.c = new HashMap();
        this.e = list;
        this.d = list2;
    }

    private List<IFeedAd> f() {
        mobi.oneway.export.f.a aVarA;
        List<IFeedAd> arrayList = new ArrayList<>();
        Iterator<String> it = this.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                aVarA = null;
                break;
            }
            String next = it.next();
            List<IFeedAd> list = this.c.get(next);
            if (list != null) {
                aVarA = mobi.oneway.export.f.d.a(this.e, next);
                arrayList = list;
                break;
            }
            arrayList = list;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, new mobi.oneway.export.feed.a(arrayList.get(i), aVarA));
        }
        return arrayList;
    }

    @Override // mobi.oneway.export.b.b.b
    public void a() {
        if (this.a != 0) {
            ((OWFeedAdListener) this.a).onAdLoad(f());
        }
    }

    @Override // mobi.oneway.export.b.b.b
    public void a(String str) {
        T t = this.a;
        if (t != 0) {
            ((OWFeedAdListener) t).onError(OnewaySdkError.LOAD_ERROR, str);
        }
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, List<IFeedAd> list) {
        f(str);
        this.c.put(str, list);
        if (!d() || this.a == 0) {
            return;
        }
        ((OWFeedAdListener) this.a).onAdLoad(f());
    }

    @Override // mobi.oneway.export.b.b.d
    public void a(String str, OnewayAdCloseType onewayAdCloseType) {
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
        ((OWFeedAdListener) t).onError(onewaySdkError, str2);
    }

    @Override // mobi.oneway.export.b.b.d
    public void b(String str) {
    }

    @Override // mobi.oneway.export.b.b.b
    public void c() {
        super.c();
        this.c.clear();
    }

    @Override // mobi.oneway.export.b.b.d
    public void c(String str) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void d(String str) {
    }

    @Override // mobi.oneway.export.b.b.d
    public void e(String str) {
    }
}
