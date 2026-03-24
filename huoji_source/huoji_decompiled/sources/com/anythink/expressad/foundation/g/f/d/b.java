package com.anythink.expressad.foundation.g.f.d;

import com.anythink.expressad.foundation.g.f.i;
import com.anythink.expressad.foundation.g.f.j;
import com.anythink.expressad.foundation.g.f.k;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private j a;
    private LinkedList<a> c = new LinkedList<>();
    private int b = 3;

    public class a {
        public static final int a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
        private String g;
        private File h;
        private com.anythink.expressad.foundation.g.f.e<Void> i;
        private com.anythink.expressad.foundation.g.f.d.a j;
        private int k;

        /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.f.d.b$a$1, reason: invalid class name */
        public class AnonymousClass1 extends com.anythink.expressad.foundation.g.f.f<Void> {
            public boolean a;

            public AnonymousClass1() {
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void a() {
                if (this.a) {
                    return;
                }
                a.c(a.this);
                a.this.i.a();
                a aVar = a.this;
                b.a(b.this, aVar);
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void a(long j, long j2) {
                a.this.i.a(j, j2);
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void a(com.anythink.expressad.foundation.g.f.a.a aVar) {
                if (this.a) {
                    return;
                }
                a.this.i.a(aVar);
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void a(k kVar) {
                if (this.a) {
                    return;
                }
                a.this.i.a(kVar);
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void b() {
                a.this.i.b();
            }

            @Override // com.anythink.expressad.foundation.g.f.f, com.anythink.expressad.foundation.g.f.e
            public final void c() {
                a.this.i.c();
                this.a = true;
            }
        }

        private a(File file, String str, com.anythink.expressad.foundation.g.f.e<Void> eVar) {
            this.h = file;
            this.i = eVar;
            this.g = str;
        }

        public /* synthetic */ a(b bVar, File file, String str, com.anythink.expressad.foundation.g.f.e eVar, byte b2) {
            this(file, str, (com.anythink.expressad.foundation.g.f.e<Void>) eVar);
        }

        private a(b bVar, String str, String str2, com.anythink.expressad.foundation.g.f.e<Void> eVar) {
            this(new File(str), str2, eVar);
        }

        public static /* synthetic */ boolean a(a aVar) {
            if (aVar.k != 0) {
                return false;
            }
            com.anythink.expressad.foundation.g.f.d.a aVar2 = new com.anythink.expressad.foundation.g.f.d.a(aVar.h, aVar.g);
            aVar.j = aVar2;
            aVar2.a((com.anythink.expressad.foundation.g.f.e) aVar.new AnonymousClass1());
            aVar.k = 1;
            b.this.a.a((i) aVar.j);
            return true;
        }

        public static /* synthetic */ int c(a aVar) {
            aVar.k = 3;
            return 3;
        }

        private boolean c() {
            if (this.k != 0) {
                return false;
            }
            com.anythink.expressad.foundation.g.f.d.a aVar = new com.anythink.expressad.foundation.g.f.d.a(this.h, this.g);
            this.j = aVar;
            aVar.a((com.anythink.expressad.foundation.g.f.e) new AnonymousClass1());
            this.k = 1;
            b.this.a.a((i) this.j);
            return true;
        }

        private int d() {
            return this.k;
        }

        private boolean e() {
            int i = this.k;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                this.j.e();
            }
            this.k = 2;
            b.this.b();
            return true;
        }

        private boolean f() {
            if (this.k != 2) {
                return false;
            }
            this.k = 0;
            b.this.b();
            return true;
        }

        public final boolean a() {
            return this.k == 1;
        }

        public final boolean b() {
            int i = this.k;
            if (i == 4 || i == 3) {
                return false;
            }
            if (i == 1) {
                this.j.e();
            }
            this.k = 4;
            b.a(b.this, this);
            return true;
        }
    }

    public b(j jVar) {
        this.a = jVar;
    }

    private static com.anythink.expressad.foundation.g.f.d.a a(File file, String str) {
        return new com.anythink.expressad.foundation.g.f.d.a(file, str);
    }

    private a a(String str, String str2, com.anythink.expressad.foundation.g.f.e<Void> eVar) {
        return a(new File(str), str2, eVar);
    }

    private void a(a aVar) {
        synchronized (this) {
            this.c.remove(aVar);
        }
        b();
    }

    public static /* synthetic */ void a(b bVar, a aVar) {
        synchronized (bVar) {
            bVar.c.remove(aVar);
        }
        bVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        synchronized (this) {
            int i = 0;
            Iterator<a> it = this.c.iterator();
            while (it.hasNext()) {
                if (it.next().a()) {
                    i++;
                }
            }
            if (i >= this.b) {
                return;
            }
            Iterator<a> it2 = this.c.iterator();
            while (it2.hasNext()) {
                if (a.a(it2.next()) && (i = i + 1) == this.b) {
                    return;
                }
            }
        }
    }

    public final a a(File file, String str, com.anythink.expressad.foundation.g.f.e<Void> eVar) {
        a aVar = new a(this, file, str, eVar, (byte) 0);
        synchronized (this) {
            this.c.add(aVar);
        }
        b();
        return aVar;
    }

    public final void a() {
        synchronized (this) {
            while (!this.c.isEmpty()) {
                this.c.get(0).b();
            }
        }
    }
}
