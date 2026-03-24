package com.sun.mail.imap.protocol;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public class BASE64MailboxEncoder {
    private static final char[] pem_array = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', ','};
    public Writer out;
    public byte[] buffer = new byte[4];
    public int bufsize = 0;
    public boolean started = false;

    public BASE64MailboxEncoder(Writer writer) {
        this.out = null;
        this.out = writer;
    }

    public static String encode(String str) {
        char[] charArray = str.toCharArray();
        CharArrayWriter charArrayWriter = new CharArrayWriter(charArray.length);
        BASE64MailboxEncoder bASE64MailboxEncoder = null;
        boolean z = false;
        for (char c : charArray) {
            if (c < ' ' || c > '~') {
                if (bASE64MailboxEncoder == null) {
                    bASE64MailboxEncoder = new BASE64MailboxEncoder(charArrayWriter);
                    z = true;
                }
                bASE64MailboxEncoder.write(c);
            } else {
                if (bASE64MailboxEncoder != null) {
                    bASE64MailboxEncoder.flush();
                }
                if (c == '&') {
                    charArrayWriter.write(38);
                    charArrayWriter.write(45);
                    z = true;
                } else {
                    charArrayWriter.write(c);
                }
            }
        }
        if (bASE64MailboxEncoder != null) {
            bASE64MailboxEncoder.flush();
        }
        return z ? charArrayWriter.toString() : str;
    }

    public void encode() throws IOException {
        Writer writer;
        char c;
        int i = this.bufsize;
        if (i == 1) {
            byte b = this.buffer[0];
            Writer writer2 = this.out;
            char[] cArr = pem_array;
            writer2.write(cArr[(b >>> 2) & 63]);
            writer = this.out;
            c = cArr[((b << 4) & 48) + 0];
        } else {
            if (i != 2) {
                byte[] bArr = this.buffer;
                byte b2 = bArr[0];
                byte b3 = bArr[1];
                byte b4 = bArr[2];
                Writer writer3 = this.out;
                char[] cArr2 = pem_array;
                writer3.write(cArr2[(b2 >>> 2) & 63]);
                this.out.write(cArr2[((b2 << 4) & 48) + ((b3 >>> 4) & 15)]);
                this.out.write(cArr2[((b3 << 2) & 60) + ((b4 >>> 6) & 3)]);
                this.out.write(cArr2[b4 & 63]);
                if (this.bufsize == 4) {
                    byte[] bArr2 = this.buffer;
                    bArr2[0] = bArr2[3];
                    return;
                }
                return;
            }
            byte[] bArr3 = this.buffer;
            byte b5 = bArr3[0];
            byte b6 = bArr3[1];
            Writer writer4 = this.out;
            char[] cArr3 = pem_array;
            writer4.write(cArr3[(b5 >>> 2) & 63]);
            this.out.write(cArr3[((b5 << 4) & 48) + ((b6 >>> 4) & 15)]);
            writer = this.out;
            c = cArr3[((b6 << 2) & 60) + 0];
        }
        writer.write(c);
    }

    public void flush() {
        try {
            if (this.bufsize > 0) {
                encode();
                this.bufsize = 0;
            }
            if (this.started) {
                this.out.write(45);
                this.started = false;
            }
        } catch (IOException unused) {
        }
    }

    public void write(int i) {
        try {
            if (!this.started) {
                this.started = true;
                this.out.write(38);
            }
            byte[] bArr = this.buffer;
            int i2 = this.bufsize;
            int i3 = i2 + 1;
            this.bufsize = i3;
            bArr[i2] = (byte) (i >> 8);
            int i4 = i3 + 1;
            this.bufsize = i4;
            bArr[i3] = (byte) (i & 255);
            if (i4 >= 3) {
                encode();
                this.bufsize -= 3;
            }
        } catch (IOException unused) {
        }
    }
}
