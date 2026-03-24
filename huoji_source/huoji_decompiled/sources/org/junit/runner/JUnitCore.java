package org.junit.runner;

import junit.runner.Version;
import z2.b90;
import z2.g90;
import z2.gw;
import z2.h90;
import z2.o70;
import z2.s60;
import z2.u60;
import z2.v60;
import z2.v80;
import z2.z80;

/* JADX INFO: loaded from: classes2.dex */
public class JUnitCore {
    private final h90 OooO00o = new h90();

    public static v80 OooO0O0() {
        return new v80();
    }

    public static Result OooOO0(v80 v80Var, Class<?>... clsArr) {
        return new JUnitCore().OooO0o(v80Var, clsArr);
    }

    public static Result OooOO0O(Class<?>... clsArr) {
        return OooOO0(OooO0O0(), clsArr);
    }

    public static void main(String... strArr) {
        System.exit(!new JUnitCore().OooOO0o(new u60(), strArr).wasSuccessful() ? 1 : 0);
    }

    public Result OooO(Class<?>... clsArr) {
        return OooO0o(OooO0O0(), clsArr);
    }

    public void OooO00o(g90 g90Var) {
        this.OooO00o.OooO0Oo(g90Var);
    }

    public String OooO0OO() {
        return Version.OooO00o();
    }

    public void OooO0Oo(g90 g90Var) {
        this.OooO00o.OooOOO(g90Var);
    }

    public Result OooO0o(v80 v80Var, Class<?>... clsArr) {
        return OooO0oO(z80.OooO0OO(v80Var, clsArr));
    }

    public Result OooO0o0(gw gwVar) {
        return OooO0oo(new o70(gwVar));
    }

    public Result OooO0oO(z80 z80Var) {
        return OooO0oo(z80Var.OooO0oo());
    }

    public Result OooO0oo(b90 b90Var) {
        Result result = new Result();
        g90 g90VarCreateListener = result.createListener();
        this.OooO00o.OooO0OO(g90VarCreateListener);
        try {
            this.OooO00o.OooOO0O(b90Var.getDescription());
            b90Var.OooO00o(this.OooO00o);
            this.OooO00o.OooOO0(result);
            return result;
        } finally {
            OooO0Oo(g90VarCreateListener);
        }
    }

    public Result OooOO0o(s60 s60Var, String... strArr) {
        s60Var.OooO00o().println("JUnit version " + Version.OooO00o());
        JUnitCommandLineParseResult jUnitCommandLineParseResultOooO0oO = JUnitCommandLineParseResult.OooO0oO(strArr);
        OooO00o(new v60(s60Var));
        return OooO0oO(jUnitCommandLineParseResultOooO0oO.OooO0OO(OooO0O0()));
    }
}
