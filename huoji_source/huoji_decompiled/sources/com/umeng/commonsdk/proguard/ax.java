package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class ax {
    public final String a;
    public final byte b;
    public final int c;

    public ax() {
        this("", (byte) 0, 0);
    }

    public ax(String str, byte b, int i) {
        this.a = str;
        this.b = b;
        this.c = i;
    }

    public boolean a(ax axVar) {
        return this.a.equals(axVar.a) && this.b == axVar.b && this.c == axVar.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ax) {
            return a((ax) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.a + "' type: " + ((int) this.b) + " seqid:" + this.c + ">";
    }
}
