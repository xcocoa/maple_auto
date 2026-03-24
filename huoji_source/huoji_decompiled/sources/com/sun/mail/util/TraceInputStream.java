package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class TraceInputStream extends FilterInputStream {
    private boolean quote;
    private boolean trace;
    private OutputStream traceOut;

    public TraceInputStream(InputStream inputStream, MailLogger mailLogger) {
        super(inputStream);
        this.trace = false;
        this.quote = false;
        this.trace = mailLogger.isLoggable(Level.FINEST);
        this.traceOut = new LogOutputStream(mailLogger);
    }

    public TraceInputStream(InputStream inputStream, OutputStream outputStream) {
        super(inputStream);
        this.trace = false;
        this.quote = false;
        this.traceOut = outputStream;
    }

    private final void writeByte(int i) throws IOException {
        int i2 = i & 255;
        if (i2 > 127) {
            this.traceOut.write(77);
            this.traceOut.write(45);
            i2 &= 127;
        }
        if (i2 == 13) {
            this.traceOut.write(92);
            this.traceOut.write(114);
            return;
        }
        if (i2 == 10) {
            this.traceOut.write(92);
            this.traceOut.write(110);
            this.traceOut.write(10);
        } else if (i2 == 9) {
            this.traceOut.write(92);
            this.traceOut.write(116);
        } else if (i2 >= 32) {
            this.traceOut.write(i2);
        } else {
            this.traceOut.write(94);
            this.traceOut.write(i2 + 64);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (this.trace && i != -1) {
            if (this.quote) {
                writeByte(i);
            } else {
                this.traceOut.write(i);
            }
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (this.trace && i3 != -1) {
            if (this.quote) {
                for (int i4 = 0; i4 < i3; i4++) {
                    writeByte(bArr[i + i4]);
                }
            } else {
                this.traceOut.write(bArr, i, i3);
            }
        }
        return i3;
    }

    public void setQuote(boolean z) {
        this.quote = z;
    }

    public void setTrace(boolean z) {
        this.trace = z;
    }
}
