package z2;

import com.google.zxing.client.result.ParsedResultType;

/* JADX INFO: loaded from: classes2.dex */
public final class zn extends jn {
    private final char OooO;
    private final String OooO0O0;
    private final String OooO0OO;
    private final String OooO0Oo;
    private final String OooO0o;
    private final String OooO0o0;
    private final String OooO0oO;
    private final int OooO0oo;
    private final String OooOO0;

    public zn(String str, String str2, String str3, String str4, String str5, String str6, int i, char c, String str7) {
        super(ParsedResultType.VIN);
        this.OooO0O0 = str;
        this.OooO0OO = str2;
        this.OooO0Oo = str3;
        this.OooO0o0 = str4;
        this.OooO0o = str5;
        this.OooO0oO = str6;
        this.OooO0oo = i;
        this.OooO = c;
        this.OooOO0 = str7;
    }

    public final String OooO() {
        return this.OooO0O0;
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(50);
        sb.append(this.OooO0OO);
        sb.append(' ');
        sb.append(this.OooO0Oo);
        sb.append(' ');
        sb.append(this.OooO0o0);
        sb.append('\n');
        String str = this.OooO0o;
        if (str != null) {
            sb.append(str);
            sb.append(' ');
        }
        sb.append(this.OooO0oo);
        sb.append(' ');
        sb.append(this.OooO);
        sb.append(' ');
        sb.append(this.OooOO0);
        sb.append('\n');
        return sb.toString();
    }

    public final int OooO0o() {
        return this.OooO0oo;
    }

    public final String OooO0o0() {
        return this.OooO0o;
    }

    public final char OooO0oO() {
        return this.OooO;
    }

    public final String OooO0oo() {
        return this.OooOO0;
    }

    public final String OooOO0() {
        return this.OooO0oO;
    }

    public final String OooOO0O() {
        return this.OooO0Oo;
    }

    public final String OooOO0o() {
        return this.OooO0o0;
    }

    public final String OooOOO0() {
        return this.OooO0OO;
    }
}
