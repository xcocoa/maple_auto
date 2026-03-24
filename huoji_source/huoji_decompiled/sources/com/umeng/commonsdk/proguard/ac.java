package com.umeng.commonsdk.proguard;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ac extends ByteArrayOutputStream {
    public ac() {
    }

    public ac(int i) {
        super(i);
    }

    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((ByteArrayOutputStream) this).count;
    }
}
