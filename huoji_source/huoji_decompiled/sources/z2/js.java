package z2;

import java.util.Formatter;

/* JADX INFO: loaded from: classes2.dex */
public class js {
    private static final int OooO0OO = 5;
    private final gs OooO00o;
    private final hs[] OooO0O0;

    public js(gs gsVar) {
        this.OooO00o = new gs(gsVar);
        this.OooO0O0 = new hs[(gsVar.OooO0o0() - gsVar.OooO0oO()) + 1];
    }

    public final gs OooO00o() {
        return this.OooO00o;
    }

    public final hs OooO0O0(int i) {
        return this.OooO0O0[OooO0o0(i)];
    }

    public final hs OooO0OO(int i) {
        hs hsVar;
        hs hsVar2;
        hs hsVarOooO0O0 = OooO0O0(i);
        if (hsVarOooO0O0 != null) {
            return hsVarOooO0O0;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            int iOooO0o0 = OooO0o0(i) - i2;
            if (iOooO0o0 >= 0 && (hsVar2 = this.OooO0O0[iOooO0o0]) != null) {
                return hsVar2;
            }
            int iOooO0o02 = OooO0o0(i) + i2;
            hs[] hsVarArr = this.OooO0O0;
            if (iOooO0o02 < hsVarArr.length && (hsVar = hsVarArr[iOooO0o02]) != null) {
                return hsVar;
            }
        }
        return null;
    }

    public final hs[] OooO0Oo() {
        return this.OooO0O0;
    }

    public final void OooO0o(int i, hs hsVar) {
        this.OooO0O0[OooO0o0(i)] = hsVar;
    }

    public final int OooO0o0(int i) {
        return i - this.OooO00o.OooO0oO();
    }

    public String toString() {
        Formatter formatter = new Formatter();
        try {
            int i = 0;
            for (hs hsVar : this.OooO0O0) {
                if (hsVar == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i));
                    i++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i), Integer.valueOf(hsVar.OooO0OO()), Integer.valueOf(hsVar.OooO0o0()));
                    i++;
                }
            }
            String string = formatter.toString();
            formatter.close();
            return string;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
