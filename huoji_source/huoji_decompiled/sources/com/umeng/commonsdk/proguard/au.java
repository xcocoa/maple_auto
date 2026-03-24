package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public class au {
    public final String a;
    public final byte b;
    public final short c;

    public au() {
        this("", (byte) 0, (short) 0);
    }

    public au(String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.c = s;
    }

    public boolean a(au auVar) {
        return this.b == auVar.b && this.c == auVar.c;
    }

    public String toString() {
        return "<TField name:'" + this.a + "' type:" + ((int) this.b) + " field-id:" + ((int) this.c) + ">";
    }
}
