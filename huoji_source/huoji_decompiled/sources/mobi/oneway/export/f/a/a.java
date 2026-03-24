package mobi.oneway.export.f.a;

import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public int a;
    public String b;
    public String c;
    public mobi.oneway.export.f.e d;
    public mobi.oneway.export.b.b.d e;

    public a(mobi.oneway.export.f.a aVar) {
        this.a = aVar.a();
        this.b = aVar.f();
        this.c = aVar.g();
        this.d = new mobi.oneway.export.f.e(c(), aVar);
    }

    public String a() {
        return this.b;
    }

    public void a(mobi.oneway.export.b.b.d dVar) {
        this.e = dVar;
    }

    public void a(EventType eventType) {
        this.d.a(eventType, null);
    }

    public void a(OnewaySdkError onewaySdkError, String str) {
        this.d.a(EventType.adFail, onewaySdkError, str);
    }

    public String b() {
        return this.c;
    }

    public void b(OnewaySdkError onewaySdkError, String str) {
        mobi.oneway.export.b.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.b, onewaySdkError, str);
        }
    }

    public abstract AdType c();
}
