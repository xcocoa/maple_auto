package com.sun.mail.util;

import com.umeng.commonsdk.proguard.bg;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CRLFOutputStream extends FilterOutputStream {
    private static final byte[] newline = {bg.k, 10};
    public boolean atBOL;
    public int lastb;

    public CRLFOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.lastb = -1;
        this.atBOL = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0004  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(int i) throws IOException {
        if (i != 13) {
            if (i != 10) {
                ((FilterOutputStream) this).out.write(i);
                this.atBOL = false;
            } else if (this.lastb != 13) {
                writeln();
            }
        }
        this.lastb = i;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000a  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 + i;
        int i4 = i;
        while (i < i3) {
            if (bArr[i] != 13) {
                if (bArr[i] == 10) {
                    if (this.lastb != 13) {
                        ((FilterOutputStream) this).out.write(bArr, i4, i - i4);
                        writeln();
                    }
                    i4 = i + 1;
                }
            }
            this.lastb = bArr[i];
            i++;
        }
        int i5 = i3 - i4;
        if (i5 > 0) {
            ((FilterOutputStream) this).out.write(bArr, i4, i5);
            this.atBOL = false;
        }
    }

    public void writeln() throws IOException {
        ((FilterOutputStream) this).out.write(newline);
        this.atBOL = true;
    }
}
