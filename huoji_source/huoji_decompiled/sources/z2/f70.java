package z2;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Throwable;

/* JADX INFO: loaded from: classes2.dex */
public class f70<T extends Throwable> extends w20<T> {
    private final r20<T> Ooooo00;

    public f70(r20<T> r20Var) {
        this.Ooooo00 = r20Var;
    }

    @p20
    public static <T extends Exception> r20<T> OooO0oO(r20<T> r20Var) {
        return new f70(r20Var);
    }

    @p20
    public static <T extends Throwable> r20<T> OooO0oo(r20<T> r20Var) {
        return new f70(r20Var);
    }

    private String OooOO0(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO, reason: merged with bridge method [inline-methods] */
    public boolean OooO0o0(T t) {
        return this.Ooooo00.OooO0O0(t);
    }

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public void OooO0Oo(T t, n20 n20Var) {
        this.Ooooo00.OooO00o(t, n20Var);
        n20Var.OooO0Oo("\nStacktrace was: ");
        n20Var.OooO0Oo(OooOO0(t));
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        this.Ooooo00.describeTo(n20Var);
    }
}
