package com.anythink.expressad.foundation.g.f.c;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Serializable {
    private byte[] a;
    private InputStream b;
    private File c;
    private long d;
    private String e;
    private String f;
    private String g;

    private b(InputStream inputStream, int i, String str, String str2, String str3) {
        this.g = OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        this.e = str;
        this.f = str2;
        this.b = inputStream;
        this.d = i;
        this.g = str3;
    }

    public b(String str, File file, String str2, String str3) {
        this.g = OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        this.e = str;
        this.f = str2;
        try {
            this.b = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        this.d = file.length();
        if (str3 != null) {
            this.g = str3;
        }
        this.c = file;
    }

    private b(String str, byte[] bArr, long j, String str2, String str3) {
        this.g = OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        this.e = str;
        this.f = str2;
        this.a = bArr;
        this.d = j;
        if (str3 != null) {
            this.g = str3;
        }
    }

    private void a(String str) {
        this.e = str;
    }

    private void b(String str) {
        this.f = str;
    }

    private void c(String str) {
        this.g = str;
    }

    public final long a() {
        return this.d;
    }

    public final File b() {
        return this.c;
    }

    public final InputStream c() {
        return this.b;
    }

    public final byte[] d() {
        return this.a;
    }

    public final String e() {
        return this.e;
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.g;
    }
}
