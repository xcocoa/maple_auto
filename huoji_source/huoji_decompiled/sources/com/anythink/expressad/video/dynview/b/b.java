package com.anythink.expressad.video.dynview.b;

import android.view.View;
import com.anythink.expressad.video.dynview.c;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static volatile b a;

    private b() {
    }

    public static b a() {
        b bVar;
        if (a != null) {
            return a;
        }
        synchronized (b.class) {
            if (a == null) {
                a = new b();
            }
            bVar = a;
        }
        return bVar;
    }

    private static void a(View view) {
        new com.anythink.expressad.video.dynview.j.b().a(view);
    }

    public static void a(View view, c cVar) {
        if (cVar == null) {
            return;
        }
        int iH = cVar.h();
        if (iH == 1) {
            new com.anythink.expressad.video.dynview.j.b().a(view);
            return;
        }
        if (iH == 102 || iH == 202 || iH == 302 || iH == 802 || iH == 904) {
            new com.anythink.expressad.video.dynview.j.b().a(view, cVar);
            return;
        }
        if (iH == 3) {
            new com.anythink.expressad.video.dynview.j.b().b(view, cVar);
        } else if (iH == 4) {
            new com.anythink.expressad.video.dynview.j.b().c(view, cVar);
        } else {
            if (iH != 5) {
                return;
            }
            new com.anythink.expressad.video.dynview.j.b();
        }
    }

    public static void b() {
        if (a != null) {
            a = null;
        }
    }

    private static void b(View view, c cVar) {
        new com.anythink.expressad.video.dynview.j.b().a(view, cVar);
    }

    private static void c() {
        new com.anythink.expressad.video.dynview.j.b();
    }

    private static void c(View view, c cVar) {
        new com.anythink.expressad.video.dynview.j.b().b(view, cVar);
    }

    private static void d(View view, c cVar) {
        new com.anythink.expressad.video.dynview.j.b().c(view, cVar);
    }
}
