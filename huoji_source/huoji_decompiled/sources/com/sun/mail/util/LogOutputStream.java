package com.sun.mail.util;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class LogOutputStream extends OutputStream {
    public MailLogger logger;
    private int lastb = -1;
    private byte[] buf = new byte[80];
    private int pos = 0;
    public Level level = Level.FINEST;

    public LogOutputStream(MailLogger mailLogger) {
        this.logger = mailLogger;
    }

    private void expandCapacity(int i) {
        while (true) {
            int i2 = this.pos;
            int i3 = i2 + i;
            byte[] bArr = this.buf;
            if (i3 <= bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[bArr.length * 2];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.buf = bArr2;
        }
    }

    private void logBuf() {
        String str = new String(this.buf, 0, this.pos);
        this.pos = 0;
        log(str);
    }

    public void log(String str) {
        this.logger.log(this.level, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    @Override // java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(int i) throws IOException {
        if (this.logger.isLoggable(this.level)) {
            if (i != 13) {
                if (i != 10) {
                    expandCapacity(1);
                    byte[] bArr = this.buf;
                    int i2 = this.pos;
                    this.pos = i2 + 1;
                    bArr[i2] = (byte) i;
                } else if (this.lastb != 13) {
                    logBuf();
                }
            }
            this.lastb = i;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (this.logger.isLoggable(this.level)) {
            int i4 = i2 + i;
            int i5 = i;
            while (i < i4) {
                if (bArr[i] == 13) {
                    i3 = i - i5;
                    expandCapacity(i3);
                    System.arraycopy(bArr, i5, this.buf, this.pos, i3);
                } else if (bArr[i] != 10) {
                    this.lastb = bArr[i];
                    i++;
                } else {
                    if (this.lastb != 13) {
                        i3 = i - i5;
                        expandCapacity(i3);
                        System.arraycopy(bArr, i5, this.buf, this.pos, i3);
                    }
                    i5 = i + 1;
                    this.lastb = bArr[i];
                    i++;
                }
                this.pos += i3;
                logBuf();
                i5 = i + 1;
                this.lastb = bArr[i];
                i++;
            }
            int i6 = i4 - i5;
            if (i6 > 0) {
                expandCapacity(i6);
                System.arraycopy(bArr, i5, this.buf, this.pos, i6);
                this.pos += i6;
            }
        }
    }
}
