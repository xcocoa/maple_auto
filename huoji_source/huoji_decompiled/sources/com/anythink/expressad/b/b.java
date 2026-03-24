package com.anythink.expressad.b;

import com.anythink.core.common.o.b.d;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b extends com.anythink.core.common.res.image.b {
    public String a;

    private b(String str, String str2) {
        super(str);
        this.a = str2;
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(d dVar) {
        com.anythink.core.common.o.b.b.a().a(dVar, 2);
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str, String str2) {
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.a);
            byte[] bArr = new byte[2048];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
    }
}
