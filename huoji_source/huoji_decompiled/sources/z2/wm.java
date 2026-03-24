package z2;

import com.google.zxing.client.result.ParsedResultType;

/* JADX INFO: loaded from: classes2.dex */
public final class wm extends jn {
    private final String OooO;
    private final String[] OooO0O0;
    private final String[] OooO0OO;
    private final String OooO0Oo;
    private final String[] OooO0o;
    private final String[] OooO0o0;
    private final String[] OooO0oO;
    private final String[] OooO0oo;
    private final String OooOO0;
    private final String[] OooOO0O;
    private final String[] OooOO0o;
    private final String OooOOO;
    private final String OooOOO0;
    private final String OooOOOO;
    private final String[] OooOOOo;
    private final String[] OooOOo0;

    public wm(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(ParsedResultType.ADDRESSBOOK);
        if (strArr3 != null && strArr4 != null && strArr3.length != strArr4.length) {
            throw new IllegalArgumentException("Phone numbers and types lengths differ");
        }
        if (strArr5 != null && strArr6 != null && strArr5.length != strArr6.length) {
            throw new IllegalArgumentException("Emails and types lengths differ");
        }
        if (strArr7 != null && strArr8 != null && strArr7.length != strArr8.length) {
            throw new IllegalArgumentException("Addresses and types lengths differ");
        }
        this.OooO0O0 = strArr;
        this.OooO0OO = strArr2;
        this.OooO0Oo = str;
        this.OooO0o0 = strArr3;
        this.OooO0o = strArr4;
        this.OooO0oO = strArr5;
        this.OooO0oo = strArr6;
        this.OooO = str2;
        this.OooOO0 = str3;
        this.OooOO0O = strArr7;
        this.OooOO0o = strArr8;
        this.OooOOO0 = str4;
        this.OooOOO = str5;
        this.OooOOOO = str6;
        this.OooOOOo = strArr9;
        this.OooOOo0 = strArr10;
    }

    public wm(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        this(strArr, null, null, strArr2, strArr3, strArr4, strArr5, null, null, strArr6, strArr7, null, null, null, null, null);
    }

    public final String[] OooO() {
        return this.OooO0oO;
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(100);
        jn.OooO0Oo(this.OooO0O0, sb);
        jn.OooO0Oo(this.OooO0OO, sb);
        jn.OooO0OO(this.OooO0Oo, sb);
        jn.OooO0OO(this.OooOOOO, sb);
        jn.OooO0OO(this.OooOOO0, sb);
        jn.OooO0Oo(this.OooOO0O, sb);
        jn.OooO0Oo(this.OooO0o0, sb);
        jn.OooO0Oo(this.OooO0oO, sb);
        jn.OooO0OO(this.OooO, sb);
        jn.OooO0Oo(this.OooOOOo, sb);
        jn.OooO0OO(this.OooOOO, sb);
        jn.OooO0Oo(this.OooOOo0, sb);
        jn.OooO0OO(this.OooOO0, sb);
        return sb.toString();
    }

    public final String[] OooO0o() {
        return this.OooOO0O;
    }

    public final String[] OooO0o0() {
        return this.OooOO0o;
    }

    public final String OooO0oO() {
        return this.OooOOO;
    }

    public final String[] OooO0oo() {
        return this.OooO0oo;
    }

    public final String[] OooOO0() {
        return this.OooOOo0;
    }

    public final String OooOO0O() {
        return this.OooO;
    }

    public final String[] OooOO0o() {
        return this.OooO0O0;
    }

    public final String OooOOO() {
        return this.OooOO0;
    }

    public final String[] OooOOO0() {
        return this.OooO0OO;
    }

    public final String OooOOOO() {
        return this.OooOOO0;
    }

    public final String[] OooOOOo() {
        return this.OooO0o0;
    }

    public final String OooOOo() {
        return this.OooO0Oo;
    }

    public final String[] OooOOo0() {
        return this.OooO0o;
    }

    public final String OooOOoo() {
        return this.OooOOOO;
    }

    public final String[] OooOo00() {
        return this.OooOOOo;
    }
}
