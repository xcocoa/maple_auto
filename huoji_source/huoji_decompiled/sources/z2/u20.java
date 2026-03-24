package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class u20 extends h20 {
    private final Appendable OooO0O0;

    public u20() {
        this(new StringBuilder());
    }

    public u20(Appendable appendable) {
        this.OooO0O0 = appendable;
    }

    public static String OooOOO(t20 t20Var) {
        return OooOOOO(t20Var);
    }

    public static String OooOOOO(t20 t20Var) {
        return new u20().OooO0O0(t20Var).toString();
    }

    @Override // z2.h20
    public void OooO0oO(char c) {
        try {
            this.OooO0O0.append(c);
        } catch (IOException e) {
            throw new RuntimeException("Could not write description", e);
        }
    }

    @Override // z2.h20
    public void OooO0oo(String str) {
        try {
            this.OooO0O0.append(str);
        } catch (IOException e) {
            throw new RuntimeException("Could not write description", e);
        }
    }

    public String toString() {
        return this.OooO0O0.toString();
    }
}
