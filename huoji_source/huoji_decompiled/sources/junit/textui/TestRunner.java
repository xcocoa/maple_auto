package junit.textui;

import java.io.PrintStream;
import junit.runner.Version;
import z2.gw;
import z2.hw;
import z2.kw;
import z2.lw;
import z2.mw;
import z2.ow;

/* JADX INFO: loaded from: classes2.dex */
public class TestRunner extends mw {
    public static final int OooO = 2;
    public static final int OooO0oO = 0;
    public static final int OooO0oo = 1;
    private ow OooO0o;

    public TestRunner() {
        this(System.out);
    }

    public TestRunner(PrintStream printStream) {
        this(new ow(printStream));
    }

    public TestRunner(ow owVar) {
        this.OooO0o = owVar;
    }

    public static void Oooo0(Class<? extends hw> cls) {
        Oooo00o(new lw(cls));
    }

    public static kw Oooo00o(gw gwVar) {
        return new TestRunner().OooOooo(gwVar);
    }

    public static void Oooo0O0(gw gwVar) {
        new TestRunner().Oooo000(gwVar, true);
    }

    public static void main(String[] strArr) {
        try {
            if (!new TestRunner().Oooo0o(strArr).OooOOo0()) {
                System.exit(1);
            }
            System.exit(0);
        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.exit(2);
        }
    }

    @Override // z2.mw
    public void OooOOoo(String str) {
        System.err.println(str);
        System.exit(1);
    }

    @Override // z2.mw
    public void OooOoO(int i, gw gwVar, Throwable th) {
    }

    @Override // z2.mw
    public void OooOoO0(String str) {
    }

    @Override // z2.mw
    public void OooOoOO(String str) {
    }

    public kw OooOooO() {
        return new kw();
    }

    public kw OooOooo(gw gwVar) {
        return Oooo000(gwVar, false);
    }

    public kw Oooo000(gw gwVar, boolean z) {
        kw kwVarOooOooO = OooOooO();
        kwVarOooOooO.OooO0OO(this.OooO0o);
        long jCurrentTimeMillis = System.currentTimeMillis();
        gwVar.OooO0O0(kwVarOooOooO);
        this.OooO0o.OooO0oO(kwVarOooOooO, System.currentTimeMillis() - jCurrentTimeMillis);
        Oooo00O(z);
        return kwVarOooOooO;
    }

    public void Oooo00O(boolean z) {
        if (z) {
            this.OooO0o.OooOOOo();
            try {
                System.in.read();
            } catch (Exception unused) {
            }
        }
    }

    public kw Oooo0OO(String str, String str2, boolean z) throws Exception {
        return Oooo000(lw.OooO0oO(OooOOOo(str).asSubclass(hw.class), str2), z);
    }

    public kw Oooo0o(String[] strArr) throws Exception {
        String strOooO0oO = "";
        String strSubstring = strOooO0oO;
        int i = 0;
        boolean z = false;
        while (i < strArr.length) {
            if (strArr[i].equals("-wait")) {
                z = true;
            } else if (strArr[i].equals("-c")) {
                i++;
                strOooO0oO = OooO0oO(strArr[i]);
            } else if (strArr[i].equals("-m")) {
                i++;
                String str = strArr[i];
                int iLastIndexOf = str.lastIndexOf(46);
                String strSubstring2 = str.substring(0, iLastIndexOf);
                strSubstring = str.substring(iLastIndexOf + 1);
                strOooO0oO = strSubstring2;
            } else if (strArr[i].equals("-v")) {
                System.err.println("JUnit " + Version.OooO00o() + " by Kent Beck and Erich Gamma");
            } else {
                strOooO0oO = strArr[i];
            }
            i++;
        }
        if (strOooO0oO.equals("")) {
            throw new Exception("Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class");
        }
        try {
            return !strSubstring.equals("") ? Oooo0OO(strOooO0oO, strSubstring, z) : Oooo000(OooOOOO(strOooO0oO), z);
        } catch (Exception e) {
            throw new Exception("Could not create and run test suite: " + e);
        }
    }

    public void Oooo0o0(ow owVar) {
        this.OooO0o = owVar;
    }
}
