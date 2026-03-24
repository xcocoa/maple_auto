package org.junit.runner;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.FilterFactory;
import org.junit.runners.model.InitializationError;
import z2.o60;
import z2.v80;
import z2.x80;
import z2.z80;

/* JADX INFO: loaded from: classes2.dex */
public class JUnitCommandLineParseResult {
    private final List<String> OooO00o = new ArrayList();
    private final List<Class<?>> OooO0O0 = new ArrayList();
    private final List<Throwable> OooO0OO = new ArrayList();

    public static class CommandLineParserError extends Exception {
        private static final long serialVersionUID = 1;

        public CommandLineParserError(String str) {
            super(str);
        }
    }

    private z80 OooO00o(z80 z80Var) {
        try {
            Iterator<String> it = this.OooO00o.iterator();
            while (it.hasNext()) {
                z80Var = z80Var.OooO0oO(x80.OooO0o0(z80Var, it.next()));
            }
            return z80Var;
        } catch (FilterFactory.FilterNotCreatedException e) {
            return OooO0Oo(e);
        }
    }

    private String[] OooO0O0(String[] strArr, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i != i2) {
            arrayList.add(strArr[i]);
            i++;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private z80 OooO0Oo(Throwable th) {
        return z80.OooO0o0(JUnitCommandLineParseResult.class, th);
    }

    public static JUnitCommandLineParseResult OooO0oO(String[] strArr) {
        JUnitCommandLineParseResult jUnitCommandLineParseResult = new JUnitCommandLineParseResult();
        jUnitCommandLineParseResult.OooO0oo(strArr);
        return jUnitCommandLineParseResult;
    }

    private void OooO0oo(String[] strArr) {
        OooOO0(OooO(strArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return OooO0O0(r8, r1, r8.length);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String[] OooO(String... strArr) {
        String strSubstring;
        int i = 0;
        while (true) {
            if (i == strArr.length) {
                break;
            }
            String str = strArr[i];
            if (!str.equals("--")) {
                if (!str.startsWith("--")) {
                    break;
                }
                if (str.startsWith("--filter=") || str.equals("--filter")) {
                    if (str.equals("--filter")) {
                        i++;
                        if (i >= strArr.length) {
                            this.OooO0OO.add(new CommandLineParserError(str + " value not specified"));
                            break;
                        }
                        strSubstring = strArr[i];
                    } else {
                        strSubstring = str.substring(str.indexOf(61) + 1);
                    }
                    this.OooO00o.add(strSubstring);
                } else {
                    this.OooO0OO.add(new CommandLineParserError("JUnit knows nothing about the " + str + " option"));
                }
                i++;
            } else {
                i++;
                break;
            }
        }
        return new String[0];
    }

    public z80 OooO0OO(v80 v80Var) {
        if (!this.OooO0OO.isEmpty()) {
            return OooO0Oo(new InitializationError(this.OooO0OO));
        }
        List<Class<?>> list = this.OooO0O0;
        return OooO00o(z80.OooO0OO(v80Var, (Class[]) list.toArray(new Class[list.size()])));
    }

    public List<String> OooO0o() {
        return Collections.unmodifiableList(this.OooO00o);
    }

    public List<Class<?>> OooO0o0() {
        return Collections.unmodifiableList(this.OooO0O0);
    }

    public void OooOO0(String[] strArr) {
        for (String str : strArr) {
            try {
                this.OooO0O0.add(o60.OooO00o(str));
            } catch (ClassNotFoundException e) {
                this.OooO0OO.add(new IllegalArgumentException("Could not find class [" + str + "]", e));
            }
        }
    }
}
