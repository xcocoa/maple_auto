package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class fo {
    private final byte[] OooO00o;
    private int OooO0O0;
    private int OooO0OO;

    public fo(byte[] bArr) {
        this.OooO00o = bArr;
    }

    public final int OooO00o() {
        return ((this.OooO00o.length - this.OooO0O0) * 8) - this.OooO0OO;
    }

    public final int OooO0O0() {
        return this.OooO0OO;
    }

    public final int OooO0OO() {
        return this.OooO0O0;
    }

    public final int OooO0Oo(int i) {
        if (i <= 0 || i > 32 || i > OooO00o()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.OooO0OO;
        int i3 = 0;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            byte[] bArr = this.OooO00o;
            int i7 = this.OooO0O0;
            int i8 = (((255 >> (8 - i5)) << i6) & bArr[i7]) >> i6;
            i -= i5;
            int i9 = i2 + i5;
            this.OooO0OO = i9;
            if (i9 == 8) {
                this.OooO0OO = 0;
                this.OooO0O0 = i7 + 1;
            }
            i3 = i8;
        }
        if (i <= 0) {
            return i3;
        }
        while (i >= 8) {
            int i10 = i3 << 8;
            byte[] bArr2 = this.OooO00o;
            int i11 = this.OooO0O0;
            i3 = (bArr2[i11] & 255) | i10;
            this.OooO0O0 = i11 + 1;
            i -= 8;
        }
        if (i <= 0) {
            return i3;
        }
        int i12 = 8 - i;
        int i13 = (i3 << i) | ((((255 >> i12) << i12) & this.OooO00o[this.OooO0O0]) >> i12);
        this.OooO0OO += i;
        return i13;
    }
}
