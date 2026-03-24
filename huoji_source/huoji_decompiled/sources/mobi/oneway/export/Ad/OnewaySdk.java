package mobi.oneway.export.Ad;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import mobi.oneway.export.a.b;
import mobi.oneway.export.c.c;
import mobi.oneway.export.e.a;
import mobi.oneway.export.g.m;

/* JADX INFO: loaded from: classes2.dex */
public class OnewaySdk {
    private static AtomicBoolean a = new AtomicBoolean(false);

    public static void checkSdkConfigured() {
        if (isConfigured()) {
            return;
        }
        m.d(" OnewaySdk.configure method has not invoked first ");
    }

    public static void configure(Context context, String str) {
        if (!a.compareAndSet(false, true)) {
            m.d("config method has been called");
            return;
        }
        if (context == null) {
            m.d("Context must not be null");
            return;
        }
        b.a(str);
        b.a(context.getApplicationContext());
        c.a().a(context);
        mobi.oneway.export.e.b.a().b();
        new a(str).start();
    }

    public static String getVersion() {
        return mobi.oneway.export.a.f;
    }

    public static boolean isConfigured() {
        return a.get();
    }

    public static void setDebugMode(boolean z) {
        m.a(z);
    }
}
