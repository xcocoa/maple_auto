package com.anythink.core.common.res.a;

import android.text.TextUtils;
import com.anythink.core.common.a.l;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.g;
import com.anythink.core.common.res.d;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.anythink.core.common.res.image.b {
    public final String a;
    public com.anythink.core.common.res.a.b b;
    public List<AbstractC0094a> j;
    public b k;
    public int l;
    private final int m;
    private final int n;
    private int o;
    private int p;
    private long q;
    private String r;
    private boolean s;

    /* JADX INFO: renamed from: com.anythink.core.common.res.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0094a {
        public abstract void a(String str, String str2);

        public abstract boolean a(int i, long j, long j2);
    }

    public static abstract class b {
        public abstract void a(long j, long j2, long j3, long j4, long j5);

        public abstract void a(String str, String str2, long j, long j2, long j3, long j4);
    }

    public a(String str) {
        super(str);
        this.a = a.class.getSimpleName();
        this.m = 0;
        this.n = 1;
        this.l = -1;
        this.j = new ArrayList();
        this.b = new com.anythink.core.common.res.a.b();
        this.p = 0;
        this.q = 0L;
        this.s = false;
        this.o = 0;
    }

    private void a(int i) {
        this.o = i;
    }

    private synchronized void a(int i, long j) {
        if (this.l != i) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.c);
            sb.append(" notifyDownloadProcess:");
            sb.append(i);
            this.l = i;
        }
        Iterator<AbstractC0094a> it = this.j.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().a(i, j, this.i)) {
                z = i != 100;
                it.remove();
            }
        }
        l.a().a(this.c, this.r, this.i, j, i, z);
    }

    private void a(b bVar) {
        this.k = bVar;
    }

    private void b(int i, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" notifyDownloadFinish: downloadRate:");
        sb.append(i);
        if (i == 100) {
            l.a().a(this.c, this.r, this.i, j, i, true);
            b bVar = this.k;
            if (bVar != null) {
                bVar.a(this.i, this.e, this.g, this.f, this.h);
            }
        }
    }

    private synchronized void b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" notifyLoadFailed: errorCode:");
        sb.append(str);
        sb.append(",errorMsg:");
        sb.append(str2);
        this.o = 0;
        Iterator<AbstractC0094a> it = this.j.iterator();
        while (it.hasNext()) {
            it.next().a(str, str2);
        }
        j();
        b bVar = this.k;
        if (bVar != null) {
            bVar.a(str, str2, this.i, this.e, this.f, this.h);
        }
    }

    private synchronized boolean b(int i) {
        if (this.s) {
            return true;
        }
        com.anythink.core.common.res.a.b bVar = this.b;
        if (bVar.c == 2) {
            if (i >= bVar.a) {
                return false;
            }
        }
        return true;
    }

    private int g() {
        return this.o;
    }

    private void h() {
        String strA = d.a(n.a().f()).a(4);
        if (TextUtils.isEmpty(strA)) {
            b("", "without saveDirectory");
            return;
        }
        File file = new File(strA);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.r = d.a(n.a().f()).c(4, g.a(this.c));
        File file2 = new File(this.r);
        if (file2.exists()) {
            this.q = file2.length();
        }
    }

    private boolean i() {
        int i = this.p;
        if (i != 100) {
            return this.o == 0 && i < 100;
        }
        a(i, this.q);
        b(this.p, this.q);
        return false;
    }

    private synchronized void j() {
        this.j.clear();
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(com.anythink.core.common.o.b.d dVar) {
        com.anythink.core.common.o.b.b.a().a(dVar, 4);
    }

    public final synchronized void a(AbstractC0094a abstractC0094a) {
        if (!this.j.contains(abstractC0094a)) {
            this.j.add(abstractC0094a);
        }
    }

    public final synchronized void a(com.anythink.core.common.res.a.b bVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" setVideoUrlLoaderConfig: mReadyRate:");
        sb.append(bVar.a);
        sb.append(",mVideoCtnType:");
        sb.append(bVar.c);
        com.anythink.core.common.res.a.b bVar2 = this.b;
        int i = bVar2.a;
        int i2 = bVar.a;
        if (i < i2) {
            bVar2.a = i2;
        }
        if (bVar2.c != 1) {
            bVar2.c = bVar.c;
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str, String str2) {
        b(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        FileOutputStream fileOutputStream;
        boolean z;
        int i = 0;
        if (TextUtils.isEmpty(this.r)) {
            z = false;
        } else {
            ?? r2 = 0;
            try {
                ?? r5 = this.q;
                try {
                    if (r5 > 0) {
                        inputStream.skip(r5);
                        fileOutputStream = new FileOutputStream(this.r, true);
                        long j = this.q;
                        int i2 = (int) (((j * 1.0d) / this.i) * 100.0d);
                        this.p = i2;
                        a(i2, j);
                    } else {
                        fileOutputStream = new FileOutputStream(this.r);
                        this.p = 0;
                    }
                    r2 = fileOutputStream;
                    r5 = 2048;
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i3 = inputStream.read(bArr);
                        if (i3 == -1 || !b(this.p)) {
                            break;
                        }
                        r2.write(bArr, i, i3);
                        long j2 = this.q + ((long) i3);
                        this.q = j2;
                        int i4 = (int) (((j2 * 1.0d) / this.i) * 100.0d);
                        this.p = i4;
                        a(i4, j2);
                        i = 0;
                    }
                    r2.close();
                    try {
                        r2.close();
                    } catch (Throwable unused) {
                    }
                    z = true;
                } catch (Throwable th) {
                    th = th;
                    r2 = r5;
                    try {
                        th.printStackTrace();
                        if (r2 != 0) {
                            try {
                                r2.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        z = false;
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        b(this.p, this.q);
        return z;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        this.o = 0;
    }

    public final void e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" startRequest: canStartLoader():");
        sb.append(i());
        if (i()) {
            h();
            this.o = 1;
            d();
        }
    }

    public final void f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" startRequest: resumeRequest():");
        sb.append(i());
        this.s = true;
        if (i()) {
            h();
            this.o = 1;
            d();
        }
    }
}
