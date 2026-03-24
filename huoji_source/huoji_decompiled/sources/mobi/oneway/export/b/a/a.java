package mobi.oneway.export.b.a;

import android.app.Activity;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.AdListener.AdMonitor;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.b.b.e;
import mobi.oneway.export.b.b.f;
import mobi.oneway.export.b.b.g;
import mobi.oneway.export.b.b.h;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.f.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private Object a;
    private AdType b;
    private List<mobi.oneway.export.f.a> c;
    private mobi.oneway.export.b.b.b d;

    /* JADX INFO: renamed from: mobi.oneway.export.b.a.a$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[AdType.values().length];
            a = iArr;
            try {
                iArr[AdType.rewarded.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[AdType.interstitial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[AdType.interactive.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[AdType.interstitialimage.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(AdType adType, String str) {
        this.b = adType;
        this.c = d.a(str, adType);
    }

    private void a(OnewaySdkError onewaySdkError, String str) {
        if (this.a == null) {
            return;
        }
        int i = AnonymousClass1.a[this.b.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                ((OWInteractiveAdListener) this.a).onSdkError(onewaySdkError, str);
                return;
            } else if (i != 4) {
                return;
            }
        }
        ((AdMonitor) this.a).onSdkError(onewaySdkError, str);
    }

    private void d() {
        mobi.oneway.export.b.b.b hVar;
        List<String> listA = d.a(this.c);
        long jC = mobi.oneway.export.b.a.a().c();
        int i = AnonymousClass1.a[this.b.ordinal()];
        if (i == 1) {
            hVar = new h(this.b, listA, jC);
        } else if (i == 2) {
            hVar = new f(this.b, listA, jC);
        } else if (i == 3) {
            hVar = new e(this.b, listA, jC);
        } else if (i != 4) {
            return;
        } else {
            hVar = new g(this.b, listA, jC);
        }
        this.d = hVar;
    }

    public void a() {
        if (this.c == null) {
            a(OnewaySdkError.LOAD_ERROR, this.b.name() + mobi.oneway.export.a.a.m);
            return;
        }
        mobi.oneway.export.b.b.b bVar = this.d;
        if (bVar != null) {
            bVar.c();
        }
        Iterator<mobi.oneway.export.f.a> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(this.b);
        }
    }

    public void a(Activity activity, Object obj) {
        this.a = obj;
        if (this.c == null) {
            return;
        }
        d();
        mobi.oneway.export.b.b.b bVar = this.d;
        if (bVar != null) {
            bVar.a(obj);
        }
        for (mobi.oneway.export.f.a aVar : this.c) {
            int i = AnonymousClass1.a[this.b.ordinal()];
            if (i == 1) {
                aVar.a(activity, (h) this.d);
            } else if (i == 2) {
                aVar.a(activity, (f) this.d);
            } else if (i == 3) {
                aVar.a(activity, (e) this.d);
            } else if (i == 4) {
                aVar.a(activity, (g) this.d);
            }
        }
    }

    public void a(Activity activity, String str) {
        if (str == null) {
            str = "";
        }
        List<mobi.oneway.export.f.a> list = this.c;
        if (list == null) {
            return;
        }
        for (mobi.oneway.export.f.a aVar : list) {
            if (aVar.b(this.b)) {
                aVar.a(this.b, activity, str);
                return;
            }
        }
    }

    public void a(Object obj) {
        this.a = obj;
        if (this.c == null) {
            return;
        }
        mobi.oneway.export.b.b.b bVar = this.d;
        if (bVar != null) {
            bVar.a(obj);
        }
        for (mobi.oneway.export.f.a aVar : this.c) {
            int i = AnonymousClass1.a[this.b.ordinal()];
            if (i == 1) {
                aVar.a((h) this.d);
            } else if (i == 2) {
                aVar.a((f) this.d);
            } else if (i == 3) {
                aVar.a((e) this.d);
            } else if (i == 4) {
                aVar.a((g) this.d);
            }
        }
    }

    public boolean b() {
        mobi.oneway.export.b.b.b bVar;
        if (this.c != null && (bVar = this.d) != null && bVar.b()) {
            Iterator<mobi.oneway.export.f.a> it = this.c.iterator();
            while (it.hasNext()) {
                if (it.next().b(this.b)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void c() {
        this.a = null;
        mobi.oneway.export.b.b.b bVar = this.d;
        if (bVar != null) {
            bVar.a((Object) null);
            this.d = null;
        }
        List<mobi.oneway.export.f.a> list = this.c;
        if (list == null) {
            return;
        }
        Iterator<mobi.oneway.export.f.a> it = list.iterator();
        while (it.hasNext()) {
            it.next().c(this.b);
        }
    }
}
