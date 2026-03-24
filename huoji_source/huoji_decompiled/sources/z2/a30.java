package z2;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class a30<T> extends i20<T> {
    private static final Pattern Ooooo0o = Pattern.compile("%([0-9]+)");
    private final String OoooOoO;
    private final r20<T> OoooOoo;
    private final Object[] Ooooo00;

    public a30(String str, r20<T> r20Var, Object[] objArr) {
        this.OoooOoO = str;
        this.OoooOoo = r20Var;
        this.Ooooo00 = (Object[]) objArr.clone();
    }

    @p20
    public static <T> r20<T> OooO0Oo(String str, r20<T> r20Var, Object... objArr) {
        return new a30(str, r20Var, objArr);
    }

    @Override // z2.i20, z2.r20
    public void OooO00o(Object obj, n20 n20Var) {
        this.OoooOoo.OooO00o(obj, n20Var);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return this.OoooOoo.OooO0O0(obj);
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        Matcher matcher = Ooooo0o.matcher(this.OoooOoO);
        int iEnd = 0;
        while (matcher.find()) {
            n20Var.OooO0Oo(this.OoooOoO.substring(iEnd, matcher.start()));
            n20Var.OooO0o0(this.Ooooo00[Integer.parseInt(matcher.group(1))]);
            iEnd = matcher.end();
        }
        if (iEnd < this.OoooOoO.length()) {
            n20Var.OooO0Oo(this.OoooOoO.substring(iEnd));
        }
    }
}
