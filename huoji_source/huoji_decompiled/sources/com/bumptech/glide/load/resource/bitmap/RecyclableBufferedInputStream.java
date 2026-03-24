package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import z2.oO0OOo0o;

/* JADX INFO: loaded from: classes.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private int Ooooo0o;
    private int OooooO0;
    private final oO0OOo0o OooooOO;

    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o) {
        this(inputStream, oo0ooo0o, 65536);
    }

    @VisibleForTesting
    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o, int i) {
        super(inputStream);
        this.Ooooo0o = -1;
        this.OooooOO = oo0ooo0o;
        this.OoooOoO = (byte[]) oo0ooo0o.OooO0o0(i, byte[].class);
    }

    private int OooOO0(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.Ooooo0o;
        if (i != -1) {
            int i2 = this.OooooO0 - i;
            int i3 = this.Ooooo00;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.OoooOoo == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.OooooOO.OooO0o0(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.OoooOoO = bArr2;
                    this.OooooOO.put(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.OooooO0 - this.Ooooo0o;
                this.OooooO0 = i4;
                this.Ooooo0o = 0;
                this.OoooOoo = 0;
                int i5 = inputStream.read(bArr, i4, bArr.length - i4);
                int i6 = this.OooooO0;
                if (i5 > 0) {
                    i6 += i5;
                }
                this.OoooOoo = i6;
                return i5;
            }
        }
        int i7 = inputStream.read(bArr);
        if (i7 > 0) {
            this.Ooooo0o = -1;
            this.OooooO0 = 0;
            this.OoooOoo = i7;
        }
        return i7;
    }

    private static IOException Oooooo() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public synchronized void OooooOo() {
        this.Ooooo00 = this.OoooOoO.length;
    }

    public synchronized void Oooooo0() {
        if (this.OoooOoO != null) {
            this.OooooOO.put(this.OoooOoO);
            this.OoooOoO = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.OoooOoO == null || inputStream == null) {
            throw Oooooo();
        }
        return (this.OoooOoo - this.OooooO0) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.OoooOoO != null) {
            this.OooooOO.put(this.OoooOoO);
            this.OoooOoO = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.Ooooo00 = Math.max(this.Ooooo00, i);
        this.Ooooo0o = this.OooooO0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.OoooOoO;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            throw Oooooo();
        }
        if (this.OooooO0 >= this.OoooOoo && OooOO0(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.OoooOoO && (bArr = this.OoooOoO) == null) {
            throw Oooooo();
        }
        int i = this.OoooOoo;
        int i2 = this.OooooO0;
        if (i - i2 <= 0) {
            return -1;
        }
        this.OooooO0 = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2 = this.OoooOoO;
        if (bArr2 == null) {
            throw Oooooo();
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw Oooooo();
        }
        int i5 = this.OooooO0;
        int i6 = this.OoooOoo;
        if (i5 < i6) {
            int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
            System.arraycopy(bArr2, i5, bArr, i, i7);
            this.OooooO0 += i7;
            if (i7 == i2 || inputStream.available() == 0) {
                return i7;
            }
            i += i7;
            i3 = i2 - i7;
        } else {
            i3 = i2;
        }
        while (true) {
            if (this.Ooooo0o == -1 && i3 >= bArr2.length) {
                i4 = inputStream.read(bArr, i, i3);
                if (i4 == -1) {
                    return i3 != i2 ? i2 - i3 : -1;
                }
            } else {
                if (OooOO0(inputStream, bArr2) == -1) {
                    return i3 != i2 ? i2 - i3 : -1;
                }
                if (bArr2 != this.OoooOoO && (bArr2 = this.OoooOoO) == null) {
                    throw Oooooo();
                }
                int i8 = this.OoooOoo;
                int i9 = this.OooooO0;
                i4 = i8 - i9 >= i3 ? i3 : i8 - i9;
                System.arraycopy(bArr2, i9, bArr, i, i4);
                this.OooooO0 += i4;
            }
            i3 -= i4;
            if (i3 == 0) {
                return i2;
            }
            if (inputStream.available() == 0) {
                return i2 - i3;
            }
            i += i4;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.OoooOoO == null) {
            throw new IOException("Stream is closed");
        }
        int i = this.Ooooo0o;
        if (-1 == i) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.OooooO0 + " markLimit: " + this.Ooooo00);
        }
        this.OooooO0 = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.OoooOoO;
        if (bArr == null) {
            throw Oooooo();
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw Oooooo();
        }
        int i = this.OoooOoo;
        int i2 = this.OooooO0;
        if (i - i2 >= j) {
            this.OooooO0 = (int) (((long) i2) + j);
            return j;
        }
        long j2 = ((long) i) - ((long) i2);
        this.OooooO0 = i;
        if (this.Ooooo0o == -1 || j > this.Ooooo00) {
            return j2 + inputStream.skip(j - j2);
        }
        if (OooOO0(inputStream, bArr) == -1) {
            return j2;
        }
        int i3 = this.OoooOoo;
        int i4 = this.OooooO0;
        if (i3 - i4 >= j - j2) {
            this.OooooO0 = (int) ((((long) i4) + j) - j2);
            return j;
        }
        long j3 = (j2 + ((long) i3)) - ((long) i4);
        this.OooooO0 = i3;
        return j3;
    }
}
