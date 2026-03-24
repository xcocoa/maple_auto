package com.sun.mail.util;

import com.umeng.commonsdk.proguard.bg;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public class LineOutputStream extends FilterOutputStream {
    private static byte[] newline = {bg.k, 10};
    private boolean allowutf8;

    public LineOutputStream(OutputStream outputStream) {
        this(outputStream, false);
    }

    public LineOutputStream(OutputStream outputStream, boolean z) {
        super(outputStream);
        this.allowutf8 = z;
    }

    public void writeln() throws IOException {
        ((FilterOutputStream) this).out.write(newline);
    }

    public void writeln(String str) throws IOException {
        ((FilterOutputStream) this).out.write(this.allowutf8 ? str.getBytes(StandardCharsets.UTF_8) : ASCIIUtility.getBytes(str));
        ((FilterOutputStream) this).out.write(newline);
    }
}
