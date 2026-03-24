package com.octopus.ad.internal.b.a;

import com.octopus.ad.internal.b.m;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.octopus.ad.internal.b.a {
    public File a;
    private final a b;
    private RandomAccessFile c;

    public b(File file, a aVar) throws m {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.b = aVar;
            d.a(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.a = file2;
            this.c = new RandomAccessFile(this.a, zExists ? com.anythink.expressad.foundation.d.c.bk : "rw");
        } catch (IOException e) {
            throw new m("Error using file " + file + " as disc cache", e);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(".download");
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized int a() throws m {
        try {
        } catch (IOException e) {
            throw new m("Error reading length of file " + this.a, e);
        }
        return (int) this.c.length();
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized int a(byte[] bArr, long j, int i) throws m {
        try {
            this.c.seek(j);
        } catch (IOException e) {
            throw new m(String.format("Error reading %d bytes with offset %d failFrom file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i), Long.valueOf(j), Integer.valueOf(a()), Integer.valueOf(bArr.length)), e);
        }
        return this.c.read(bArr, 0, i);
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized void a(byte[] bArr, int i) throws m {
        try {
            if (d()) {
                throw new m("Error append cache: cache file " + this.a + " is completed!");
            }
            this.c.seek(a());
            this.c.write(bArr, 0, i);
        } catch (IOException e) {
            throw new m(String.format("Error writing %d bytes to %s failFrom buffer with size %d", Integer.valueOf(i), this.c, Integer.valueOf(bArr.length)), e);
        }
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized void b() throws m {
        try {
            this.c.close();
            this.b.a(this.a);
        } catch (IOException e) {
            throw new m("Error closing file " + this.a, e);
        }
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized void c() throws m {
        if (d()) {
            return;
        }
        b();
        File file = new File(this.a.getParentFile(), this.a.getName().substring(0, this.a.getName().length() - 9));
        if (!this.a.renameTo(file)) {
            throw new m("Error renaming file " + this.a + " to " + file + " for completion!");
        }
        this.a = file;
        try {
            this.c = new RandomAccessFile(this.a, com.anythink.expressad.foundation.d.c.bk);
        } catch (IOException e) {
            throw new m("Error opening " + this.a + " as disc cache", e);
        }
    }

    @Override // com.octopus.ad.internal.b.a
    public synchronized boolean d() {
        return !a(this.a);
    }
}
