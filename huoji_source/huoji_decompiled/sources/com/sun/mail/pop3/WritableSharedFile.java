package com.sun.mail.pop3;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import javax.mail.util.SharedFileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class WritableSharedFile extends SharedFileInputStream {
    private AppendStream af;
    private RandomAccessFile raf;

    public WritableSharedFile(File file) throws IOException {
        super(file);
        try {
            this.raf = new RandomAccessFile(file, "rw");
        } catch (IOException unused) {
            super.close();
        }
    }

    @Override // javax.mail.util.SharedFileInputStream, java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            this.raf.close();
        }
    }

    public synchronized AppendStream getAppendStream() throws IOException {
        AppendStream appendStream;
        if (this.af != null) {
            throw new IOException("POP3 file cache only supports single threaded access");
        }
        appendStream = new AppendStream(this);
        this.af = appendStream;
        return appendStream;
    }

    public RandomAccessFile getWritableFile() {
        return this.raf;
    }

    public synchronized long updateLength() throws IOException {
        long length;
        length = this.in.length();
        this.datalen = length;
        this.af = null;
        return length;
    }
}
