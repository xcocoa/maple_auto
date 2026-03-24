package z2;

import com.google.zxing.client.result.ParsedResultType;

/* JADX INFO: loaded from: classes2.dex */
public final class on extends jn {
    private final String[] OooO0O0;
    private final String[] OooO0OO;
    private final String OooO0Oo;
    private final String OooO0o0;

    public on(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.OooO0O0 = new String[]{str};
        this.OooO0OO = new String[]{str2};
        this.OooO0Oo = str3;
        this.OooO0o0 = str4;
    }

    public on(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.OooO0O0 = strArr;
        this.OooO0OO = strArr2;
        this.OooO0Oo = str;
        this.OooO0o0 = str2;
    }

    public final String[] OooO() {
        return this.OooO0OO;
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(100);
        jn.OooO0Oo(this.OooO0O0, sb);
        jn.OooO0OO(this.OooO0Oo, sb);
        jn.OooO0OO(this.OooO0o0, sb);
        return sb.toString();
    }

    public final String[] OooO0o() {
        return this.OooO0O0;
    }

    public final String OooO0o0() {
        return this.OooO0o0;
    }

    public final String OooO0oO() {
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        boolean z = true;
        for (int i = 0; i < this.OooO0O0.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.OooO0O0[i]);
            String[] strArr = this.OooO0OO;
            if (strArr != null && strArr[i] != null) {
                sb.append(";via=");
                sb.append(this.OooO0OO[i]);
            }
        }
        boolean z3 = this.OooO0o0 != null;
        boolean z4 = this.OooO0Oo != null;
        if (z3 || z4) {
            sb.append('?');
            if (z3) {
                sb.append("body=");
                sb.append(this.OooO0o0);
            }
            if (z4) {
                if (z3) {
                    sb.append('&');
                }
                sb.append("subject=");
                sb.append(this.OooO0Oo);
            }
        }
        return sb.toString();
    }

    public final String OooO0oo() {
        return this.OooO0Oo;
    }
}
