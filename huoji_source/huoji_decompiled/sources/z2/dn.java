package z2;

import com.google.zxing.client.result.ParsedResultType;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class dn extends jn {
    public static final String OooOOo = "LB";
    public static final String OooOOo0 = "KG";
    private final String OooO;
    private final String OooO0O0;
    private final String OooO0OO;
    private final String OooO0Oo;
    private final String OooO0o;
    private final String OooO0o0;
    private final String OooO0oO;
    private final String OooO0oo;
    private final String OooOO0;
    private final String OooOO0O;
    private final String OooOO0o;
    private final String OooOOO;
    private final String OooOOO0;
    private final String OooOOOO;
    private final Map<String, String> OooOOOo;

    public dn(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        super(ParsedResultType.PRODUCT);
        this.OooO0O0 = str;
        this.OooO0OO = str2;
        this.OooO0Oo = str3;
        this.OooO0o0 = str4;
        this.OooO0o = str5;
        this.OooO0oO = str6;
        this.OooO0oo = str7;
        this.OooO = str8;
        this.OooOO0 = str9;
        this.OooOO0O = str10;
        this.OooOO0o = str11;
        this.OooOOO0 = str12;
        this.OooOOO = str13;
        this.OooOOOO = str14;
        this.OooOOOo = map;
    }

    private static boolean OooO0o0(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    private static int OooOo0(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String OooO() {
        return this.OooO0oO;
    }

    @Override // z2.jn
    public final String OooO00o() {
        return String.valueOf(this.OooO0O0);
    }

    public final String OooO0o() {
        return this.OooO0oo;
    }

    public final String OooO0oO() {
        return this.OooO;
    }

    public final String OooO0oo() {
        return this.OooO0o0;
    }

    public final String OooOO0() {
        return this.OooOOO0;
    }

    public final String OooOO0O() {
        return this.OooOOOO;
    }

    public final String OooOO0o() {
        return this.OooOOO;
    }

    public final String OooOOO() {
        return this.OooO0o;
    }

    public final String OooOOO0() {
        return this.OooO0OO;
    }

    public final String OooOOOO() {
        return this.OooO0O0;
    }

    public final String OooOOOo() {
        return this.OooO0Oo;
    }

    public final String OooOOo() {
        return this.OooOO0;
    }

    public final Map<String, String> OooOOo0() {
        return this.OooOOOo;
    }

    public final String OooOOoo() {
        return this.OooOO0o;
    }

    public final String OooOo00() {
        return this.OooOO0O;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dn)) {
            return false;
        }
        dn dnVar = (dn) obj;
        return OooO0o0(this.OooO0OO, dnVar.OooO0OO) && OooO0o0(this.OooO0Oo, dnVar.OooO0Oo) && OooO0o0(this.OooO0o0, dnVar.OooO0o0) && OooO0o0(this.OooO0o, dnVar.OooO0o) && OooO0o0(this.OooO0oo, dnVar.OooO0oo) && OooO0o0(this.OooO, dnVar.OooO) && OooO0o0(this.OooOO0, dnVar.OooOO0) && OooO0o0(this.OooOO0O, dnVar.OooOO0O) && OooO0o0(this.OooOO0o, dnVar.OooOO0o) && OooO0o0(this.OooOOO0, dnVar.OooOOO0) && OooO0o0(this.OooOOO, dnVar.OooOOO) && OooO0o0(this.OooOOOO, dnVar.OooOOOO) && OooO0o0(this.OooOOOo, dnVar.OooOOOo);
    }

    public final int hashCode() {
        return ((((((((((((OooOo0(this.OooO0OO) ^ 0) ^ OooOo0(this.OooO0Oo)) ^ OooOo0(this.OooO0o0)) ^ OooOo0(this.OooO0o)) ^ OooOo0(this.OooO0oo)) ^ OooOo0(this.OooO)) ^ OooOo0(this.OooOO0)) ^ OooOo0(this.OooOO0O)) ^ OooOo0(this.OooOO0o)) ^ OooOo0(this.OooOOO0)) ^ OooOo0(this.OooOOO)) ^ OooOo0(this.OooOOOO)) ^ OooOo0(this.OooOOOo);
    }
}
