package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class bm extends bn {
    private byte[] a;
    private int b;
    private int c;

    public bm() {
    }

    public bm(byte[] bArr) {
        a(bArr);
    }

    public bm(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public int a(byte[] bArr, int i, int i2) throws bo {
        int iH = h();
        if (i2 > iH) {
            i2 = iH;
        }
        if (i2 > 0) {
            System.arraycopy(this.a, this.b, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void a(int i) {
        this.b += i;
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public boolean a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void b() throws bo {
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void b(byte[] bArr, int i, int i2) throws bo {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void c() {
    }

    public void c(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
    }

    public void e() {
        this.a = null;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public byte[] f() {
        return this.a;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public int g() {
        return this.b;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public int h() {
        return this.c - this.b;
    }
}
