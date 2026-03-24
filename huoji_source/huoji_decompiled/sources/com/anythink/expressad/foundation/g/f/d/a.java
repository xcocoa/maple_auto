package com.anythink.expressad.foundation.g.f.d;

import android.text.TextUtils;
import com.anythink.expressad.foundation.g.f.i;
import com.anythink.expressad.foundation.g.f.k;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class a extends i<Void> {
    private static final String c = a.class.getSimpleName();
    private File d;
    private File e;

    public a(File file, String str) {
        super(str);
        this.d = file;
        this.e = new File(file + ".tmp");
    }

    @Override // com.anythink.expressad.foundation.g.f.i
    public final k<Void> a(com.anythink.expressad.foundation.g.f.f.c cVar) {
        return !f() ? (!this.e.canRead() || this.e.length() <= 0) ? k.a(new com.anythink.expressad.foundation.g.f.a.a(4, cVar)) : this.e.renameTo(this.d) ? k.a(null, cVar) : k.a(new com.anythink.expressad.foundation.g.f.a.a(4, cVar)) : k.a(new com.anythink.expressad.foundation.g.f.a.a(-2, cVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        r15.b(r13);
     */
    @Override // com.anythink.expressad.foundation.g.f.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(com.anythink.expressad.foundation.g.f.f.b bVar, com.anythink.expressad.foundation.g.f.c cVar) throws Throwable {
        String strA = com.anythink.expressad.foundation.g.f.g.d.a(bVar.b(), "Content-Length");
        long j = 0;
        long jLongValue = !TextUtils.isEmpty(strA) ? Long.valueOf(strA).longValue() : 0L;
        InputStream inputStream = null;
        if (jLongValue > 0 && this.d.length() == jLongValue) {
            this.d.renameTo(this.e);
            cVar.a(this, jLongValue, jLongValue);
            return null;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.e.getAbsolutePath(), "rw");
        randomAccessFile.setLength(0L);
        try {
            InputStream inputStreamC = bVar.c();
            try {
                InputStream gZIPInputStream = (!com.anythink.expressad.foundation.g.f.g.d.b(bVar.b()) || (inputStreamC instanceof GZIPInputStream)) ? inputStreamC : new GZIPInputStream(inputStreamC);
                try {
                    byte[] bArr = new byte[6144];
                    while (true) {
                        int i = gZIPInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        randomAccessFile.write(bArr, 0, i);
                        j += (long) i;
                        cVar.a(this, jLongValue, j);
                        if (f()) {
                            break;
                        }
                    }
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (Exception e) {
                            e.getMessage();
                        }
                    }
                    randomAccessFile.close();
                    return null;
                } catch (Throwable th) {
                    inputStream = gZIPInputStream;
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e2) {
                            e2.getMessage();
                        }
                    }
                    randomAccessFile.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStreamC;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.anythink.expressad.foundation.g.f.i
    public final int j() {
        return 1;
    }
}
