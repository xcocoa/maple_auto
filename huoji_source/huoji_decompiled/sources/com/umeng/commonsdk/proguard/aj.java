package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.at;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class aj {
    private final ByteArrayOutputStream a;
    private final bl b;
    private az c;

    public aj() {
        this(new at.a());
    }

    public aj(bb bbVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.a = byteArrayOutputStream;
        bl blVar = new bl(byteArrayOutputStream);
        this.b = blVar;
        this.c = bbVar.a(blVar);
    }

    public String a(aa aaVar, String str) throws ag {
        try {
            return new String(a(aaVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new ag("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }

    public byte[] a(aa aaVar) throws ag {
        this.a.reset();
        aaVar.write(this.c);
        return this.a.toByteArray();
    }

    public String b(aa aaVar) throws ag {
        return new String(a(aaVar));
    }
}
