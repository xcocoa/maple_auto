package com.anythink.core.common.h.a;

import com.anythink.core.common.h.a.d.AnonymousClass1;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 2;
    public static final int g = 3;
    public static final int h = 4;
    private final int a = 0;
    public int i;
    public String j;

    public interface a {
        void a(Object obj);

        void a(Throwable th);
    }

    public static byte[] a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("utf-8"));
            gZIPOutputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public final void a(int i, String str) {
        this.i = i;
        this.j = str;
    }

    public final void a(a aVar) {
        com.anythink.core.common.o.b.b.a().a((com.anythink.core.common.o.b.d) d.a().new AnonymousClass1(this, aVar), 3);
    }

    public void a(String str, String str2, String str3, int i) {
    }

    public abstract int c();

    public abstract int d();

    public abstract byte[] e();

    public abstract boolean f();

    public int g() {
        return 0;
    }

    public final JSONObject h() {
        return com.anythink.core.common.h.c.a(g());
    }

    public final JSONObject i() {
        return com.anythink.core.common.h.c.b(g());
    }
}
