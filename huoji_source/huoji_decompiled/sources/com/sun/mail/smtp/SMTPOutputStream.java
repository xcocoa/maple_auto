package com.sun.mail.smtp;

import com.sun.mail.util.CRLFOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class SMTPOutputStream extends CRLFOutputStream {
    public SMTPOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void ensureAtBOL() throws IOException {
        if (this.atBOL) {
            return;
        }
        super.writeln();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // com.sun.mail.util.CRLFOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = this.lastb;
        if ((i2 == 10 || i2 == 13 || i2 == -1) && i == 46) {
            ((FilterOutputStream) this).out.write(46);
        }
        super.write(i);
    }

    @Override // com.sun.mail.util.CRLFOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.lastb;
        if (i3 == -1) {
            i3 = 10;
        }
        int i4 = i2 + i;
        int i5 = i3;
        int i6 = i;
        while (i < i4) {
            if ((i5 == 10 || i5 == 13) && bArr[i] == 46) {
                super.write(bArr, i6, i - i6);
                ((FilterOutputStream) this).out.write(46);
                i6 = i;
            }
            byte b = bArr[i];
            i++;
            i5 = b;
        }
        int i7 = i4 - i6;
        if (i7 > 0) {
            super.write(bArr, i6, i7);
        }
    }
}
