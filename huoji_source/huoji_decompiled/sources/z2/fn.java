package z2;

import com.google.zxing.client.result.ParsedResultType;

/* JADX INFO: loaded from: classes2.dex */
public final class fn extends jn {
    private final double OooO0O0;
    private final double OooO0OO;
    private final double OooO0Oo;
    private final String OooO0o0;

    public fn(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.OooO0O0 = d;
        this.OooO0OO = d2;
        this.OooO0Oo = d3;
        this.OooO0o0 = str;
    }

    public final String OooO() {
        return this.OooO0o0;
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.OooO0O0);
        sb.append(", ");
        sb.append(this.OooO0OO);
        if (this.OooO0Oo > 0.0d) {
            sb.append(", ");
            sb.append(this.OooO0Oo);
            sb.append('m');
        }
        if (this.OooO0o0 != null) {
            sb.append(" (");
            sb.append(this.OooO0o0);
            sb.append(')');
        }
        return sb.toString();
    }

    public final String OooO0o() {
        StringBuilder sb = new StringBuilder();
        sb.append("geo:");
        sb.append(this.OooO0O0);
        sb.append(',');
        sb.append(this.OooO0OO);
        if (this.OooO0Oo > 0.0d) {
            sb.append(',');
            sb.append(this.OooO0Oo);
        }
        if (this.OooO0o0 != null) {
            sb.append('?');
            sb.append(this.OooO0o0);
        }
        return sb.toString();
    }

    public final double OooO0o0() {
        return this.OooO0Oo;
    }

    public final double OooO0oO() {
        return this.OooO0O0;
    }

    public final double OooO0oo() {
        return this.OooO0OO;
    }
}
