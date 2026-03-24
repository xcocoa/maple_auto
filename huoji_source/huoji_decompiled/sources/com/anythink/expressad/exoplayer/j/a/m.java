package com.anythink.expressad.exoplayer.j.a;

import android.os.ConditionVariable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.anythink.expressad.exoplayer.j.a.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class m implements a {
    private static final String a = "SimpleCache";
    private static final HashSet<File> b = new HashSet<>();
    private static boolean c;
    private final File d;
    private final d e;
    private final h f;
    private final HashMap<String, ArrayList<a.b>> g;
    private long h;
    private boolean i;

    private m(File file, d dVar) {
        this(file, dVar, null, false);
    }

    private m(File file, d dVar, h hVar) {
        if (!c(file)) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: ".concat(String.valueOf(file)));
        }
        this.d = file;
        this.e = dVar;
        this.f = hVar;
        this.g = new HashMap<>();
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("SimpleCache.initialize()") { // from class: com.anythink.expressad.exoplayer.j.a.m.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                synchronized (m.this) {
                    conditionVariable.open();
                    m.a(m.this);
                    d unused = m.this.e;
                }
            }
        }.start();
        conditionVariable.block();
    }

    private m(File file, d dVar, byte[] bArr) {
        this(file, dVar, bArr, bArr != null);
    }

    private m(File file, d dVar, byte[] bArr, boolean z) {
        this(file, dVar, new h(file, bArr, z));
    }

    private void a(e eVar, boolean z) {
        g gVarB = this.f.b(eVar.a);
        if (gVarB == null || !gVarB.a(eVar)) {
            return;
        }
        this.h -= eVar.c;
        if (z) {
            try {
                this.f.d(gVarB.b);
                this.f.b();
            } finally {
                c(eVar);
            }
        }
    }

    public static /* synthetic */ void a(m mVar) throws Throwable {
        if (!mVar.d.exists()) {
            mVar.d.mkdirs();
            return;
        }
        mVar.f.a();
        File[] fileArrListFiles = mVar.d.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!file.getName().equals(h.a)) {
                    n nVarA = file.length() > 0 ? n.a(file, mVar.f) : null;
                    if (nVarA != null) {
                        mVar.a(nVarA);
                    } else {
                        file.delete();
                    }
                }
            }
            mVar.f.d();
            try {
                mVar.f.b();
            } catch (a.C0126a e) {
                Log.e(a, "Storing index file failed", e);
            }
        }
    }

    private void a(n nVar) {
        this.f.a(nVar.a).a(nVar);
        this.h += nVar.c;
        b(nVar);
    }

    private void b(n nVar) {
        ArrayList<a.b> arrayList = this.g.get(nVar.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size);
            }
        }
    }

    private static synchronized boolean b(File file) {
        return b.contains(file.getAbsoluteFile());
    }

    private void c(e eVar) {
        ArrayList<a.b> arrayList = this.g.get(eVar.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size);
            }
        }
    }

    private void c(n nVar) {
        ArrayList<a.b> arrayList = this.g.get(nVar.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size);
            }
        }
    }

    private static synchronized boolean c(File file) {
        if (c) {
            return true;
        }
        return b.add(file.getAbsoluteFile());
    }

    @Deprecated
    private static synchronized void d() {
        c = true;
        b.clear();
    }

    private static synchronized void d(File file) {
        if (!c) {
            b.remove(file.getAbsoluteFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.anythink.expressad.exoplayer.j.a.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public synchronized n a(String str, long j) {
        n nVarB;
        while (true) {
            nVarB = b(str, j);
            if (nVarB == null) {
                wait();
            }
        }
        return nVarB;
    }

    private void e() throws Throwable {
        if (!this.d.exists()) {
            this.d.mkdirs();
            return;
        }
        this.f.a();
        File[] fileArrListFiles = this.d.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!file.getName().equals(h.a)) {
                n nVarA = file.length() > 0 ? n.a(file, this.f) : null;
                if (nVarA != null) {
                    a(nVarA);
                } else {
                    file.delete();
                }
            }
        }
        this.f.d();
        try {
            this.f.b();
        } catch (a.C0126a e) {
            Log.e(a, "Storing index file failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.anythink.expressad.exoplayer.j.a.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public synchronized n b(String str, long j) {
        n nVarA;
        n nVarB;
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        g gVarB = this.f.b(str);
        if (gVarB == null) {
            nVarB = n.b(str, j);
        } else {
            while (true) {
                nVarA = gVarB.a(j);
                if (!nVarA.d || nVarA.e.exists()) {
                    break;
                }
                f();
            }
            nVarB = nVarA;
        }
        if (!nVarB.d) {
            g gVarA = this.f.a(str);
            if (gVarA.b()) {
                return null;
            }
            gVarA.a(true);
            return nVarB;
        }
        n nVarB2 = this.f.b(str).b(nVarB);
        ArrayList<a.b> arrayList = this.g.get(nVarB.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size);
            }
        }
        return nVarB2;
    }

    private void f() throws Throwable {
        ArrayList arrayList = new ArrayList();
        Iterator<g> it = this.f.c().iterator();
        while (it.hasNext()) {
            for (n nVar : it.next().c()) {
                if (!nVar.e.exists()) {
                    arrayList.add(nVar);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            a((e) arrayList.get(i), false);
        }
        this.f.d();
        this.f.b();
    }

    private n g(String str, long j) throws Throwable {
        n nVarA;
        g gVarB = this.f.b(str);
        if (gVarB == null) {
            return n.b(str, j);
        }
        while (true) {
            nVarA = gVarB.a(j);
            if (!nVarA.d || nVarA.e.exists()) {
                break;
            }
            f();
        }
        return nVarA;
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    @NonNull
    public final synchronized NavigableSet<e> a(String str) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        g gVarB = this.f.b(str);
        if (gVarB != null && !gVarB.d()) {
            return new TreeSet((Collection) gVarB.c());
        }
        return new TreeSet();
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized NavigableSet<e> a(String str, a.b bVar) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        ArrayList<a.b> arrayList = this.g.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.g.put(str, arrayList);
        }
        arrayList.add(bVar);
        return a(str);
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void a() {
        if (this.i) {
            return;
        }
        this.g.clear();
        try {
            f();
        } finally {
            d(this.d);
            this.i = true;
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void a(e eVar) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        g gVarB = this.f.b(eVar.a);
        com.anythink.expressad.exoplayer.k.a.a(gVarB);
        com.anythink.expressad.exoplayer.k.a.b(gVarB.b());
        gVarB.a(false);
        this.f.d(gVarB.b);
        notifyAll();
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void a(File file) {
        boolean z = true;
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        n nVarA = n.a(file, this.f);
        com.anythink.expressad.exoplayer.k.a.b(nVarA != null);
        g gVarB = this.f.b(nVarA.a);
        com.anythink.expressad.exoplayer.k.a.a(gVarB);
        com.anythink.expressad.exoplayer.k.a.b(gVarB.b());
        if (file.exists()) {
            if (file.length() == 0) {
                file.delete();
                return;
            }
            long jA = j.a(gVarB.a());
            if (jA != -1) {
                if (nVarA.b + nVarA.c > jA) {
                    z = false;
                }
                com.anythink.expressad.exoplayer.k.a.b(z);
            }
            a(nVarA);
            this.f.b();
            notifyAll();
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void a(String str, k kVar) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        this.f.a(str, kVar);
        this.f.b();
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized boolean a(String str, long j, long j2) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        g gVarB = this.f.b(str);
        if (gVarB != null) {
            if (gVarB.a(j, j2) >= j2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized long b(String str) {
        return j.a(c(str));
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized long b(String str, long j, long j2) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        g gVarB = this.f.b(str);
        if (gVarB != null) {
            return gVarB.a(j, j2);
        }
        return -j2;
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized Set<String> b() {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        return new HashSet(this.f.e());
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void b(e eVar) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        a(eVar, true);
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void b(String str, a.b bVar) {
        if (this.i) {
            return;
        }
        ArrayList<a.b> arrayList = this.g.get(str);
        if (arrayList != null) {
            arrayList.remove(bVar);
            if (arrayList.isEmpty()) {
                this.g.remove(str);
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized long c() {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        return this.h;
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized i c(String str) {
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        return this.f.e(str);
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized File c(String str, long j) {
        g gVarB;
        com.anythink.expressad.exoplayer.k.a.b(!this.i);
        gVarB = this.f.b(str);
        com.anythink.expressad.exoplayer.k.a.a(gVarB);
        com.anythink.expressad.exoplayer.k.a.b(gVarB.b());
        if (!this.d.exists()) {
            this.d.mkdirs();
            f();
        }
        return n.a(this.d, gVarB.a, j, System.currentTimeMillis());
    }

    @Override // com.anythink.expressad.exoplayer.j.a.a
    public final synchronized void d(String str, long j) {
        k kVar = new k();
        j.a(kVar, j);
        a(str, kVar);
    }
}
