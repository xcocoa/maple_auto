package mobi.oneway.export.e;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static List<Runnable> a;
    private static b c;
    private static Handler d = new Handler(Looper.getMainLooper());
    private volatile boolean b;

    private b() {
    }

    public static b a() {
        if (c == null) {
            c = new b();
        }
        return c;
    }

    private static void e() {
        List<Runnable> list = a;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            d.post(it.next());
        }
        a.clear();
    }

    private void f() {
        if (a == null) {
            a = new ArrayList();
        }
    }

    public void a(Runnable runnable) {
        try {
            if (this.b) {
                d.post(runnable);
            } else {
                f();
                a.add(runnable);
            }
        } catch (Exception unused) {
        }
    }

    public void b() {
        this.b = false;
        f();
    }

    public void b(Runnable runnable) {
        try {
            a.remove(runnable);
        } catch (Exception unused) {
        }
    }

    public void c() {
        this.b = true;
        e();
    }

    public void c(Runnable runnable) {
        d.post(runnable);
    }

    public boolean d() {
        return this.b;
    }
}
