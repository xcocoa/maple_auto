package com.anythink.expressad.exoplayer.j.a;

import com.anythink.expressad.exoplayer.j.a.a;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.x;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class b implements com.anythink.expressad.exoplayer.j.g {
    public static final int a = 20480;
    private final com.anythink.expressad.exoplayer.j.a.a b;
    private final long c;
    private final int d;
    private final boolean e;
    private com.anythink.expressad.exoplayer.j.k f;
    private File g;
    private OutputStream h;
    private FileOutputStream i;
    private long j;
    private long k;
    private x l;

    public static class a extends a.C0126a {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public b(com.anythink.expressad.exoplayer.j.a.a aVar) {
        this(aVar, 2097152L, a, true);
    }

    private b(com.anythink.expressad.exoplayer.j.a.a aVar, long j, int i) {
        this(aVar, j, i, true);
    }

    private b(com.anythink.expressad.exoplayer.j.a.a aVar, long j, int i, boolean z) {
        this.b = (com.anythink.expressad.exoplayer.j.a.a) com.anythink.expressad.exoplayer.k.a.a(aVar);
        this.c = j;
        this.d = i;
        this.e = z;
    }

    private b(com.anythink.expressad.exoplayer.j.a.a aVar, long j, boolean z) {
        this(aVar, j, a, z);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void b() {
        long j = this.f.g;
        if (j != -1) {
            Math.min(j - this.k, this.c);
        }
        com.anythink.expressad.exoplayer.j.a.a aVar = this.b;
        com.anythink.expressad.exoplayer.j.k kVar = this.f;
        this.g = aVar.c(kVar.h, kVar.e + this.k);
        FileOutputStream fileOutputStream = new FileOutputStream(this.g);
        this.i = fileOutputStream;
        OutputStream outputStream = fileOutputStream;
        if (this.d > 0) {
            x xVar = this.l;
            if (xVar == null) {
                this.l = new x(this.i, this.d);
            } else {
                xVar.a(fileOutputStream);
            }
            outputStream = this.l;
        }
        this.h = outputStream;
        this.j = 0L;
    }

    private void c() {
        OutputStream outputStream = this.h;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            if (this.e) {
                this.i.getFD().sync();
            }
            af.a(this.h);
            this.h = null;
            File file = this.g;
            this.g = null;
            this.b.a(file);
        } catch (Throwable th) {
            af.a(this.h);
            this.h = null;
            File file2 = this.g;
            this.g = null;
            file2.delete();
            throw th;
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.g
    public final void a() throws a {
        if (this.f == null) {
            return;
        }
        try {
            c();
        } catch (IOException e) {
            throw new a(e);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.g
    public final void a(com.anythink.expressad.exoplayer.j.k kVar) throws a {
        if (kVar.g == -1 && !kVar.a(2)) {
            this.f = null;
            return;
        }
        this.f = kVar;
        this.k = 0L;
        try {
            b();
        } catch (IOException e) {
            throw new a(e);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.g
    public final void a(byte[] bArr, int i, int i2) throws a {
        if (this.f == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.j == this.c) {
                    c();
                    b();
                }
                int iMin = (int) Math.min(i2 - i3, this.c - this.j);
                this.h.write(bArr, i + i3, iMin);
                i3 += iMin;
                long j = iMin;
                this.j += j;
                this.k += j;
            } catch (IOException e) {
                throw new a(e);
            }
        }
    }
}
