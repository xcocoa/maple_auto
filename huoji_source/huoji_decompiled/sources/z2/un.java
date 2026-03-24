package z2;

import com.google.zxing.client.result.ParsedResultType;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class un extends jn {
    private static final Pattern OooO0Oo = Pattern.compile(":/*([^/@]+)@[^/]+");
    private final String OooO0O0;
    private final String OooO0OO;

    public un(String str, String str2) {
        super(ParsedResultType.URI);
        this.OooO0O0 = OooO(str);
        this.OooO0OO = str2;
    }

    private static String OooO(String str) {
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        return (iIndexOf < 0 || OooO0oO(strTrim, iIndexOf)) ? "http://".concat(String.valueOf(strTrim)) : strTrim;
    }

    private static boolean OooO0oO(String str, int i) {
        int i2 = i + 1;
        int iIndexOf = str.indexOf(47, i2);
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        return mn.OooO0o0(str, i2, iIndexOf - i2);
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(30);
        jn.OooO0OO(this.OooO0OO, sb);
        jn.OooO0OO(this.OooO0O0, sb);
        return sb.toString();
    }

    public final String OooO0o() {
        return this.OooO0O0;
    }

    public final String OooO0o0() {
        return this.OooO0OO;
    }

    public final boolean OooO0oo() {
        return OooO0Oo.matcher(this.OooO0O0).find();
    }
}
