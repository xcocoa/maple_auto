package com.anythink.expressad.exoplayer.k;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "AtomicFile";
    private final File b;
    private final File c;

    public static final class a extends OutputStream {
        private final FileOutputStream a;
        private boolean b = false;

        public a(File file) {
            this.a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            flush();
            try {
                this.a.getFD().sync();
            } catch (IOException e) {
                Log.w(b.a, "Failed to sync file descriptor:", e);
            }
            this.a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
            this.a.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            this.a.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(@NonNull byte[] bArr) throws IOException {
            this.a.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
            this.a.write(bArr, i, i2);
        }
    }

    public b(File file) {
        this.b = file;
        this.c = new File(file.getPath() + ".bak");
    }

    private void d() {
        if (this.c.exists()) {
            this.b.delete();
            this.c.renameTo(this.b);
        }
    }

    public final void a() {
        this.b.delete();
        this.c.delete();
    }

    public final void a(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.c.delete();
    }

    public final OutputStream b() throws IOException {
        if (this.b.exists()) {
            if (this.c.exists()) {
                this.b.delete();
            } else if (!this.b.renameTo(this.c)) {
                Log.w(a, "Couldn't rename file " + this.b + " to backup file " + this.c);
            }
        }
        try {
            return new a(this.b);
        } catch (FileNotFoundException e) {
            if (!this.b.getParentFile().mkdirs()) {
                throw new IOException("Couldn't create directory " + this.b, e);
            }
            try {
                return new a(this.b);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.b, e2);
            }
        }
    }

    public final InputStream c() {
        if (this.c.exists()) {
            this.b.delete();
            this.c.renameTo(this.b);
        }
        return new FileInputStream(this.b);
    }
}
