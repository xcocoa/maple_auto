package z2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class go {
    private final int OooO;
    private final byte[] OooO00o;
    private int OooO0O0;
    private final String OooO0OO;
    private final List<byte[]> OooO0Oo;
    private Integer OooO0o;
    private final String OooO0o0;
    private Integer OooO0oO;
    private Object OooO0oo;
    private final int OooOO0;

    public go(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public go(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.OooO00o = bArr;
        this.OooO0O0 = bArr == null ? 0 : bArr.length * 8;
        this.OooO0OO = str;
        this.OooO0Oo = list;
        this.OooO0o0 = str2;
        this.OooO = i2;
        this.OooOO0 = i;
    }

    public final int OooO() {
        return this.OooOO0;
    }

    public final List<byte[]> OooO00o() {
        return this.OooO0Oo;
    }

    public final String OooO0O0() {
        return this.OooO0o0;
    }

    public final Integer OooO0OO() {
        return this.OooO0oO;
    }

    public final Integer OooO0Oo() {
        return this.OooO0o;
    }

    public final Object OooO0o() {
        return this.OooO0oo;
    }

    public final int OooO0o0() {
        return this.OooO0O0;
    }

    public final byte[] OooO0oO() {
        return this.OooO00o;
    }

    public final int OooO0oo() {
        return this.OooO;
    }

    public final String OooOO0() {
        return this.OooO0OO;
    }

    public final boolean OooOO0O() {
        return this.OooO >= 0 && this.OooOO0 >= 0;
    }

    public final void OooOO0o(Integer num) {
        this.OooO0oO = num;
    }

    public final void OooOOO(int i) {
        this.OooO0O0 = i;
    }

    public final void OooOOO0(Integer num) {
        this.OooO0o = num;
    }

    public final void OooOOOO(Object obj) {
        this.OooO0oo = obj;
    }
}
