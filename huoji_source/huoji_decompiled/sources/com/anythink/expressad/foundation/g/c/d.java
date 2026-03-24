package com.anythink.expressad.foundation.g.c;

import android.util.Log;
import com.anythink.expressad.foundation.h.r;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private static final String a = "AnythinkDirManager";
    private static d d;
    private f b;
    private ArrayList<a> c = new ArrayList<>();

    public static final class a {
        public com.anythink.expressad.foundation.g.c.a a;
        public File b;

        public a(com.anythink.expressad.foundation.g.c.a aVar, File file) {
            this.a = aVar;
            this.b = file;
        }
    }

    private d(f fVar) {
        this.b = fVar;
    }

    public static synchronized d a() {
        if (d == null && com.anythink.expressad.foundation.b.a.c().e() != null) {
            r.a(com.anythink.expressad.foundation.b.a.c().e());
        }
        if (d == null) {
            Log.e(a, "mDirectoryManager == null");
        }
        return d;
    }

    public static File a(com.anythink.expressad.foundation.g.c.a aVar) {
        try {
            if (a() == null || a().c == null || a().c.size() <= 0) {
                return null;
            }
            for (a aVar2 : a().c) {
                if (aVar2.a.equals(aVar)) {
                    return aVar2.b;
                }
            }
            return null;
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    public static synchronized void a(f fVar) {
        if (d == null) {
            d = new d(fVar);
        }
    }

    private boolean a(e eVar) {
        String strB;
        e eVarC = eVar.c();
        if (eVarC == null) {
            strB = eVar.b();
        } else {
            File fileA = a(eVarC.a());
            if (fileA == null) {
                return false;
            }
            strB = fileA.getAbsolutePath() + File.separator + eVar.b();
        }
        File file = new File(strB);
        if (!(!file.exists() ? file.mkdirs() : true)) {
            return false;
        }
        this.c.add(new a(eVar.a(), file));
        List<e> listD = eVar.d();
        if (listD != null) {
            Iterator<e> it = listD.iterator();
            while (it.hasNext()) {
                if (!a(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String b(com.anythink.expressad.foundation.g.c.a aVar) {
        File fileA = a(aVar);
        if (fileA != null) {
            return fileA.getAbsolutePath();
        }
        return null;
    }

    public final boolean b() {
        return a(this.b.b());
    }
}
