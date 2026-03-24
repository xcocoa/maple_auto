package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public abstract class bn {
    public abstract int a(byte[] bArr, int i, int i2) throws bo;

    public void a(int i) {
    }

    public abstract boolean a();

    public abstract void b() throws bo;

    public void b(byte[] bArr) throws bo {
        b(bArr, 0, bArr.length);
    }

    public abstract void b(byte[] bArr, int i, int i2) throws bo;

    public abstract void c();

    public int d(byte[] bArr, int i, int i2) throws bo {
        int i3 = 0;
        while (i3 < i2) {
            int iA = a(bArr, i + i3, i2 - i3);
            if (iA <= 0) {
                throw new bo("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += iA;
        }
        return i3;
    }

    public void d() throws bo {
    }

    public byte[] f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public int h() {
        return -1;
    }

    public boolean i() {
        return a();
    }
}
