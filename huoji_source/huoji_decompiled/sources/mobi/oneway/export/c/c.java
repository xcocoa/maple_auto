package mobi.oneway.export.c;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static c a;

    private c() {
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    public void a(Context context) {
        a aVar = new a(context);
        aVar.a();
        Thread.setDefaultUncaughtExceptionHandler(new d(aVar));
    }
}
