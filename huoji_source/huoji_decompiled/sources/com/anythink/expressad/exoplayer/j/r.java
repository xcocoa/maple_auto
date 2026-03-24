package com.anythink.expressad.exoplayer.j;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public final class r implements h {
    private final aa<? super r> a;
    private RandomAccessFile b;
    private Uri c;
    private long d;
    private boolean e;

    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public r() {
        this(null);
    }

    public r(aa<? super r> aaVar) {
        this.a = aaVar;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.d;
        if (j == 0) {
            return -1;
        }
        try {
            int i3 = this.b.read(bArr, i, (int) Math.min(j, i2));
            if (i3 > 0) {
                this.d -= (long) i3;
                aa<? super r> aaVar = this.a;
                if (aaVar != null) {
                    aaVar.a(i3);
                }
            }
            return i3;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final long a(k kVar) throws a {
        try {
            this.c = kVar.c;
            RandomAccessFile randomAccessFile = new RandomAccessFile(kVar.c.getPath(), com.anythink.expressad.foundation.d.c.bk);
            this.b = randomAccessFile;
            randomAccessFile.seek(kVar.f);
            long length = kVar.g;
            if (length == -1) {
                length = this.b.length() - kVar.f;
            }
            this.d = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.e = true;
            aa<? super r> aaVar = this.a;
            if (aaVar != null) {
                aaVar.b();
            }
            return this.d;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final Uri a() {
        return this.c;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final void b() {
        this.c = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.b;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e) {
                throw new a(e);
            }
        } finally {
            this.b = null;
            if (this.e) {
                this.e = false;
                aa<? super r> aaVar = this.a;
                if (aaVar != null) {
                    aaVar.c();
                }
            }
        }
    }
}
