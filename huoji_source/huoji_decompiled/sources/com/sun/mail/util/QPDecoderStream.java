package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class QPDecoderStream extends FilterInputStream {
    public byte[] ba;
    public int spaces;

    public QPDecoderStream(InputStream inputStream) {
        super(new PushbackInputStream(inputStream, 2));
        this.ba = new byte[2];
        this.spaces = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        int i2 = this.spaces;
        if (i2 > 0) {
            this.spaces = i2 - 1;
            return 32;
        }
        int i3 = ((FilterInputStream) this).in.read();
        if (i3 == 32) {
            while (true) {
                i = ((FilterInputStream) this).in.read();
                if (i != 32) {
                    break;
                }
                this.spaces++;
            }
            if (i == 13 || i == 10 || i == -1) {
                this.spaces = 0;
                return i;
            }
            ((PushbackInputStream) ((FilterInputStream) this).in).unread(i);
            return 32;
        }
        if (i3 == 61) {
            int i4 = ((FilterInputStream) this).in.read();
            if (i4 == 10) {
                return read();
            }
            if (i4 == 13) {
                int i5 = ((FilterInputStream) this).in.read();
                if (i5 != 10) {
                    ((PushbackInputStream) ((FilterInputStream) this).in).unread(i5);
                }
                return read();
            }
            if (i4 == -1) {
                return -1;
            }
            byte[] bArr = this.ba;
            bArr[0] = (byte) i4;
            bArr[1] = (byte) ((FilterInputStream) this).in.read();
            try {
                return ASCIIUtility.parseInt(this.ba, 0, 2, 16);
            } catch (NumberFormatException unused) {
                ((PushbackInputStream) ((FilterInputStream) this).in).unread(this.ba);
            }
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = read();
            if (i4 == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            bArr[i + i3] = (byte) i4;
            i3++;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        while (true) {
            long j3 = j - 1;
            if (j <= 0 || read() < 0) {
                break;
            }
            j2++;
            j = j3;
        }
        return j2;
    }
}
